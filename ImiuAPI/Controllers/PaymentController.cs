using DAL.UnitOfWork;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace ImiuAPI.Controllers;
[ApiController]
[Route("api/v1/payments")]
public class PaymentController
{
    private readonly IPaymentService _paymentService;
    private readonly IUnitOfWork _unitOfWork;
    private readonly IPlanService _planService;

    public PaymentController(IPaymentService paymentService, IUnitOfWork unitOfWork, IPlanService planService)
    {
        _paymentService = paymentService;
        _unitOfWork = unitOfWork;
        _planService = planService;
    }

    [HttpPost]
    [Route("qr-code")]
    public IActionResult GetQrCode([FromBody] QrRequestModel qrRequestModel)
    {
        var result = _paymentService.GetQrCode(qrRequestModel);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }
    
    [HttpPost]
    [Route("plans")]
    public IActionResult AddPlan(CreatePlanModel createPlanModel)
    {
        var result = _planService.CreatePlan(createPlanModel);
        _unitOfWork.Commit();
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }
}