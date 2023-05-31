
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
using Services.JsonResult;

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
		var result = _accountService.RegisterAccount(registerAccountModel);
		_unitOfWork.Commit();
		var jsonResult = new JsonResult(result);
		jsonResult.StatusCode = result.Status;
		return jsonResult;
	}
	
	/// <summary>
	/// Verify email
	/// </summary>
	/// <param name="token"></param>
	/// <returns></returns>
	[HttpGet]
	[Route("verify-email")]
	public IActionResult VerifyEmail(string token)
	{
		var result = _accountService.VerifyEmail(token);
		_unitOfWork.Commit();
		var jsonResult = new JsonResult(result);
		jsonResult.StatusCode = result.Status;
		return jsonResult;
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

		var result = _accountService.Login(email, password);
		var jsonResult = new JsonResult(result);
		jsonResult.StatusCode = result.Status;
		return jsonResult;
		
	}

	[HttpPost]
	[Route("/email")]
	public IActionResult SendEmail(string email)
	{
		var result = _accountService.SendEmail(email);
		var jsonResult = new JsonResult(result);
		jsonResult.StatusCode = result.Status;
		return jsonResult;
	}

}