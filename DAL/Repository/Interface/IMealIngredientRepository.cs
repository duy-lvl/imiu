using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository.Interface
{
    public interface IMealIngredientRepository
    {
        List<MealIngredient> GetMealIngredientsByMealID(Guid mealID);
    }
}
