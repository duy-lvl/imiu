using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;

namespace DAL.Repository;

public class PlanRepository : IPlanRepository
{
    protected readonly ImiuDbContext _context;
    protected readonly DbSet<Plan> _dbSet;
    public PlanRepository(ImiuDbContext context)
    {
        _context = context;
        _dbSet = context.Set<Plan>();
    }


    public List<Plan> GetAllByCustomerId(Guid id)
    {
        return _dbSet.Where(p => p.Account.Id == id).Include(p=>p.Subcription).ToList();
    }

    public Plan GetCurrentPlanByCustomerId(Guid id)
    {
        return _dbSet.Include(p => p.Subcription)
            .Include(p => p.Account)
            .FirstOrDefault(p => (p.EndDate == null || (p.StartDate <= DateTime.Today && p.EndDate <= DateTime.Today)) 
                                 && p.Account.Id == id && p.Status != PlanStatus.INACTIVE);
    }

    public void CreatePlan(Plan plan)
    {
        _dbSet.Add(plan);
    }

    public void InactivatePlan(Plan plan)
    {
        _dbSet.Update(plan);
    }

    public void ExtendPlan(Plan plan)
    {
        _dbSet.Update(plan);
    }
}