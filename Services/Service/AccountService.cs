using System.IdentityModel.Tokens.Jwt;
using System.Net;
using System.Net.Mail;
using System.Security.Claims;
using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.Service.Interface;
using Services.ServiceModel;


namespace Services.Service;

public class AccountService : IAccountService
{
	private readonly IAccountRepository _accountRepository;
	private readonly ICustomMapper _customMapper;
	private readonly String END_POINT = "https://localhost:7137/verify-email";
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
		_accountRepository.SaveAccount(account);
		RegisterTokenModel token;
		SendEmail(account);
//		VerifyEmail(token);
		return true;
		
		
	}

	public void VerifyEmail(RegisterTokenModel token)
	{
		
		if (token.Expiration > DateTime.UtcNow)
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
		string fromPassword = "yijunlang1128";
		string webAddress = END_POINT;
		
		 
		var token = GenerateToken(account);
		MailMessage message = new();
		message.From = new MailAddress(fromMail);
		message.Subject = "IMiU email verification";
		message.To.Add(new MailAddress(account.Email));
		
		message.Body = "<p>Dear " + account.Name + ",</p>"
			+ "<p>Please follow this link to activate your account: <a href=\""+webAddress+"?token="+token.Token+"&expiration="+token.Expiration.ToBinary()+"\">Link</a> </p>" +
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