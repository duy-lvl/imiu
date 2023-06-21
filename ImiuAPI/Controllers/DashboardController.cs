using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;

namespace ImiuAPI.Controllers;
[ApiController]
[Route("/api/v1/dashboards")]
public class DashboardController
{
    private readonly IDashboardService _dashboardService;
    public DashboardController(IDashboardService dashboardService)
    {
        _dashboardService = dashboardService;
    }

    [HttpGet]
    [Route("revenue")]
    [Authorize(Roles = "ADMIN")]
    public IActionResult GetRevenue(int? month, int? year)
    {
        var result = _dashboardService.GetRevenue(month, year);
        var jsonResult = new JsonResult(result)
        {
            StatusCode = result.Status
        };
        return jsonResult;
    }
    [HttpGet]
    [Route("year-revenue")]
    [Authorize(Roles = "ADMIN")]
    public IActionResult GetRevenue(int year)
    {
        var result = _dashboardService.GetRevenue(year);
        var jsonResult = new JsonResult(result)
        {
            StatusCode = result.Status
        };
        return jsonResult;
    }

    [HttpGet]
    [Route("customer")]
    [Authorize(Roles = "ADMIN")]
    public IActionResult GetCustomer()
    {
        var result = _dashboardService.GetCustomer();
        return new JsonResult(result)
        {
            StatusCode = result.Status
        };
    }
}