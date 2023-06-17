using DAL.Entities;
using DAL.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace DAL.Repository.Interface;

public interface IMealRepository
{
    Meal GetMealByMealID(Guid mealID);
    List<Meal> GetMeal(int pageNumber, int pageSize, int limit, out int totalPage);
}