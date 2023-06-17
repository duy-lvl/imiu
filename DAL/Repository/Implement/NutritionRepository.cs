using DAL.Entities;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;

namespace DAL.Repository.Implement;

public class NutritionRepository : INutritionRepository
{
    private readonly ImiuDbContext _context;
    private readonly DbSet<Nutrition> _dbSet;
    public NutritionRepository(ImiuDbContext context)
    {
        _context = context;
        _dbSet = _context.Set<Nutrition>();
    }
    public Nutrition? GetByName(string name)
    {
        return _dbSet.FirstOrDefault(n => n.Name.Contains(name));
    }
    public Nutrition GetNutritionBaseOnNutritionFact(Guid nutritionID)
    {
        return _dbSet.FirstOrDefault(n => n.Id == nutritionID);
    }
}

        
