using DAL.Entities;
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
    private readonly IAccountService _accountService;
    private readonly IUnitOfWork _unitOfWork;

    public AccountsController(IMealSelectionService mealSelectionService, IAccountService accountService, IUnitOfWork unitOfWork)
    {
        _mealSelectionService = mealSelectionService;
        _accountService = accountService;
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

    [HttpPut]
    [Authorize(Roles = "CUSTOMER")]
    public IActionResult UpdateProfile([FromBody] UpdateAccountModel accountModel)
    {
        _accountService.Update(accountModel);
        if (_unitOfWork.Commit())
        {
            return new JsonResult(new
            {
                Message = "Cập nhật thông tin tài khoản thành công",
                Status = 201
            })
            {
                StatusCode = 201,
            };
        }
        return new JsonResult(new
        {
            Message = "Cập nhật thông tin tài khoản thất bại",
            Status = 400
        })
        {
            StatusCode = 400,
        };
    }
    
    [HttpPut]
    [Route("password")]
    [Authorize(Roles = "CUSTOMER")]
    public IActionResult UpdatePassword([FromBody] UpdatePasswordModel updateModel)
    {
        _accountService.Update(updateModel);
        if (_unitOfWork.Commit())
        {
            return new JsonResult(new
            {
                Message = "Cập nhật mật khẩu thành công",
                Status = 201
            })
            {
                StatusCode = 201,
            };
        }
        return new JsonResult(new
        {
            Message = "Cập nhật mật khẩu thất bại",
            Status = 400
        })
        {
            StatusCode = 400,
        };
    }
}