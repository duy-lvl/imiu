using DAL.Entities;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IAccountService
{
    void RegisterAccount(AccountModel registerAccountModel);
    AccountModel Login(string email, string password);
}