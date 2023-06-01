using System.IdentityModel.Tokens.Jwt;
using System.Net;
using System.Net.Mail;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using DAL;
using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.Encryption;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class AccountService : IAccountService
{
	private readonly IAccountRepository _accountRepository;
	private readonly ICustomMapper _customMapper;
	private readonly ImiuDbContext _context;
	private readonly string VERIFY_EMAIL_END_POINT = "http://localhost:5173/verify/";
	private readonly string GOOGLE_VERIFY_ACCESS_TOKEN_API = "https://oauth2.googleapis.com/tokeninfo?id_token=";
	private readonly int MAIL_PORT = 587;
	private readonly string MAIL_SMTP_CLIENT = "smtp.gmail.com";
	
	public AccountService(IAccountRepository accountRepository, ICustomMapper customMapper, ImiuDbContext imiuDbContext)
	{
		_accountRepository = accountRepository;
		_customMapper = customMapper;
		_context = imiuDbContext;
	}

	public async Task<ResponseObject> LoginGoogle(string accessToken)
	{
		using (var httpClient = new HttpClient())
		{
			var response = await httpClient.GetAsync(GOOGLE_VERIFY_ACCESS_TOKEN_API + accessToken);
			if (response.IsSuccessStatusCode)
			{
				var handler = new JwtSecurityTokenHandler();
	
				var decodeValue = handler.ReadJwtToken(accessToken);

				var email = decodeValue.Claims.FirstOrDefault(c => c.Type == "email").Value;
				var account = _accountRepository.GetByEmail(email);
				if (account == null)
				{
					var registerAccountModel = new RegisterAccountModel()
					{
						Email = email,
						Password = ""
					};
					RegisterAccount(registerAccountModel, true);
					
				}
				
				account = _accountRepository.GetLocalByEmail(email);
				TokenModel token = GenerateToken(_customMapper.Map(account));
				return new GetRequestResponse<LoginResponseModel>()
				{
					Data = new LoginResponseModel()
					{
						Message = "Đăng nhập thành công",
						AccessToken = token.Token,
						Role = account.Role.ToString(),
						IsVerify = account.Status == AccountStatus.ACTIVE
					},
					Status = 200
				};
			}
			else
			{
				return new PostRequestResponse()
				{
					Message = "Đăng nhập thất bại",
					Status = 400
				};
			}
		}
	}
	
	public ResponseObject Login(string email, string password)
	{
		var result = new PostRequestResponse();
		if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
		{
			result.Message = "Chưa nhập email hoặc mật khẩu";
			result.Status = 400;
			return result;
		}
		
		string encryptedPassword = SHAEncryption.Encrypt(password);
		
		var target= _accountRepository.Login(email, encryptedPassword);
		if (target != null)
		{
			if (target.Status == AccountStatus.INACTIVE)
			{
				SendEmail(email);
				result.Message = "Email của bạn chưa được xác thực";
				result.Status = 401;
				return result;
			}

			var account = _customMapper.Map(target);
			if (account != null)
			{
				TokenModel token = GenerateToken(account);
				var accountStatus = _accountRepository.GetByEmail(email).Status;
				var loginResult = new GetRequestResponse<LoginResponseModel>()
				{
					
					Data = new LoginResponseModel()
					{
						Message = "Đăng nhập thành công",
						AccessToken = token.Token,
						Role = account.Role.ToString(),
						IsVerify = accountStatus == AccountStatus.ACTIVE
						
					},
					Status = 200
				};
				return loginResult;
			}

			
		}
		result.Message = "Sai email hoặc mật khẩu";
		result.Status = 400;
		return result;
	}
	public ResponseObject RegisterAccount(RegisterAccountModel registerAccountModel, bool isLoginWithGoogle)
	{
		Account account = _accountRepository.GetByEmail(registerAccountModel.Email);
		var result = new PostRequestResponse();
		if (account != null)
		{
			result.Message = "Email này đã tồn tại";
			result.Status = 400;
		}
		else
		{
			account = new Account()
			{
				Id = new Guid(),
				Name = "",
				Email = registerAccountModel.Email,
				Dob = DateTime.Today,
				Password = SHAEncryption.Encrypt(registerAccountModel.Password),
				Role = Role.CUSTOMER,
				Status = AccountStatus.INACTIVE
			};
			if (isLoginWithGoogle)
			{
				account.Status = AccountStatus.ACTIVE;
				_accountRepository.Create(account);
				result.Message = "Đăng kí tài khoản thành công";
				result.Status = 201;
			}
			else
			{
				Regex regex = new Regex(@"^(?=.*[0-9])(?=.*[a-zA-Z]).{8,}$");
				if (regex.IsMatch(registerAccountModel.Password))
				{
					_accountRepository.Create(account);
					SendEmail(account.Email);
					result.Message = "Đăng kí tài khoản thành công";
					result.Status = 201;
				}
				else
				{
					result.Message = "Mật khẩu phải có ít 8 kí tự kết hợp từ chữ và số.";
					result.Status = 400;
				}
			}
			
		}

		return result;


	}

	public ResponseObject VerifyEmail(string token)
	{
		var result = new PostRequestResponse();
		try
		{
			var handler = new JwtSecurityTokenHandler();
	
			var decodeValue = handler.ReadJwtToken(token);
			var expiration = DateTime.FromBinary
				(long.Parse(decodeValue.Claims.FirstOrDefault(c => c.Type == "Expiration").Value));
			if (expiration > DateTime.UtcNow)
			{
				var accountId = decodeValue.Claims.FirstOrDefault(c => c.Type == "Id").Value;
				_accountRepository.ActivateAccount(Guid.Parse(accountId));
				result.Message = "Tài khoản đã được kích hoạt";
				result.Status = 201;
			}
			else
			{
				result.Message = "Link đã hết hạn";
				result.Status = 410;
			}
			
		}
		catch
		{
			result.Message = "Link không hợp lệ";
			result.Status = 404;
		}

		return result;

	}

	
	private RegisterTokenModel GenerateToken(Account account)
	{
		List<Claim> claims = new List<Claim>()
		{
			new Claim(ClaimTypes.Email, account.Email),
			new Claim("Id", account.Id.ToString()),
			new Claim("Expiration", DateTime.UtcNow.AddMinutes(30).ToBinary().ToString())
		};

		var token = new JwtSecurityToken(
			claims: claims,
			expires: DateTime.UtcNow.AddMinutes(30)
		);

		var jwt = new JwtSecurityTokenHandler().WriteToken(token);
		jwt = jwt.Replace(".", "/");

		return new RegisterTokenModel()
		{
			Token = jwt,
			Expiration = token.ValidTo
		};
	}
	public ResponseObject SendEmail(string email)
	
	{
		string fromMail = "duylvlse160831@fpt.edu.vn";
		string fromPassword = "ipwaggpctjotqtiy";
		string webAddress = VERIFY_EMAIL_END_POINT;

		var account = _accountRepository.GetByEmail(email);
		if (account == null)
		{
			account = _accountRepository.GetLocalByEmail(email);
		}
		if (account == null)
		{
			return new PostRequestResponse()
			{
				Message = "Bạn chưa đăng kí tài khoản",
				Status = 400
			};
		}
		var token = GenerateToken(account);
		MailMessage message = new();
		message.From = new MailAddress(fromMail);
		message.Subject = "Email xác nhận tài khoản IMiU";
		message.To.Add(new MailAddress(account.Email));
		
		message.Body = "<p>Kính chào quý khách,</p>"
			+ "<p>Xin nhấn vào đường liên kết sau đây để kích hoạt tài khoản của bạn: <a href=\""+webAddress+token.Token+"\">Link</a> </p>" +
			"<p>Đường dẫn sẽ hết hạn trong 30 phút.</p>";
		message.IsBodyHtml = true;
		var smtpClient = new SmtpClient(MAIL_SMTP_CLIENT)
		{
			Port = MAIL_PORT,
			Credentials = new NetworkCredential(fromMail, fromPassword),
			EnableSsl = true
		};
		smtpClient.Send(message);
		return new PostRequestResponse()
		{
			Message = "Email xác thực đã được gửi",
			Status = 201
		};
	}

	

	public List<Account> getAll()
	{
		return _accountRepository.GetAll();
	}

	
	#region Token Generation
	private TokenModel GenerateToken(AccountModel accountModel)
	{
		List<Claim> claims = new List<Claim>()
		{
			new Claim(ClaimTypes.Name, accountModel.Name),
			new Claim(ClaimTypes.Email, accountModel.Email),
			new Claim("AccountID", accountModel.Id.ToString()),
			new Claim("Role", accountModel.Role.ToString())
		};

		var token = new JwtSecurityToken(
			claims: claims,
			expires: DateTime.Now.AddMinutes(30)
		);

		var jwt = new JwtSecurityTokenHandler().WriteToken(token);
		var refreshToken = GenerateRefreshToken();

		return new TokenModel
		{
			Token = jwt,
			Expiration = token.ValidTo,
			RefreshToken = refreshToken
		};
	}

	private string GenerateRefreshToken()
	{
		var random = new byte[32];
		using (var rng = RandomNumberGenerator.Create())
		{
			rng.GetBytes(random);

			return Convert.ToBase64String(random);
		}
	}
	#endregion
	
}