using DAL.Entities;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class MealService : IMealService
{
    private readonly IMealTagRepository _mealTagRepository;
    private readonly INutritionFactRepository _nutritionFactRepository;
    private readonly ICustomerAnswerRepository _customerAnswerRepository;
    private readonly ICustomMapper _customMapper;

    public MealService(IMealTagRepository mealTagRepository, INutritionFactRepository nutritionFactRepository, ICustomerAnswerRepository customerAnswerRepository, ICustomMapper customMapper)
    {
        _mealTagRepository = mealTagRepository;
        _nutritionFactRepository = nutritionFactRepository;
        _customerAnswerRepository = customerAnswerRepository;
        _customMapper = customMapper;
    }


    public ResponseObject GetMeal(MealRequestModel mealRequestModel)
    {
        var customerId = Guid.Parse(mealRequestModel.CustomerId);
        var customerAnswers = _customerAnswerRepository.GetCustomerAnswersByCustomerID(customerId);
        var diseaseTags = new List<Tag>();
        int minCalo = 667, maxCalo = 776;
        bool isVegie = false;
        foreach (var answer in customerAnswers)
        {
            diseaseTags.Add(answer.Answer.Tag);
            if (answer.Value > 0)
            {
                if (answer.Answer.Content.ToUpper() == "MIN") minCalo = answer.Value;
                if (answer.Answer.Content.ToUpper() == "MAX") maxCalo = answer.Value;
            }

            if (answer.Answer.Tag.Code == "Vegie")
            {
                isVegie = true;
            }
        }

        var meals = _mealTagRepository.GetMeal(_customMapper.Map(mealRequestModel.Tags), customerAnswers, mealRequestModel.Name);
        //meals = _nutritionFactRepository.GetMealsByCaloriesBetween(meals, minCalo, maxCalo);
        return new GetRequestResponse<List<MealResponseModel>>()
        {
            Data = _customMapper.Map(meals, _customMapper.Map(mealRequestModel.Tags)),
            Message = "Thành công",
            Status = 200
        };
    }
}