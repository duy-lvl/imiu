using System.ComponentModel.DataAnnotations;

using DAL.Enum;

namespace DAL.Entities;

public class Account
{
    [Key]
    public Guid Id { get; set; }
    
    [Required(ErrorMessage = "Name is required")]
    public string Name { get; set; }
    
    [Required(ErrorMessage = "Email is required")]
    [EmailAddress(ErrorMessage = "Email is not valid")]
    public string Email { get; set; }
    
    [Required(ErrorMessage = "Password is required")]
    public string Password { get; set; }
    
    public DateTime Dob { get; set; }
    
    public Role Role { get; set; }

    public AccountStatus Status { get; set; }

    public List<Plan> Plans { get; set; }
    
    public List<MealSelection> MealSelections { get; set; }
    
    public List<CustomerAnswer> CustomerAnswers { get; set; }
}