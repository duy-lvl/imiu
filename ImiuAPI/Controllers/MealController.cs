using DAL.UnitOfWork;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;

namespace ImiuAPI.Controllers
{
    [ApiController]
    [Route("/api/v1/meals")]
    public class MealController : Controller
    {
        private readonly IMealService _mealService;
        private readonly IUnitOfWork _unitOfWork;
        public MealController(IMealService mealService, IUnitOfWork unitOfWork)
        {
            _mealService = mealService;
            _unitOfWork = unitOfWork;
        }

        [HttpGet]
        public IActionResult GetMeal(Guid mealID)
        {
            var meal = _mealService.GetMealByMealID(mealID);
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
}
