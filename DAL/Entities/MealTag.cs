using System.ComponentModel.DataAnnotations;

namespace DAL.Entities;

public class MealTag
{
    [Key]
    public Guid Id { get; set; }
    
}