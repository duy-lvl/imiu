using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.Service.Interface;

namespace ImiuAPI.Controllers
{
    [ApiController]
    [Route("/api/[controller]")]

    public class QuestionController : Controller
    {
        private readonly IQuestionService _questionService;
        public QuestionController(IQuestionService questionService)
        {
            _questionService = questionService;
        }
        [HttpPost]
        [Route("/question")]
        
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
