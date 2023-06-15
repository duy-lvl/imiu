using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository.Interface
{
    public interface IMealSelectionRepository
    {
        void Add(MealSelection mealSelection);
        List<MealSelection> Get(Guid accountId);
        bool Delete(MealSelection mealSelection);
        MealSelection Get(Guid accountId, Guid mealId);

        List<MealSelection> Get(Guid accountId, bool isFavourite, int pageNumber, int pageSize, out int totalPage);
    }
}
