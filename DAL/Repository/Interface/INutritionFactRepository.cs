using DAL.Entities;

namespace DAL.Repository.Interface;

public interface INutritionFactRepository
{
    List<Meal> GetMealsByCaloriesBetween(List<Meal> source, int min, int max);
    List<NutritionFact> GetNutritionFactsByMealID(Guid mealID);
}