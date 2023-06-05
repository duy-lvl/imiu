using DAL.UnitOfWork;
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

    public PaymentController(IPaymentService paymentService, IUnitOfWork unitOfWork)
    {
        _paymentService = paymentService;
        _unitOfWork = unitOfWork;
    }

    [HttpPost]
    [Route("qr-code")]
    public ResponseObject GetQrCode([FromBody] QrRequestModel qrRequestModel)
    {
        return _paymentService.GetQrCode(qrRequestModel);
    }
}