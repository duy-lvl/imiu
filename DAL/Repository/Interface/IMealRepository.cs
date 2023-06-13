using DAL.Entities;
using DAL.Enum;

namespace DAL.Repository.Interface;

public interface IMealRepository
{
    List<Meal> GetMeal(List<Tag> filterTags, string name, Difficulty difficulty, 
        List<Tag> answerTags, int minCalo, int maxCalo, bool isVegie);
}