using DAL.Enum;

namespace Services.ServiceModel;

public class LoginResponseModel
{
    public string Message { get; set; }
    public Role Role { get; set; }
    public string Token { get; set; }
}