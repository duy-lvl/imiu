using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using DAL.Entities;

namespace Services.ServiceModel;

public class RegisterAccountModel
{

    public string Email { get; set; }
    
    public string Password { get; set; }


    
    
}