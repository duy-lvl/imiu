using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;

namespace DAL.Repository.Implement;

public class MealRepository : IMealRepository
{
    private readonly DbSet<Meal> _dbSet;
    private readonly ImiuDbContext _context;
    
    public MealRepository(ImiuDbContext context)
    {
        _context = context;
        _dbSet = _context.Set<Meal>();
    }


    public List<Meal> GetMeal(List<Tag> filterTags, string name, Difficulty difficulty, 
        List<CustomerAnswer> customerAnswers)
    {
        var diseaseTags = new List<Tag>();
        int minCalo, maxCalo;
        bool isVegie = false;
        foreach (var answer in customerAnswers)
        {
            if (answer.Answer.Tag.Code.StartsWith("D-"))
            {
                diseaseTags.Add(answer.Answer.Tag);    
            }
            
            if (answer.Value > 0)
            {
                if (answer.Answer.Content.ToUpper() == "MIN") minCalo = answer.Value;
                if (answer.Answer.Content.ToUpper() == "MAX") maxCalo = answer.Value;
            }

            if (answer.Answer.Tag.Code == "Vegie")
            {
                isVegie = true;
            }
        }

        var result = new List<Meal>();
        
        foreach (var diseaseTag in diseaseTags)
        {
            
        }

        return null;
    }

    public List<Meal> GetMeal(List<Tag> filterTags, string name, Difficulty difficulty, List<Tag> answerTags, int minCalo, int maxCalo,
        bool isVegie)
    {
        throw new NotImplementedException();
    }
    public Meal GetMealByMealID(Guid mealID)
    {
        var meal = _dbSet.FirstOrDefault(m => m.Id == mealID);
        return _dbSet.FirstOrDefault(m => m.Id == mealID);
    }
}