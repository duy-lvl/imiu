using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace DAL.Repository.Implement;

public class MealTagRepository : IMealTagRepository
{
    private readonly DbSet<MealTag> _dbSet;
    private readonly ImiuDbContext _context;
    private readonly IConfiguration _configuration;

    public MealTagRepository(ImiuDbContext context, IConfiguration configuration)
    {
        _context = context;
        _dbSet = _context.Set<MealTag>();
        _configuration = configuration;
    }

    public List<MealTag> GetMealTag(Guid mealId)
    {
        return _dbSet.Include(mt => mt.Meal)
            .Include(mt => mt.Tag)
            .Where(mt => mt.Meal.Id == mealId)
            .ToList();
    }

    public List<MealTag> GetMealTagsByMealID(Guid mealID)
    {
        return _dbSet.Where(mt => mt.MealId == mealID).ToList();
    }

    public List<Meal> GetMeal(List<Tag> filterTags, List<CustomerAnswer>? customerAnswers, 
        string filterValue, List<int> difficulties)
    {
        var isBreakfast = filterTags.FirstOrDefault(t => t.Code == "Breakfast") != null;
        List<Meal> unselectMeals = new();
        
        var isVegie = false;
        var result = _dbSet.Select(mt => mt.Meal)
            .Where(m=>m.Name.Contains(filterValue) 
                      && (difficulties.Count == 0 || difficulties.Contains((int)m.Difficulty)))
            .ToList();
        if (customerAnswers != null)
        {
            var customerAnswerDiseases = customerAnswers
                .Where(ca => ca.Answer.Tag != null && ca.Answer.Tag.Code.StartsWith("D-")).ToList();
        
            isVegie = customerAnswers
                .Where(ca => ca.Answer.Tag != null && ca.Answer.Tag.Code == "Vegie")
                .ToList().Count > 0;
            
            var diseaseTags = customerAnswerDiseases.Select(ca => ca.Answer.Tag).ToList();
            if (diseaseTags != null)
            {
                unselectMeals = _dbSet.Where(mt => diseaseTags.Contains(mt.Tag))
                    .Select(mt => mt.Meal).ToList();
            }
        
        }

        if (unselectMeals.Count > 0)
        {
            result = result
                .Where(m => !unselectMeals.Contains(m))
                .ToList();
        }
        if (isVegie)
        {
            var vegieMeals = _dbSet.Where(mt => mt.Tag.Code == "Vegie").Select(mt => mt.Meal).ToList();
            result = result.Intersect(vegieMeals).ToList();
        }

        if (isBreakfast)
        {
            var breakfasts = _dbSet.Where(mt => mt.Tag.Code == "Breakfast").Select(mt => mt.Meal).ToList();
            result = result.Intersect(breakfasts).ToList();
        }
       
       
        result = _context.Set<Meal>()
            .Include(m => m.MealTags)
            .Include(m => m.NutritionFacts)

            .Where(m => result.Contains(m))
            
            .ToList();
        return result;
    
    
        
    }
}