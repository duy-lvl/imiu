using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;
using DAL.UnitOfWork;
using Services.Service;
using Services.ServiceModel;
using Microsoft.AspNetCore.Authorization;

namespace ImiuAPI.Controllers;

[ApiController]
[Route("/api/v1/accounts")]
public class AccountsController
{
    private readonly IMealSelectionService _mealSelectionService;
    private readonly IUnitOfWork _unitOfWork;

    public AccountsController(IMealSelectionService mealSelectionService, IUnitOfWork unitOfWork)
    {
        _mealSelectionService = mealSelectionService;
        _unitOfWork = unitOfWork;
    }

    [HttpGet]
    [Route("{accountId}/nutritions")]
    [Authorize(Roles = "CUSTOMER")]
    public IActionResult GetNutrition(string accountId)
    {
        var result = _mealSelectionService.GetNutrition(accountId, DateTime.Now.AddDays(-7), DateTime.Now);
        var jsonResult = new JsonResult(result)
        {
            StatusCode = result.Status,
        };
        return jsonResult;
    }
    
    [HttpPut]
    [Route("{accountId}/meal-selections")]
    [Authorize(Roles = "CUSTOMER")]
    public IActionResult Select([FromBody] MealSelectionRequestModel mealSelection, string accountId)
    {
        var result = _mealSelectionService.UpdateMealSelection(mealSelection, accountId);
        _unitOfWork.Commit();
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }

    [HttpGet]
    [Route("{accountId}/meal-selections")]
    [Authorize(Roles = "CUSTOMER")]
    public IActionResult Select(string accountId, int pageNumber, int pageSize, bool isFavourite)
    {
        var result = _mealSelectionService.GetSelectedMeals(accountId, isFavourite, pageNumber, pageSize);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }
}