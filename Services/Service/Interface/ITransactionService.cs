using Services.JsonResult;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface ITransactionService
{
    ResponseObject CreateTransaction(TransactionRequestModel transactionRequestModel);
    List<TransactionRequestModel> GetTransactions();
    void UpdateStatus(Guid transactionId,int status);
}