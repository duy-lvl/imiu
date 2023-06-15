using DAL.Entities;

namespace DAL.Repository.Interface;

public interface INutritionRepository
{
    Nutrition? GetByName(string name);
}