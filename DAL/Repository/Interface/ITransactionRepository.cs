using DAL.Entities;

namespace DAL.Repository.Interface;

public interface ITransactionRepository
{
    void Create(Transaction transaction);
    void Update(Transaction transaction);
    List<Transaction> GetAll();
    void UpdateTransactionStatus(Guid accountID,int status);
}