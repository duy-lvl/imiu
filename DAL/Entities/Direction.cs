using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class Direction
{
    [Key]
    public Guid Id { get; set; }

    [Required(ErrorMessage = "Step number is required")]
    public int StepNumber { get; set; }
    [Required(ErrorMessage = "Instruction is required")]
    public string Instruction { get; set; }

    public string ImgUrl { get; set; }

    [ForeignKey(nameof(Meal))]
    public Guid MealId { get; set; }
    public Meal Meal { get; set; }
}