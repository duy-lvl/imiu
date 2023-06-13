using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service.Interface
{
    public interface IMealService
    {
        MealModel GetMealByMealID(Guid mealID);
    }
}
