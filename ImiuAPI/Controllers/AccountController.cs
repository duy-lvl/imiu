using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;
using DAL.UnitOfWork;

namespace ImiuAPI.Controllers;

[ApiController]
[Route("/api/v1/accounts")]
public class AccountsController
{
    private readonly IAccountService _accountService;
    private readonly IUnitOfWork _unitOfWork;

    public AccountsController(IAccountService accountService,IUnitOfWork unitOfWork)
    {
        _accountService = accountService;
        _unitOfWork = unitOfWork;
    }
	
	
	

}