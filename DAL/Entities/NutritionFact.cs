using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class NutritionFact
{
    [Key]
    public Guid Id { get; set; }

    [ForeignKey(nameof(Nutrition))]
    public Guid NutritionId { get; set; }

    [ForeignKey(nameof(Meal))]
    public Guid MealId { get; set; }

    public decimal Value { get; set; }

    public Nutrition Nutrition { get; set; }

    public Meal Meal { get; set; }
}