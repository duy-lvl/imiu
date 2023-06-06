using DAL.Entities;
using Services.JsonResult;

namespace Services.Service.Interface;

public interface ISubscriptionService
{
    ResponseObject GetAll();
}