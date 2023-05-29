using System.IdentityModel.Tokens.Jwt;
using System.Net;
using System.Net.Mail;
using System.Security.Claims;
using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using DAL.UnitOfWork;
using Services.CustomeMapper.Interface;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class AccountService : IAccountService
{
	private readonly IAccountRepository _accountRepository;
	private readonly ICustomMapper _customMapper;
	private readonly String DOMAIN_NAME = "localhost:7137//";
	public AccountService(IAccountRepository accountRepository, ICustomMapper customMapper)
	{
		_accountRepository = accountRepository;
		_customMapper = customMapper;
	}
	public AccountModel Login(string email, string password)
	{
		var target= _accountRepository.Login(email, password);
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

		if (registerAccountModel.Password != registerAccountModel.ConfirmPassword)
		{
			//throw new Exception("Password does not match confirm password");
			return false;
		}
		account = new Account()
		{
			Id = new Guid(),
			Name = registerAccountModel.Name,
			Email = registerAccountModel.Email,
			Dob = registerAccountModel.Dob,
			Password = BCrypt.Net.BCrypt.HashPassword(registerAccountModel.Password),
			Role = Role.CUSTOMER,
			Status = AccountStatus.INACTIVE
		};
		_accountRepository.Create(account);
		RegisterTokenModel token;
		SendEmail(account);
//		VerifyEmail(token);
		return true;
		
		
	}

	public void VerifyEmail(RegisterTokenModel token)
	{
		
		if (token.Expiration > DateTime.Now)
		{
			var handler = new JwtSecurityTokenHandler();
		
			var decodeValue = handler.ReadJwtToken(token.Token);
			var accountId = decodeValue.Claims.FirstOrDefault(c => c.Type == "Id").Value;
			_accountRepository.ActivateAccount(Guid.Parse(accountId));
		}
		
	}

	
	private RegisterTokenModel GenerateToken(Account account)
	{
		List<Claim> claims = new List<Claim>()
		{
			new Claim(ClaimTypes.Name, account.Name),
			new Claim(ClaimTypes.Email, account.Email),
			new Claim("Id", account.Id.ToString())
		};

		var token = new JwtSecurityToken(
			claims: claims,
			expires: DateTime.Now.AddMinutes(30)
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
		string fromPassword = "yijunlang1128";
		string webAddress = DOMAIN_NAME;
		var token = GenerateToken(account);
		MailMessage message = new();
		message.From = new MailAddress(fromMail);
		message.Subject = "IMiU email verification";
		message.To.Add(new MailAddress(account.Email));
		message.Body = "<p>Dear </p>" + account.Name + ", </br>"
			+ "<p>Please follow this link to activate your account: "+webAddress+"</p>";
		message.IsBodyHtml = true;
		var smtpClient = new SmtpClient("smtp.gmail.com")
		{
			Port = 587,
			Credentials = new NetworkCredential(fromMail, fromPassword),
			EnableSsl = true
		};
		smtpClient.Send(message);

	}

	public void SendEmail(string email)
	{
		string fromMail = "duylvlse160831@fpt.edu.vn";
		string fromPassword = "yijunlang1128";
		MailMessage message = new();
		message.From = new MailAddress(fromMail);
		message.Subject = "IMiU email verification";
		message.To.Add(new MailAddress(email));
		message.Body = "<p>Dear " + email + "</p>, </br>"
		               + "<p>Please follow this link to activate your account: </p>";
		message.IsBodyHtml = true;
		var smtpClient = new SmtpClient("smtp.gmail.com")
		{
			Port = 587,
			Credentials = new NetworkCredential(fromMail, fromPassword),
			EnableSsl = true,
			DeliveryMethod= SmtpDeliveryMethod.Network			
		};
		
		smtpClient.Send(message);
	}

	public List<Account> getAll()
	{
		return _accountRepository.GetAll();
	}

	
	
	
}