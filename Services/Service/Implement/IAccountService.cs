using DAL.Entities;
using Services.JsonResult;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IAccountService
{


    
    ResponseObject RegisterAccount(AccountModel accountModel, bool isLoginWithGoogle);

    ResponseObject VerifyEmail(string token);

    //void SendEmail(Account account, out RegisterTokenModel token);

    ResponseObject Login(string email, string password);

    ResponseObject SendEmail(string email);

    Task<ResponseObject> LoginGoogle(string accessToken);
}