using Services.JsonResult;
using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service.Interface
{
    public interface IMealSelectionService
    {
        ResponseObject UpdateMealSelection(MealSelectionRequestModel mealSelectionRequestModel, string customerId);
        ResponseObject GetSelectedMeals(string customerId, bool isFavourite, int pageNumber, int pageSize);
        ResponseObject GetNutrition(string customerId, DateTime dateFrom, DateTime dateTo);
    }
}
