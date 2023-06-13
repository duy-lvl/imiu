using DAL.Entities;

namespace Services.ServiceModel;

public class MealRequestModel
{
    public string CustomerId { get; set; }
    public string Name { get; set; }
    public string Difficulty { get; set; }
    public List<TagModel> Tags { get; set; }
}