using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class AccountType
{
    [Key]
    public Guid Id { get; set; }
    
    [Required(ErrorMessage = "Name is required")]
    public string Name { get; set; }
    
    [Required(ErrorMessage = "Value is required")]
    public int Value { get; set; }
    
    [Required(ErrorMessage = "Duration is required")]
    public int Duration { get; set; }
    
    [Required(ErrorMessage = "Code is required")]
    public string Code { get; set; }
    
   
}