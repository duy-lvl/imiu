using System.IdentityModel.Tokens.Jwt;
using System.Net;
using System.Net.Mail;
using System.Reflection;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json.Linq;
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
	private readonly IPlanRepository _planRepository;
    private readonly IConfiguration _configuration;
    private string VERIFY_EMAIL_END_POINT;
	private string GOOGLE_VERIFY_ACCESS_TOKEN_API;

	/*
	#region Mail trap

	/// <summary>
	///	Access https://mailtrap.io/inboxes/2256041/messages to see inbox
	/// </summary>
	private readonly int MAIL_PORT = 2525;
	private readonly string MAIL_SMTP_CLIENT = "sandbox.smtp.mailtrap.io";
	private readonly string SENDER = "imiu.exe201@gmail.com";
	private readonly string CREDENTIAL_USERNAME = "1c8c65b8e2d6bb";
	private readonly string CREDENTIAL_PASSWORD = "06defe71cc802a";
	#endregion
	*/
	
	// Real SMTP server
	private int MAIL_PORT;
	private string MAIL_SMTP_CLIENT;
	private string SENDER;
	private string CREDENTIAL_USERNAME;
	private string CREDENTIAL_PASSWORD;
	
	public AccountService(IAccountRepository accountRepository, ICustomMapper customMapper, IPlanRepository planRepository, 
		 IConfiguration configuration)
	{
		_accountRepository = accountRepository;
		_customMapper = customMapper;
		_planRepository = planRepository;
        _configuration = configuration;
		MAIL_PORT = int.Parse(_configuration["SMTP:Port"]);
		MAIL_SMTP_CLIENT = _configuration["SMTP:Client"];
		SENDER = _configuration["SMTP:Sender"];
		CREDENTIAL_USERNAME = _configuration["SMTP:Username"];
		CREDENTIAL_PASSWORD = _configuration["SMTP:Password"];
		VERIFY_EMAIL_END_POINT = _configuration["Endpoints:VerifyEmail"];
		GOOGLE_VERIFY_ACCESS_TOKEN_API = _configuration["Endpoints:VerifyGoogleAccountAccessToken"];
    }

	#region Update Account

	public void Update(UpdateAccountModel accountModel)
	{
		var account = _accountRepository.GetByID(accountModel.Id);
		if (account != null)
		{
			account.Dob = accountModel.Dob;
			account.Name = accountModel.Name;
			_accountRepository.Update(account);
		}
	}

	public void Update(UpdatePasswordModel passwordModel)
	{
		var account = _accountRepository.GetByID(passwordModel.Id);
		if (account != null)
		{
			account.Password = SHAEncryption.Encrypt(passwordModel.Password);
			_accountRepository.Update(account);
		}
	}

	#endregion

	#region Register
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
				Name = registerAccountModel.Email,
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
					result.Message = "Mật khẩu phải có ít nhất 8 kí tự kết hợp từ chữ và số.";
					result.Status = 400;
				}
			}
			
		}

		return result;
	}
	#endregion

	#region Login Google
	public async Task<ResponseObject> LoginGoogle(string accessToken)
	{
		using (var httpClient = new HttpClient())
		{
			var response = await httpClient.GetAsync(GOOGLE_VERIFY_ACCESS_TOKEN_API + accessToken);
			
            if (response.IsSuccessStatusCode)
			{
				var responseContent = JObject.Parse(await response.Content.ReadAsStringAsync());
				bool isVerifiedEmail = responseContent["verified_email"].Value<bool>();
				
				if (isVerifiedEmail)
				{
					var email = responseContent["email"].ToString();
					var account = _accountRepository.GetByEmail(email);
					if (account == null)
					{
						var registerAccountModel = new RegisterAccountModel()
						{
							Email = email,
							Password = ""
						};
						RegisterAccount(registerAccountModel, true);
					
						account = _accountRepository.GetLocalByEmail(email);
					
					}
					else
					{
						if (account.Status == AccountStatus.INACTIVE)
						{
							_accountRepository.ActivateAccount(account.Id);
						}
					}
					TokenModel token = GenerateToken(_customMapper.Map(account));
					LoginResponseModel.SubcriptionModel subscriptionModel;
					var plan = _planRepository.GetCurrentPlanByCustomerId(account.Id);
					if (plan != null) 
					{
						var subscription = plan.Subcription;
						subscriptionModel = _customMapper.Map(subscription);
					}
					else
					{
						subscriptionModel = null;
					}
				
					return new GetRequestResponse<LoginResponseModel>()
					{
						Data = new LoginResponseModel()
						{
							AccessToken = token.Token,
							RefreshToken = token.RefreshToken,
							Role = account.Role.ToString(),
							IsVerify = true,
							Subcription = subscriptionModel,
							AccountId = account.Id.ToString(),
							Name = account.Name,
							Email = account.Email, 
							HasPassword = account.Password != SHAEncryption.Encrypt("")
						},
						Message = "Đăng nhập thành công",
						Status = 200
					};
				}

				return new PostRequestResponse()
				{
					Message = "Tài khoản của bạn chưa được xác thực",
					Status = 400
				};
			}
			
			return new PostRequestResponse()
			{
				Message = "Đăng nhập thất bại",
				Status = 400
			};
		}
	}

	#endregion

	#region Login
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
			var account = _customMapper.Map(target);
			if (account != null)
			{
				TokenModel token = GenerateToken(account);
				var accountStatus = _accountRepository.GetByEmail(email).Status;
				
				LoginResponseModel.SubcriptionModel subscriptionModel;
				
				var plan = _planRepository.GetCurrentPlanByCustomerId(account.Id);
				if (plan != null) 
				{
                    var subscription = plan.Subcription;
                    subscriptionModel = _customMapper.Map(subscription);
                }
				else
				{
                    subscriptionModel = null;
                }
				
				var isVerify = accountStatus == AccountStatus.ACTIVE;
				var message = "Tài khoản của bạn chưa được xác thực";
				if (isVerify)
				{
					message = "Đăng nhập thành công";
				}
				var loginResult = new GetRequestResponse<LoginResponseModel>()
				{
					Data = new LoginResponseModel()
					{
						AccessToken = token.Token,
						Role = account.Role.ToString(),
						IsVerify = isVerify,
						RefreshToken = token.RefreshToken,
						Subcription = subscriptionModel,
						AccountId = target.Id.ToString(),
						Name = target.Name,
						Email = email,
						HasPassword = target.Password != SHAEncryption.Encrypt("")
					},
					Message = message,
					Status = 200
				};
				return loginResult;
			}

			
		}
		result.Message = "Sai email hoặc mật khẩu";
		result.Status = 400;
		return result;
	}
	#endregion

	#region VerifyEmail
	public ResponseObject VerifyEmail(string token)
	{
		var result = new PostRequestResponse();
		try
		{
			var handler = new JwtSecurityTokenHandler();
	
			var decodeValue = handler.ReadJwtToken(token);
			var expiration = DateTime.FromBinary
				(long.Parse(decodeValue.Claims.FirstOrDefault(c => c.Type == "Expiration").Value)); 
			if (expiration > DateTime.Now)
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
	#endregion

	#region SendEmail
	public ResponseObject SendEmail(string email)
	{
		
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
		message.From = new MailAddress(SENDER);
		message.Subject = "Email xác nhận tài khoản IMiU";
		message.To.Add(new MailAddress(account.Email));
		
		message.Body = "<p>Kính chào quý khách,</p>"
		               + "<p>Xin nhấn vào đường liên kết sau đây để kích hoạt tài khoản của bạn: <a href=\""+VERIFY_EMAIL_END_POINT+token.Token+"\">Link</a> </p>" +
		               "<p>Đường dẫn sẽ hết hạn trong 30 phút.</p>";
		message.IsBodyHtml = true;
		var smtpClient = new SmtpClient(MAIL_SMTP_CLIENT, MAIL_PORT)
		{
			Credentials = new NetworkCredential(CREDENTIAL_USERNAME, CREDENTIAL_PASSWORD),
			EnableSsl = true
		};
		try
		{
			smtpClient.Send(message);
		}
		catch
		{
			return new PostRequestResponse()
			{
				Message = "Lỗi",
				Status = 400
			};
		}
		return new PostRequestResponse()
		{
			Message = "Email xác thực đã được gửi",
			Status = 201
		};
	}
	

	#endregion

	#region GenerateToken
	private RegisterTokenModel GenerateToken(Account account)
	{
		List<Claim> claims = new List<Claim>()
		{
			new Claim(ClaimTypes.Email, account.Email),
			new Claim("Id", account.Id.ToString()),
			new Claim("Expiration", DateTime.Now.AddMinutes(30).ToBinary().ToString())
		};

		var token = new JwtSecurityToken(
			claims: claims,
			expires: DateTime.Now.AddMinutes(30)
		);

		var jwt = new JwtSecurityTokenHandler().WriteToken(token);
		jwt = jwt.Replace(".", "/");

		return new RegisterTokenModel()
		{
			Token = jwt,
			Expiration = token.ValidTo
		};
	}
	
	
	private TokenModel GenerateToken(AccountModel accountModel)
	{
		List<Claim> claims = new List<Claim>()
		{
			new Claim(ClaimTypes.Name, accountModel.Name),
			new Claim(ClaimTypes.Email, accountModel.Email),
			new Claim("AccountID", accountModel.Id.ToString()),
			new Claim(ClaimTypes.Role, accountModel.Role.ToString())
		};

        var key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(_configuration["Jwt:Key"]));

		var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha512Signature);

		var token = new JwtSecurityToken(
			claims: claims,
			expires: DateTime.Now.AddMinutes(30),
			signingCredentials: creds
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