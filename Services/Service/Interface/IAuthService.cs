using Services.JsonResult;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IAuthService
{
    ResponseObject RegisterAccount(RegisterAccountModel registerAccountModel, bool isLoginWithGoogle);

    ResponseObject VerifyEmail(string token);
    
    ResponseObject Login(string email, string password);

    ResponseObject SendEmail(string email);

    Task<ResponseObject> LoginGoogle(string accessToken);

    TokenModel GenerateToken(AccountModel accountModel);
}