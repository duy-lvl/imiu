using Services.JsonResult;

namespace Services.Service.Interface;

public interface IDashboardService
{
    ResponseObject GetRevenue(int? month, int? year);
    ResponseObject GetRevenue(int year);
    ResponseObject GetCustomer();
}