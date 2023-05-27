using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class MealSelectionItem
{

    [Key]
    public Guid Id { get; set; }
    
    [ForeignKey(nameof(MealSelection))]
    public Guid MealSelectionId { get; set; }
 
    [ForeignKey(nameof(Meal))]
    public Guid MealId { get; set; }
    
    public MealSelection MealSelection { get; set; }
    
    public Meal Meal { get; set; }
}