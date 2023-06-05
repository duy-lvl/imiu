using DAL.Entities;
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

    public void Update(Transaction transaction)
    {
        _dbSet.Update(transaction);
    }
}