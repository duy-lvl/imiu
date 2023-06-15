using DAL.UnitOfWork;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;

namespace ImiuAPI.Controllers
{
    [ApiController]
    [Route("/api/v1/transactions")]
    public class TransactionController : Controller
    {
        private readonly ITransactionService _transactionService;
        private readonly IUnitOfWork _unitOfWork;
        public TransactionController(ITransactionService transactionService, IUnitOfWork unitOfWork)
        {
            _transactionService = transactionService;
            _unitOfWork = unitOfWork;
        }

        [HttpGet]
        public IActionResult GetAllTransactions()
        {
            var list = _transactionService.GetTransactions();
            if (list.Count > 0)
            {
                return new JsonResult(new
                {
                    Status = "Status",
                    Message = "Ok",
                    Data = list
                });
            }
            return new JsonResult(new
            {
                Status = "Fail",
                Message = "Not Ok"
            });
        }

        [HttpPost]
        [Route("update")]
        public IActionResult UpdateTransactionStatus(Guid accountID, int status)
        {
            _transactionService.UpdateStatus(accountID, status);
            bool success = _unitOfWork.Commit();
            if(success)
            {
                return new JsonResult(new
                {
                    Status = "Ok",
                    Message = "Update successfully!"
                });
            }
            return new JsonResult(new
            {
                Status = "Fail",
                Message = "Fail to Update!"
            });
        }
    }
}
