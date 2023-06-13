using DAL.UnitOfWork;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;
using Services.ServiceModel;

namespace ImiuAPI.Controllers
{
    [ApiController]
    [Route("/api/v1/customer-answers")]
    public class CustomerAnswerController : Controller
    {
        private readonly ICustomerAnswerService _customerAnswerService;
        private readonly IUnitOfWork _unitOfWork;
        public CustomerAnswerController(ICustomerAnswerService customerAnswerService,IUnitOfWork unitOfWork)
        {
            _customerAnswerService = customerAnswerService;
            _unitOfWork = unitOfWork;
        }

        [HttpPost]
        [Route("create")]
        public IActionResult CreateCustomerAnswers(List<CustomerAnswerModel> customerAnswers)
        {
            foreach (var customerAnswer in customerAnswers)
            {
                customerAnswer.Id = new Guid();
            }
            _customerAnswerService.CreateCustomerAnswers(customerAnswers);
            bool success = _unitOfWork.Commit();
            if(success)
            {
                return new JsonResult(new
                {
                    Status = "Success",
                    Message = "OK"
                });
            }
            return new JsonResult(new
            {
                Status = "Fail",
                Message = "Cannot create"
            });
        }

        [HttpGet]
        [Route("get")]
        public IActionResult GetCustomerAnswersByCustomerID(Guid id)
        {
            var list = _customerAnswerService.GetCustomerAnswersByCustomerID(id);
            if (list.Count > 0)
            {
                return new JsonResult(new
                {
                    Status = "Success",
                    Message = "OK",
                    Data = list
                });
            }
            return new JsonResult(new
            {
                Status = "Fail",
                Message = "The customer has not subscribed yet!"
            });
        }

        [HttpPost]
        [Route("update")]
        public IActionResult UpdateCustomerAnswers(Guid accountID, List<CustomerAnswerModel> customerAnswers)
        {
                _customerAnswerService.UpdateCustomerAnswers(accountID, customerAnswers);
            bool success = _unitOfWork.Commit();
            if (success)
            {
                return new JsonResult(new
                {
                    Status = "Success",
                    Message = "Update successfully!",
                });
            }
            return new JsonResult(new
            {
                Status = "Fail",
                Message = "Update fail!"
            });
        }
    }
}
