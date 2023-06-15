using DAL.Entities;
using DAL.Enum;

namespace DAL.Repository.Interface;

public interface IMealRepository
{
    List<Meal> GetMeal(int pageNumber, int pageSize);
}