using DAL.Entities;
using DAL.Enum;

namespace DAL.Repository.Interface;

public interface ITransactionRepository
{
    void Create(Transaction transaction);
    void Update(Transaction transaction);
    List<Transaction> GetAll();
    void UpdateTransactionStatus(Guid accountID,int status);

    List<Transaction> GetTransactions(int? month, int? year, TransactionStatus status);
    List<Transaction> GetMonthlyTransactions(int year);
}