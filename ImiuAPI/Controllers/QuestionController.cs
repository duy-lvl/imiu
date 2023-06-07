using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;

namespace ImiuAPI.Controllers
{
    [ApiController]
    [Route("api/v1/questions")]

    public class QuestionController : Controller
    {
        private readonly IQuestionService _questionService;
        public QuestionController(IQuestionService questionService)
        {
            _questionService = questionService;
        }
        [HttpGet]
        public IActionResult GetQuestions()
        {
            var questions = _questionService.GetQuestions();
            return new JsonResult(new
            {
                Status = "Success",
                Message = "OK",
                data = questions
            });
        }

    }
}
