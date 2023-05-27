using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class MealTag
{
    [ForeignKey(nameof(Meal))]
    public Guid MealId { get; set; }
    
    [ForeignKey(nameof(Tag))]
    public Guid TagId { get; set; }   
    
    public Meal Meal { get; set; }
    public Tag Tag { get; set; }
    
    
}