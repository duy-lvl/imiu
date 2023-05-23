using DAL.Entities;
using DAL.Models;

namespace Services.Interface;

public interface IAccountService
{
    Account RegisterAccount(RegisterAccountModel registerAccountModel);
}