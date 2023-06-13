using DAL.Entities;

namespace Services.ServiceModel;

public class MealResponseModel
{
    public string TagId { get; set; }
    public string Tag { get; set; }
    public List<Meal> Data { get; set; }

    

    public class Meal
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Difficulty { get; set; }
        public int CookingTime { get; set; }
        public string ImageUrl { get; set; }

    }
}