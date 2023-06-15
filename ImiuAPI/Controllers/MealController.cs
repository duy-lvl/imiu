using DAL.Repository.Interface;
using DAL.UnitOfWork;
using Microsoft.AspNetCore.Mvc;
using Services.CustomeMapper.Interface;
using Services.Service.Interface;
using Services.ServiceModel;

namespace ImiuAPI.Controllers;
[ApiController]
[Route("api/v1/meals")]
public class MealController
{
    private readonly IMealService _mealService;

    private readonly IUnitOfWork? _unitOfWork;
    
    public MealController(IMealService mealService, IUnitOfWork unitOfWork)
    {
        _mealService = mealService;
        _unitOfWork = unitOfWork;
    }
    [HttpPost]
    [ResponseCache(Duration = 3600)]
    public IActionResult GetMeals([FromBody] MealRequestModel mealRequestModel)
    {
        var result = _mealService.GetMeal(mealRequestModel);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }
    [HttpGet]
    [ResponseCache(Duration = 3600)]
    public IActionResult GetMeals(int pageNumber, int pageSize)
    {
        var result = _mealService.GetMeal(pageNumber, pageSize);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }

        [HttpGet]
    [Route ("detail")]
    public IActionResult GetMeal(Guid mealID)
    {
        var meal = _mealService.GetMealByMealID(mealID);
        if (meal != null)
        {
            return new JsonResult(new
            {
                Status = "Success",
                Message = "OK",
                Data = meal
            });
        }
        return new JsonResult(new
        {
            Status = "Fail",
            Message = "This meal does not exist!"
        });
    }
}