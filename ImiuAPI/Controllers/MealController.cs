using DAL.Repository.Interface;
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
    public IActionResult GetMeals(string? accountId, int pageNumber, int pageSize)
    {
        var result = _mealService.GetMeal(accountId, pageNumber, pageSize);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }

    
}