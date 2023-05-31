using System.ComponentModel.DataAnnotations;
using DAL.Enum;

namespace Services.ServiceModel;

public class LoginResponseModel
{
    public string Message { get; set; }
    public string Role { get; set; }
    public string AccessToken { get; set; }

    public bool IsVerify { get; set; }
}