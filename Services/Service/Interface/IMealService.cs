using Services.JsonResult;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IMealService
{
    MealModel GetMealByMealID(Guid mealID);
    ResponseObject GetMeal(MealRequestModel mealRequestModel);
    ResponseObject GetMeal(string accountId, int pageNumber, int pageSize);
    
}