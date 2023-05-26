using System.ComponentModel.DataAnnotations;

namespace DAL.Entities;

public class MealSelectionItem
{
    [Key]
    public Guid MealSelectionId { get; set; }
 
    public Guid MealId { get; set; }
}