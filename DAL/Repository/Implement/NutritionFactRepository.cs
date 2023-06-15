using DAL.Entities;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;

namespace DAL.Repository.Implement;

public class NutritionFactRepository : INutritionFactRepository
{
    private readonly ImiuDbContext _context;
    private readonly DbSet<NutritionFact> _dbSet;

    public NutritionFactRepository(ImiuDbContext context)
    {
        _context = context;
        _dbSet = _context.Set<NutritionFact>();
    }

    public List<Meal> GetMealsByCaloriesBetween(List<Meal> source, int min, int max)
    {

        var meals = _dbSet
            .Include(nf=>nf.Meal)
            .Include(nf=>nf.Nutrition)
            .Where(nf=>nf.Nutrition.Name=="Calories" && nf.Value >= min && nf.Value <= max)
            .GroupBy(nf=>nf.MealId)
            .Select(nf => nf.FirstOrDefault())
            .Select(nf=>nf.Meal)
            .ToList();
        
        return source;
    }
    public List<NutritionFact> GetNutritionFactsByMealID(Guid mealID)
    {
        return _dbSet.Where(nf => nf.MealId == mealID).ToList();
    }
}