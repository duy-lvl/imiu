using System.ComponentModel.DataAnnotations;
using DAL.Enum;

namespace Services.ServiceModel;

public class LoginResponseModel
{
    public bool IsVerify { get; set; }
    public string Role { get; set; }
    public string AccessToken { get; set; }
    public string RefreshToken { get; set; }
    public SubcriptionModel Subcription { get; set; }
    
    public class SubcriptionModel
    {
        public string Name { get; set; }
        public string Code { get; set; }
    }
}