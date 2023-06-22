using DAL.Entities;
using Services.JsonResult;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IAccountService
{
    ResponseObject RegisterAccount(RegisterAccountModel registerAccountModel, bool isLoginWithGoogle);

    ResponseObject VerifyEmail(string token);
    
    ResponseObject Login(string email, string password);

    ResponseObject SendEmail(string email);

    Task<ResponseObject> LoginGoogle(string accessToken);

    void Update(UpdateAccountModel accountModel);

    void Update(UpdatePasswordModel passwordModel);
}