using DAL.Entities;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IAccountService
{

    AccountModel Login(string email, string password);
    
    bool RegisterAccount(RegisterAccountModel registerAccountModel);

    void VerifyEmail(RegisterTokenModel token);

    //void SendEmail(Account account, out RegisterTokenModel token);
    void SendEmail(string email);

}