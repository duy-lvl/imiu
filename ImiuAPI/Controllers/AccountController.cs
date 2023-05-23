
using DAL.Models;
using Microsoft.AspNetCore.Mvc;

namespace ImiuAPI.Controllers;

[ApiController]
[Route("/api/[controller]")]
public class AccountsController
{
    [HttpPost]
    public async Task<IActionResult> RegisterAccount(RegisterAccountModel registerAccountModel)
    {

        throw new NotImplementedException();
    }
}