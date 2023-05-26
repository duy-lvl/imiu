using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class MealIngredient
{
    [Key]
    public Guid Id { get; set; }

    [ForeignKey(nameof(Meal))]
    public Guid MealId { get; set; }
    
    [ForeignKey(nameof(Ingredient))]
    public Guid IngredidentId { get; set; }
    
    public decimal Quantity { get; set; }
    
    public string Description { get; set; }
    
    public Meal Meal { get; set; }
    public Ingredient Ingredient { get; set; }

}