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
        return _dbSet.OrderByDescending(t=>t.DateTime).ToList();
    }

    public void Update(Transaction transaction)
    {
        _dbSet.Update(transaction);
    }

    public void UpdateTransactionStatus(Guid transactionId,int status)
    {
        var transaction = _dbSet.FirstOrDefault(t => t.Id == transactionId);
        if(transaction != null)
        {
            transaction.Status = (TransactionStatus)status;
            _dbSet.Update(transaction);
        }
    }

    public List<Transaction> GetTransactions(int? month, int? year, TransactionStatus status)
    {
        if (month != null && year != null)
        {
            return _dbSet
                .Where(t => t.DateTime.Month == month
                                     && t.DateTime.Year == year
                                     && t.Status == status)
                .ToList();
        }

        if (year != null)
        {
            return _dbSet
                .Where(t => t.DateTime.Year == year
                            && t.Status == status)
                .OrderBy(t => t.DateTime.Month)
                .ToList();
        }
        return _dbSet.Where(t => t.Status == status).ToList();
    }
    
    public List<Transaction> GetMonthlyTransactions(int year)
    {
        return _dbSet
            .Where(t => t.DateTime.Year == year)
            .OrderBy(t => t.DateTime.Month)
            .ToList();
    }
}