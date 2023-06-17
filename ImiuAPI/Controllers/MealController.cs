using DAL.Repository.Interface;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.CustomeMapper.Interface;
using Services.Service.Interface;
using Services.ServiceModel;
using System.Diagnostics.CodeAnalysis;
using System.Runtime.InteropServices;

namespace ImiuAPI.Controllers;
[ApiController]
[Route("api/v1/meals")]
public class MealController
{
    private readonly IMealService _mealService;
    

    public MealController(IMealService mealService)
    {
        _mealService = mealService;
    }

    [HttpPost]
    [AllowAnonymous]
    public IActionResult GetMeals([FromBody] MealRequestModel mealRequestModel)
    {
        var result = _mealService.GetMeal(mealRequestModel);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }

    [HttpGet]
    [AllowAnonymous]
    public IActionResult GetMeals(string? accountId, int pageNumber, int pageSize)
    {
        var result = _mealService.GetMeal(accountId, pageNumber, pageSize);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }

    [HttpGet]
    [Route("{mealId}")]
    public IActionResult GetMeal(Guid mealId)
    {
        var meal = _mealService.GetMealByMealID(mealId);
        if(meal != null)
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