using DAL.Entities;

namespace Services.ServiceModel;

public class MealRequestModel
{
    public string CustomerId { get; set; }
    public string Name { get; set; }
    public List<int> Difficulty { get; set; }
    public List<TagModel> Tags { get; set; }
    public int PageNumber { get; set; }
    public int PageSize { get; set; }
}