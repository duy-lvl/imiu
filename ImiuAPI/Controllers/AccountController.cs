using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;
using DAL.UnitOfWork;
using Services.Service;
using Services.ServiceModel;

namespace ImiuAPI.Controllers;

[ApiController]
[Route("/api/v1/accounts")]
public class AccountsController
{
    private readonly IAccountService _accountService;
    private readonly IMealSelectionService _mealSelectionService;
    private readonly IUnitOfWork _unitOfWork;

    public AccountsController(IAccountService accountService, IMealSelectionService mealSelectionService, IUnitOfWork unitOfWork)
    {
        _accountService = accountService;
        _mealSelectionService = mealSelectionService;
        _unitOfWork = unitOfWork;
    }

    [HttpPut]
    [Route("{accountId}/meal-selections")]
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
    public IActionResult Select(string accountId, int pageNumber, int pageSize, bool isFavourite)
    {
        var result = _mealSelectionService.GetSelectedMeals(accountId, isFavourite, pageNumber, pageSize);
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }
}