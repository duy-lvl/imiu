using DAL.Entities;

namespace DAL.Repository.Interface;

public interface ITransactionRepository
{
    void Create(Transaction transaction);
    void Update(Transaction transaction);
}