using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using DAL.Entities;

namespace Services.ServiceModel;

public class RegisterAccountModel
{
    public string Name { get; set; }

    public string Email { get; set; }
    
    public string Password { get; set; }
    
    public string ConfirmPassword { get; set; }
    
    public DateTime Dob { get; set; }
    
    
}