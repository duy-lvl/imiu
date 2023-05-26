using System.ComponentModel.DataAnnotations;

namespace DAL.Entities;

public class Ingredient
{
    [Key]
    public Guid Id { get; set; }

    [Required(ErrorMessage = "Name is required")]
    public string Name { get; set; }
    
    [Required(ErrorMessage = "Unit is required")]
    public string Unit { get; set; }
    public string ImgUrl { get; set; }
}