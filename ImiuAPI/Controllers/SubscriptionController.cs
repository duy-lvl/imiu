using DAL.UnitOfWork;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;

namespace ImiuAPI.Controllers;
[ApiController]
[Route("api/v1/subscriptions")]
public class SubscriptionController
{
    private readonly ISubscriptionService _subscriptionService;
    private readonly IUnitOfWork _unitOfWork;

    public SubscriptionController(ISubscriptionService subscriptionService, IUnitOfWork unitOfWork)
    {
        _subscriptionService = subscriptionService;
        _unitOfWork = unitOfWork;
    }

    [HttpGet]
    [AllowAnonymous]
    public IActionResult GetAll()
    {
        var result = _subscriptionService.GetAll();
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }
}