using DAL.Repository.Implement;
using DAL.Repository.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class PaymentService : IPaymentService
{
    private readonly ISubscriptionRepository _subscriptionRepository;
    private readonly IAccountRepository _accountRepository;
    private static readonly string QR_CODE =
        "https://api.vietqr.io/image/970416-13929187-YUP6WeY.jpg?accountName=LE%20VU%20LAM%20DUY";

    public PaymentService(ISubscriptionRepository subscriptionRepository, IAccountRepository accountRepository)
    {
        _subscriptionRepository = subscriptionRepository;
        _accountRepository = accountRepository;
    }

    public ResponseObject GetQrCode(QrRequestModel paymentRequestModel)
    {
        var subscription = _subscriptionRepository.GetById(Guid.Parse(paymentRequestModel.SubscriptionId));
        var account = _accountRepository.GetByID(Guid.Parse(paymentRequestModel.AccountId));
        string transactionCode = new Random().Next(10000000, 99999999).ToString();
        var qrResponse = new QrResponseModel()
        {
            QrCode = QR_CODE + $"&amount={subscription.Value}&addInfo={account.Email}%20{subscription.Code}%20{transactionCode}",
            TransactionCode = transactionCode
        };
        return new GetRequestResponse<QrResponseModel>()
        {
            Data = qrResponse,
            Message = "Thành công",
            Status = 201
        };
    }
}