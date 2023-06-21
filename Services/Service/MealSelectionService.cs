using DAL;
using DAL.Entities;
using DAL.Repository.Implement;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Services.ServiceModel.MealResponseModel;

namespace Services.Service
{
    public class MealSelectionService : IMealSelectionService
    {
        private readonly ICustomMapper _customMapper;
        private readonly IMealSelectionRepository _mealSelectionRepository;
        private readonly INutritionRepository _nutritionRepository;

        public MealSelectionService(ICustomMapper customMapper, IMealSelectionRepository mealSelectionRepository, 
            INutritionRepository nutritionRepository)
        {
            _customMapper = customMapper;
            _mealSelectionRepository = mealSelectionRepository;
            _nutritionRepository = nutritionRepository;
        }

        public ResponseObject UpdateMealSelection(MealSelectionRequestModel mealSelectionRequestModel, string customerId)
        {
            var result = new PostRequestResponse();
            
            try
            {
                if (Guid.TryParse(customerId, out Guid accountId))
                {
                    var mealId = Guid.Parse(mealSelectionRequestModel.MealId);
                    
                    var mealSelection = _mealSelectionRepository.Get(accountId, mealId, mealSelectionRequestModel.IsFavourite);
                        
                    if (mealSelection == null)
                    {
                        
                        _mealSelectionRepository.Add(new()
                        {
                            AccountId = accountId,
                            Id = Guid.NewGuid(),
                            SelectDate = DateTime.Now,
                            IsFavourite = mealSelectionRequestModel.IsFavourite,
                            MealId = mealId
                        });
                    }
                    if (mealSelection != null)
                    {
                        _mealSelectionRepository.Delete(mealSelection);
                    }
                    
                        
                    result.Status = 201;
                    result.Message = "Thành công";
                }
                else
                {
                    result.Status = 400;
                    result.Message = "Tài khoản không tồn tại";
                }
                    
            }
            catch 
            {

                result.Status = 500;
                result.Message = "Lỗi hệ thống";
            }
            
            return result;
        }

        public ResponseObject GetSelectedMeals(string customerId, bool isFavourite, int pageNumber, int pageSize)
        {
            var result = new GetPaginatedResponse<List<MealResponseModel.Meal>>()
            {
                Message = "Thành công",
                Status = 200,
                Data = new List<MealResponseModel.Meal>(),
                metaData = new()
                {
                    TotalPage = 0,
                    CurrentPage = pageNumber
                }
            };
            if (Guid.TryParse(customerId, out Guid accountId))
            {
                var mealSelections = _mealSelectionRepository.Get(accountId, isFavourite, pageNumber, pageSize, out int totalPage);
                var calories = _nutritionRepository.GetByName("Calories");
                result.Data = _customMapper.Map(mealSelections, calories, isFavourite);
                result.metaData.TotalPage = totalPage;
            }

            
            return result;
        }

        public ResponseObject GetNutrition(string customerId, DateTime dateFrom, DateTime dateTo)
        {
            if (Guid.TryParse(customerId, out Guid accountId))
            {
                var nutritions = _nutritionRepository.GetAll();
                var nutritionModels = _customMapper.Map(nutritions);
                var meals = _mealSelectionRepository.Get(accountId, dateFrom, dateTo);

                for (int i = 0; i < nutritionModels.Count; i++)
                {
                    nutritionModels[i].Quantity = (int)meals.Sum(ms =>
                        ms.Meal.NutritionFacts.FirstOrDefault(nf => nf.NutritionId == nutritions[i].Id).Value);
                }

                return new GetRequestResponse<List<NutritionDashboardModel>>()
                {
                    Message = "Thành công",
                    Status = 200,
                    Data = nutritionModels
                };
            }
            return new GetRequestResponse<object>()
            {
                Message = "Thành công",
                Status = 200,
                Data = new List<NutritionDashboardModel>()
            };
        }
    }
}
