
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding.Binders;
using Microsoft.IdentityModel.Tokens;
using Services.Service.Interface;
using Services.ServiceModel;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Security;
using System.Text;
using DAL.Entities;

namespace ImiuAPI.Controllers;

[ApiController]
[Route("/api/[controller]")]
public class AccountsController
{
	private readonly IAccountService _accountService;

	public AccountsController(IAccountService accountService)
	{
		_accountService = accountService;
	}

	/// <summary>
	/// Test function
	/// </summary>
	/// <param name="email"></param>
	/// <returns></returns>
	[HttpPost("/email")]
	public string SendEmail([FromBody] string email)
	{
		_accountService.SendEmail(email);
		return "sent";
	}
	
	/// <summary>
	/// Register
	/// </summary>
	/// <param name="registerAccountModel"></param>
	/// <returns></returns>
    [HttpPost]
	[Route("/register")]
    public IActionResult RegisterAccount([FromBody] RegisterAccountModel registerAccountModel)
	{
		if (_accountService.RegisterAccount(registerAccountModel))
		{
			return new JsonResult(new
			{
				Status = "CREATED",
				Message = "Account created"
			});
		}
		else return new JsonResult(new
		{
			Status = "BAD REQUEST",
			Message = "Create fail"
		});
	}

	[HttpGet]
	[Route("/verify-email/{token}&{expiration}")]
	public void VerifyEmail(string token, string expiration)
	{
		RegisterTokenModel registerTokenModel = new RegisterTokenModel()
		{
			Token = token,
			Expiration = DateTime.Parse(expiration)
		};
		
		_accountService.VerifyEmail(registerTokenModel);
	}
	/// <summary>
	/// Login
	/// </summary>
	/// <param name="email"></param>
	/// <param name="password"></param>
	/// <returns></returns>
	[HttpPost]
	public IActionResult Login(string email, string password)
	{
		AccountModel account = null;

		if(string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
		{
			return new JsonResult(new
			{
				status = false,
				message = "Email or password is empty"
			});
		}
		try
		{
			account = _accountService.Login(email, password);
		}
		catch (Exception ex)
		{
			return new JsonResult(new
			{
				status = false,
				message = ex.Message
			});
		}

		if (account != null)
		{
			TokenModel token = GenerateToken(account);
			return new JsonResult(new
			{
				status = true,
				message = "Login success",
				token = token.Token,
				role = account.Role
			});
		}
		else
		{
			return new JsonResult(new
			{
				status = false,
				message = "Incorrect Email or Password"
			});
		}
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