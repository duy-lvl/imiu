using System.ComponentModel.DataAnnotations;

namespace DAL.Entities;

public class Nutrition
{
    [Key]
    public Guid Id { get; set; }
    
    public string Name { get; set; }

    public string Code { get; set; }
    
    public List<NutritionFact> NutritionFacts { get; set; }
}