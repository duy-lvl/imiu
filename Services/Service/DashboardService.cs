using DAL.Enum;
using DAL.Repository.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class DashboardService : IDashboardService
{
    private readonly ITransactionRepository _transactionRepository;
    private readonly IAccountRepository _accountRepository;

    public DashboardService(ITransactionRepository transactionRepository, IAccountRepository accountRepository)
    {
        _transactionRepository = transactionRepository;
        _accountRepository = accountRepository;
    }

    public ResponseObject GetRevenue(int? month, int? year)
    {
        var paidTransactions = _transactionRepository.GetTransactions(month, year, TransactionStatus.PAID).Count;
        var pendingTransactions = _transactionRepository.GetTransactions(month, year, TransactionStatus.PENDING).Count;
        var unpaidTransactions = _transactionRepository.GetTransactions(month, year, TransactionStatus.UNPAID).Count;
        var result = new GetRequestResponse<object>()
        {
            Data = new
            {
                Paid = paidTransactions,
                Pending = pendingTransactions,
                Unpaid = unpaidTransactions
            },
            Message = "Thành công",
            Status = 200
        };
        
        return result;
    }
    
    public ResponseObject GetRevenue(int year)
    {
        var paidTransactions = _transactionRepository.GetTransactions(null, year, TransactionStatus.PAID);
        var pendingTransactions = _transactionRepository.GetTransactions(null, year, TransactionStatus.PENDING);
        var unpaidTransactions = _transactionRepository.GetTransactions(null, year, TransactionStatus.UNPAID);
        
        var paidData = new List<YearRevenueStatisticResponseModel.Data>();
        var pendingData = new List<YearRevenueStatisticResponseModel.Data>();
        var unpaidData = new List<YearRevenueStatisticResponseModel.Data>();
        for (int i = 0; i < 12; i++)
        {
            paidData.Add(new YearRevenueStatisticResponseModel.Data()
            {
                Month = i + 1,
                Transaction = paidTransactions.Count(t => t.DateTime.Month == (i+1))
            });
            pendingData.Add(new YearRevenueStatisticResponseModel.Data()
            {
                Month = i + 1,
                Transaction = pendingTransactions.Count(t => t.DateTime.Month == (i+1))
            });
            unpaidData.Add(new YearRevenueStatisticResponseModel.Data()
            {
                Month = i + 1,
                Transaction = unpaidTransactions.Count(t => t.DateTime.Month == (i+1))
            }); 
        }
        var data = new List<YearRevenueStatisticResponseModel>()
        {
            new YearRevenueStatisticResponseModel()
            {
                data = paidData,
                Type = "Paid"
            },
            new YearRevenueStatisticResponseModel()
            {
                data = pendingData,
                Type = "Pending"
            },
            new YearRevenueStatisticResponseModel()
            {
                data = unpaidData,
                Type = "Unpaid"
            }
        };
        return new GetRequestResponse<List<YearRevenueStatisticResponseModel>>
        {
            Data = data,
            Message = "Thành công",
            Status = 200
        };
    }

    public ResponseObject GetCustomer()
    {
        return new GetRequestResponse<object>
        {
            Data = new
            {
                Active = _accountRepository.GetAll(AccountStatus.ACTIVE).Count,
                Inactive = _accountRepository.GetAll(AccountStatus.INACTIVE).Count
            },
            Message = "Thành công",
            Status = 200
        };
    }
}