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
    private readonly ITagRepository _tagRepository;
    private readonly ICustomerAnswerRepository _customerAnswerRepository;
    private readonly ICustomMapper _customMapper;

    public MealService(IMealTagRepository mealTagRepository, ITagRepository tagRepository, ICustomerAnswerRepository customerAnswerRepository, ICustomMapper customMapper)
    {
        _mealTagRepository = mealTagRepository;
        _tagRepository = tagRepository;
        _customerAnswerRepository = customerAnswerRepository;
        _customMapper = customMapper;
    }


    public ResponseObject GetMeal(MealRequestModel mealRequestModel)
    {
        List<CustomerAnswer> customerAnswers;
        var diseaseTags = new List<Tag>();
        int minCalo = 667, maxCalo = 776;
        bool isVegie = false;
        if (!string.IsNullOrEmpty(mealRequestModel.CustomerId))
        {
            var customerId = Guid.Parse(mealRequestModel.CustomerId);
            customerAnswers = _customerAnswerRepository.GetCustomerAnswersByCustomerID(customerId);
            
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

        var meals = _mealTagRepository.GetMeal(filterTags, 
            customerAnswers, mealRequestModel.Name, mealRequestModel.Difficulty);
        
        return new GetRequestResponse<List<MealResponseModel>>()
        {
            Data = _customMapper.Map(meals, filterTags, mealRequestModel.PageSize, mealRequestModel.PageNumber),
            Message = "Thành công",
            Status = 200
        };
    }
}