﻿using DAL.Repository.Interface;
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
    

    public MealController(IMealService mealService)
    {
        _mealService = mealService;
    }

    [HttpPost]
    public IActionResult GetMeals([FromBody] MealRequestModel mealRequestModel)
    {
        var result = _mealService.GetMeal(mealRequestModel);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }
}