using DAL.Repository.Interface;
using DAL.UnitOfWork;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;
using Services.ServiceModel;

namespace ImiuAPI.Controllers
{
    [ApiController]
    [Route("api/v1/meal-selections")]
    public class MealSelectionController 
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMealSelectionService _mealSelectionService;

        public MealSelectionController(IUnitOfWork unitOfWork, IMealSelectionService mealSelectionService)
        {
            _unitOfWork = unitOfWork;
            _mealSelectionService = mealSelectionService;
        }

        
    }
}
