using Services.JsonResult;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IPaymentService
{
    ResponseObject GetQrCode(QrRequestModel paymentRequestModel);
    
}