namespace DAL.Models;

public class RegisterAccountModel
{
    private string Name { get; set; }

    public string Email { get; set; }
    
    public string Password { get; set; }
    
    public string ConfirmPassword { get; set; }
    
    public DateOnly Dob { get; set; }
}