using DAL.Entities;

namespace DAL.Repository.Interface;

public interface INutritionFactRepository
{
    List<NutritionFact> GetNutritionFactsByMealID(Guid mealID);
    List<Meal> GetMealsByCaloriesBetween(List<Meal> source, int min, int max);
}