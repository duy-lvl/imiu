using DAL.Entities;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;

namespace DAL.Repository.Implement;

public class SubscriptionRepository : ISubscriptionRepository
{
    protected readonly ImiuDbContext _context;
    protected readonly DbSet<Subscription> _dbSet;

    public SubscriptionRepository(ImiuDbContext context)
    {
        _context = context;
        _dbSet = context.Set<Subscription>();
    }


    public Subscription GetById(Guid id)
    {
        return _dbSet.FirstOrDefault(s => s.Id == id);
    }
}