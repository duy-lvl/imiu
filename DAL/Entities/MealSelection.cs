using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class MealSelection
{
    [Key]
    public Guid Id { get; set; }

    [ForeignKey(nameof(Account))] 
    public Guid AccountId;

    [Required(ErrorMessage = "Select date is required")]
    public DateTime SelectDate;
    
    public Account Account;
}