using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;

namespace DAL.Repository.Implement;

public class TransactionRepository : ITransactionRepository
{
    private readonly ImiuDbContext _context;
    private readonly DbSet<Transaction> _dbSet;

    public TransactionRepository(ImiuDbContext context)
    {
        _context = context;
        _dbSet = context.Set<Transaction>();
    }

    public void Create(Transaction transaction)
    {
        _dbSet.Add(transaction);
    }

    public List<Transaction> GetAll()
    {
        return _dbSet.ToList();
    }

    public void Update(Transaction transaction)
    {
        _dbSet.Update(transaction);
    }

    public void UpdateTransactionStatus(Guid accountID,int status)
    {
        var transaction = _dbSet.FirstOrDefault(t => t.AccountId == accountID);
        if(transaction != null)
        {
            transaction.Status = (TransactionStatus)status;
            _dbSet.Update(transaction);
        }
    }
}