using DAL.UnitOfWork;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;
using Services.ServiceModel;

namespace ImiuAPI.Controllers;
[ApiController]
[Route("/api/v1/auth")]
public class AuthController : Controller
{
    private readonly IAccountService _accountService;
    private readonly IAuthService _authService;
    private readonly IUnitOfWork _unitOfWork;

    public AuthController(IAccountService accountService,IUnitOfWork unitOfWork, IAuthService _authService)
    {
        _accountService = accountService;
        _unitOfWork = unitOfWork;
        _accountService = _accountService;
    }
    /// <summary>
    /// Register
    /// </summary>
    /// <param name="registerAccountModel"></param>
    /// <returns></returns>
    [HttpPost]
    [Route("register")]
    [AllowAnonymous]
    public IActionResult RegisterAccount([FromBody] RegisterAccountModel registerAccountModel)
    {
    	var result = _accountService.RegisterAccount(registerAccountModel, false);
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
    [AllowAnonymous]
    public IActionResult VerifyEmail(string token)
    {
    	var result = _accountService.VerifyEmail(token);
    	_unitOfWork.Commit();
    	var jsonResult = new JsonResult(result);
    	jsonResult.StatusCode = result.Status;
    	return jsonResult;
    }
    

    /// <summary>
    /// Send verify email
    /// </summary>
    /// <param name="email"></param>
    /// <returns></returns>
    [HttpPost]
    [Route("email")]
    [AllowAnonymous]
    public IActionResult SendEmail([FromBody] EmailSendingModel emailSendingModel)
    {
    	var result = _accountService.SendEmail(emailSendingModel.Email);
    	var jsonResult = new JsonResult(result);
    	jsonResult.StatusCode = result.Status;
    	return jsonResult;
    }
    /// <summary>
    /// Login with google use oauthIdToken
    /// </summary>
    /// <param name="accessToken"></param>
    /// <returns></returns>
    [HttpPost]
    [Route("google-login")]
    [AllowAnonymous]
    public async Task<IActionResult> LoginWithGoogle([FromBody] LoginWithGoogleModel loginWithGoogleModel)
    {
        var result = await _accountService.LoginGoogle(loginWithGoogleModel.AccessToken);
        await _unitOfWork.CommitAsync();
        var jsonResult = new JsonResult(result)
        {
            StatusCode = result.Status
        };
        return jsonResult;
    }
    
    /// <summary>
    /// Login
    /// </summary>
    /// <param name="email"></param>
    /// <param name="password"></param>
    /// <returns></returns>
    [HttpPost]
    [Route("login")]
    [AllowAnonymous]
    public IActionResult Login([FromBody] LoginModel loginModel)
    {
        var result = _accountService.Login(loginModel.Email, loginModel.Password);
        var jsonResult = new JsonResult(result)
        {
            StatusCode = result.Status
        };
        return jsonResult;
    }
}