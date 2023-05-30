
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
using DAL.UnitOfWork;

namespace ImiuAPI.Controllers;

[ApiController]
[Route("/api/v1/accounts")]
public class AccountsController
{
	private readonly IAccountService _accountService;
	private readonly IUnitOfWork _unitOfWork;

	public AccountsController(IAccountService accountService,IUnitOfWork unitOfWork)
	{
		_accountService = accountService;
		_unitOfWork = unitOfWork;
	}


	
	/// <summary>
	/// Register
	/// </summary>
	/// <param name="registerAccountModel"></param>
	/// <returns></returns>
    [HttpPost]
	[Route("register")]
    public IActionResult RegisterAccount([FromBody] RegisterAccountModel registerAccountModel)
	{
		if (_accountService.RegisterAccount(registerAccountModel))
		{
			_unitOfWork.Commit();
			var json = new JsonResult(new
			{
				Message = "Created"
			});
			json.StatusCode = 201;
			return json;
		}
		else 
		{
			var json = new JsonResult(new
			{
				Message = "Create fail"
			});
			json.StatusCode = 400;
			return json;
		};
		
		
	}

	[HttpGet]
	[Route("verify-email")]
	public IActionResult VerifyEmail(string token)
	{

		if (_accountService.VerifyEmail(token))
		{
			_unitOfWork.Commit();
			
			var json = new JsonResult(new
			{
				Message = "Activated"
			});
			json.StatusCode = 201;
			return json;
		}
		else 
		{
			var json = new JsonResult(new
			{
				Message = "Activate fail"
			});
			json.StatusCode = 400;
			return json;
		};
		
	}
	/// <summary>
	/// Login
	/// </summary>
	/// <param name="email"></param>
	/// <param name="password"></param>
	/// <returns></returns>
	[HttpPost]
	[Route("/login")]
	public IActionResult Login(string email, string password)
	{
		if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
		{
			return new JsonResult(new
			{
				status = false,
				message = "Email or password is empty"
			});
		}
		AccountModel account;
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