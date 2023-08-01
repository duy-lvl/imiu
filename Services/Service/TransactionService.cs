using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class TransactionService : ITransactionService
{
    private readonly ITransactionRepository _transactionRepository;
    private readonly IPlanRepository _planRepository;
    private readonly IAccountRepository _accountRepository;
    private ICustomMapper _mapper;

    public TransactionService(ITransactionRepository transactionRepository, IPlanRepository planRepository, 
        IAccountRepository accountRepository, ICustomMapper mapper)
    {
        _transactionRepository = transactionRepository;
        _planRepository = planRepository;
        _accountRepository = accountRepository;
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

    public void UpdateStatus(Guid transactionId, int status)
    {
        _transactionRepository.UpdateTransactionStatus(transactionId,status);
        var transaction = _transactionRepository.GetById(transactionId);
        if (transaction != null)
        {
            var account = _accountRepository.GetByID(transaction.AccountId);
            var plan = _planRepository.GetLatestPlanByCustomerId(account.Id);
            if (plan != null)
            {
                if (status == (int)TransactionStatus.UNPAID)
                {
                    plan.Status = PlanStatus.INACTIVE;
                    _planRepository.UpdatePlan(plan);
                }
                else if (status == (int)TransactionStatus.PAID)
                {
                    plan.Status = PlanStatus.ACTIVE;
                    _planRepository.UpdatePlan(plan);
                }
            }
        }
        
    }
}