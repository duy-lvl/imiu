using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class TransactionService : ITransactionService
{
    private readonly ITransactionRepository _transactionRepository;
    private ICustomMapper _mapper;

    public TransactionService(ITransactionRepository transactionRepository, ICustomMapper mapper)
    {
        _transactionRepository = transactionRepository;
        _mapper = mapper;
    }
    public ResponseObject CreateTransaction(TransactionRequestModel transactionRequestModel)
    {
        throw new NotImplementedException();
    }

    public List<TransactionRequestModel> GetTransactions()
    {
        var transactionList = _transactionRepository.GetAll();
        List<TransactionRequestModel> transactionModelList = new List<TransactionRequestModel>();
         foreach (var transactionRequest in transactionList)
        {
            transactionModelList.Add(_mapper.Map(transactionRequest));
        }
         return transactionModelList;
    }

    public void UpdateStatus(Guid accountID, int status)
    {
        _transactionRepository.UpdateTransactionStatus(accountID,status);
    }
}