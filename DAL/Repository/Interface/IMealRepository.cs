using DAL.Entities;
using DAL.Enum;

namespace DAL.Repository.Interface;

public interface IMealRepository
{
    
    Meal GetMealByMealID(Guid mealID); List<Meal> GetMeal(int pageNumber, int pageSize);
}