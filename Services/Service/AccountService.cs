using System.IdentityModel.Tokens.Jwt;
using System.Net;
using System.Net.Mail;
using System.Security.Claims;
using System.Text.RegularExpressions;
using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using DAL.UnitOfWork;
using Services.CustomeMapper.Interface;
using Services.Encryption;
using Services.Service.Interface;
using Services.ServiceModel;


namespace Services.Service;

public class AccountService : IAccountService
{
	private readonly IAccountRepository _accountRepository;
	private readonly ICustomMapper _customMapper;
	private readonly String END_POINT = "http://localhost:5173/verify/";
	public AccountService(IAccountRepository accountRepository, ICustomMapper customMapper)
	{
		_accountRepository = accountRepository;
		_customMapper = customMapper;
	}
	public AccountModel Login(string email, string password)
	{
		string encryptedPassword = SHAEncryption.Encrypt(password);
		var target= _accountRepository.Login(email, encryptedPassword);
		if (target != null)
		{
			return _customMapper.Map(target);
		}
		return null;
		
	}

	public bool RegisterAccount(RegisterAccountModel registerAccountModel)
	{
		Account account = _accountRepository.GetByEmail(registerAccountModel.Email);
		if (account!=null)
		{
			//throw new Exception("Email is existed");
			return false;
		}
		
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
		Regex regex = new Regex(@"^(?=.*[0-9])(?=.*[a-zA-Z]).{8,}$");
		if (regex.IsMatch(registerAccountModel.Password))
		{
			_accountRepository.Create(account);

			SendEmail(account);
			return true;
		}

		return false;



	}

	public bool VerifyEmail(string token)
	{
		try
		{
			var handler = new JwtSecurityTokenHandler();
	
			var decodeValue = handler.ReadJwtToken(token);
			var expiration = DateTime.FromBinary(long.Parse(decodeValue.Claims.FirstOrDefault(c => c.Type == "Expiration").Value));
			if (expiration > DateTime.UtcNow)
			{
				var accountId = decodeValue.Claims.FirstOrDefault(c => c.Type == "Id").Value;
				_accountRepository.ActivateAccount(Guid.Parse(accountId));
				return true;
			}
			return false;
		}
		catch
		{
			return false;
		}
		

		
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
        

		return new RegisterTokenModel()
		{
			Token = jwt,
			Expiration = token.ValidTo
		};
	}
	private void SendEmail(Account account)
	
	{
		string fromMail = "duylvlse160831@fpt.edu.vn";
		string fromPassword = "cttmcfhcjitzmzvf";
		string webAddress = END_POINT;
		
		 
		var token = GenerateToken(account);
		MailMessage message = new();
		message.From = new MailAddress(fromMail);
		message.Subject = "IMiU email verification";
		message.To.Add(new MailAddress(account.Email));
		
		message.Body = "<p>Dear Customer,</p>"
			+ "<p>Please follow this link to activate your account: <a href=\""+webAddress+token.Token+"\">Link</a> </p>" +
			"<p>This link will expire after 30 minutes.</p>";
		message.IsBodyHtml = true;
		var smtpClient = new SmtpClient("smtp.gmail.com")
		{
			Port = 587,
			Credentials = new NetworkCredential(fromMail, fromPassword),
			EnableSsl = true
		};
		smtpClient.Send(message);

	}

	

	public List<Account> getAll()
	{
		return _accountRepository.GetAll();
	}

	
	
	
}