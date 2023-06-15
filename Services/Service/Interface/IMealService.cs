using Services.JsonResult;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IMealService
{
    ResponseObject GetMeal(MealRequestModel mealRequestModel);
    ResponseObject GetMeal(int pageNumber, int pageSize);
}