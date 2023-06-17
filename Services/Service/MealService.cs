using System.Collections.Generic;
using System.Text.Json;
using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Newtonsoft.Json.Linq;
using Services.CustomeMapper.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class MealService : IMealService
{
    
    private readonly IMealTagRepository _mealTagRepository;
    private readonly ITagRepository _tagRepository;
    private readonly ICustomerAnswerRepository _customerAnswerRepository;
    private readonly INutritionRepository _nutritionRepository;
    private readonly IMealRepository _mealRepository;
    private readonly ICustomMapper _customMapper;
    private readonly IMealSelectionRepository _mealSelectionRepository;
    private readonly IPlanRepository _planRepository;

    public MealService(IPlanRepository planRepository, IMealTagRepository mealTagRepository, ITagRepository tagRepository, 
        ICustomerAnswerRepository customerAnswerRepository, INutritionRepository nutritionRepository, IMealRepository mealRepository, 
        ICustomMapper customMapper, IMealSelectionRepository mealSelectionRepository)
    {
        _planRepository = planRepository;
        _mealTagRepository = mealTagRepository;
        _tagRepository = tagRepository;
        _customerAnswerRepository = customerAnswerRepository;
        _nutritionRepository = nutritionRepository;
        _mealRepository = mealRepository;
        _customMapper = customMapper;
        _mealSelectionRepository = mealSelectionRepository;
    }

    public ResponseObject GetMeal(MealRequestModel mealRequestModel)
    {
        List<CustomerAnswer> customerAnswers;
        var diseaseTags = new List<Tag>();
        int minCalo = 667, maxCalo = 776;
        bool isVegie = false;
        Guid customerId = new();
        if (!string.IsNullOrEmpty(mealRequestModel.CustomerId))
        {
            customerId = Guid.Parse(mealRequestModel.CustomerId);
            customerAnswers = _customerAnswerRepository.GetCustomerAnswersByCustomerID(customerId);
            
            foreach (var answer in customerAnswers)
            {
                if (answer.Answer != null)
                {
                    if (answer.Answer.Tag != null)
                    {
                        diseaseTags.Add(answer.Answer.Tag);
                        if (answer.Answer.Tag.Code == "Vegie")
                        {
                            isVegie = true;
                        }
                    }
                    if (answer.Value > 0)
                    {
                        if (answer.Answer.Content.ToUpper() == "MIN") minCalo = answer.Value;
                        if (answer.Answer.Content.ToUpper() == "MAX") maxCalo = answer.Value;
                    }
                }
            }
        }
        else
        {
            customerAnswers = null;
        }

        var filterTags = _customMapper.Map(mealRequestModel.Tags);
        
        if (filterTags.Count == 0)
        {
            filterTags = _tagRepository.GetAllTagsExceptDiseases();
            var breakfastTag = filterTags.Find(t => t.Code == "Breakfast");
            if (breakfastTag != null)
            {
                filterTags.Remove(breakfastTag);
            }
        }

        var calories = _nutritionRepository.GetByName("Calories");
        
        var limit = GetLimit(customerId);

        var meals = _mealTagRepository.GetMeal(filterTags,
            customerAnswers, mealRequestModel.Name, mealRequestModel.Difficulty).Take(limit).ToList();

        var favouriteMeals = _mealSelectionRepository.Get(customerId);
        return new GetPaginatedResponse<List<MealResponseModel>>()
        {
            Data = _customMapper.Map(favouriteMeals, meals, filterTags, calories, mealRequestModel.PageSize, 
                mealRequestModel.PageNumber,out int totalPage),
            Message = "Thành công",
            Status = 200,
            metaData = new()
            {
                TotalPage = totalPage,
                CurrentPage = mealRequestModel.PageNumber
            }
        };
    }

    public ResponseObject GetMeal(string accountId, int pageNumber, int pageSize)
    {
        List<MealSelection> favouriteMeals = new List<MealSelection>();
        int limit = 10;
        if (Guid.TryParse(accountId, out Guid customerId))
        {
            favouriteMeals = _mealSelectionRepository.Get(customerId);
            
            limit = GetLimit(customerId);
        }
        var meals = _mealRepository.GetMeal(pageNumber, pageSize, limit, out int totalPage);
        var calories = _nutritionRepository.GetByName("Calories");
        
        
        var data = _customMapper.Map(favouriteMeals, meals, calories);
        return new GetPaginatedResponse<List<MealResponseModel.Meal>>()
        {
            Data = data,
            Message = "Thành công",
            Status = 200,
            metaData = new()
            {
                TotalPage = totalPage,
                CurrentPage = pageNumber
            }
        };
    }

    private int GetLimit(Guid customerId)
    {
        int limit = 10;
        var plan = _planRepository.GetCurrentPlanByCustomerId(customerId);
        if (plan != null)
        {
            try
            {
                switch (plan.Subcription.Code)
                {
                    case "FREE":
                        limit = 10;
                        break;
                    case "CLASSIC":
                        limit = 50;
                        break;
                    case "PREMIUM":
                        limit = 10000;
                        break;
                }
            }
            catch { }
        }
        return limit;
    }
    
    public MealModel GetMealByMealID(Guid mealID)
    {
        return _customMapper.Map(_mealRepository.GetMealByMealID(mealID));
    }
}