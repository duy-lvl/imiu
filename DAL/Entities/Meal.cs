using System.ComponentModel.DataAnnotations;
using DAL.Enum;

namespace DAL.Entities;

public class Meal
{
    [Key]
    public Guid Id { get; set; }

    [Required(ErrorMessage = "Name is required")]
    public string Name { get; set; }

    public string Summary { get; set; }
    
    [Required(ErrorMessage = "Cooking time is required")]
    public int CookingTime { get; set; }
    
    [Required(ErrorMessage = "Difficulty is required")]
    public Difficulty Difficulty { get; set; }
    
    public string ImageUrl { get; set; }
}