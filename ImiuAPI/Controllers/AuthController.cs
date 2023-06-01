using DAL.UnitOfWork;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;

namespace ImiuAPI.Controllers;
[ApiController]
[Route("/api/v1")]
public class AuthController : Controller
{
    private readonly IAccountService _accountService;
    private readonly IUnitOfWork _unitOfWork;

    public AuthController(IAccountService accountService,IUnitOfWork unitOfWork)
    {
        _accountService = accountService;
        _unitOfWork = unitOfWork;
    }
    
    /// <summary>
    /// Login with google use oauthIdToken
    /// </summary>
    /// <param name="accessToken"></param>
    /// <returns></returns>
    [HttpPost]
    [Route("google-login")]
    public async Task<IActionResult> LoginWithGoogle(string accessToken)
    {
        var result = _accountService.LoginGoogle(accessToken);
        _unitOfWork.Commit();
        var jsonResult = new JsonResult(result.Result)
        {
            StatusCode = result.Result.Status
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
    public IActionResult Login(string email, string password)
    {
        var result = _accountService.Login(email, password);
        var jsonResult = new JsonResult(result)
        {
            StatusCode = result.Status
        };
        return jsonResult;
    }
}