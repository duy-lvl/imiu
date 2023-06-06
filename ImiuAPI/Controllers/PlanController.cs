using DAL.UnitOfWork;
using Microsoft.AspNetCore.Mvc;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace ImiuAPI.Controllers;

[ApiController]
[Route("api/v1/plans")]
public class PlanController
{
    private readonly IPlanService _planService;
    private readonly IUnitOfWork _unitOfWork;
    private readonly ITransactionService _transactionService;

    public PlanController(IPlanService planService, IUnitOfWork unitOfWork, ITransactionService transactionService)
    {
        _planService = planService;
        _unitOfWork = unitOfWork;
        _transactionService = transactionService;
    }

    
}