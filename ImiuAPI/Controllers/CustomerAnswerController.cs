using DAL.UnitOfWork;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;
using Services.ServiceModel;

namespace ImiuAPI.Controllers
{
    [ApiController]
    [Route("/api/v1/customer-answer")]
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
        public IActionResult CreateCustomerAnswers(List<CustomerAnswerModel> customerAnswers)
        {
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

        [HttpPut]
        public IActionResult UpdateCustomerAnswers(List<CustomerAnswerModel> customerAnswers)
        {
                _customerAnswerService.UpdateCustomerAnswers(customerAnswers);
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
