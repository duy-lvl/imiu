using DAL.Entities;

namespace DAL.Repository.Interface;

public interface IMealTagRepository
{
    List<MealTag> GetMealTag(Guid mealId);

    List<Meal> GetMeal(List<Tag> filterTags, List<CustomerAnswer> customerAnswers,
        string filterValue, List<int> difficulty);
}