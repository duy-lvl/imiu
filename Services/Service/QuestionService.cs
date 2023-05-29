using DAL.Entities;
using DAL.Repository.Interface;
using Services.Service.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service
{
    public class QuestionService : IQuestionService
    {
        private readonly IQuestionRepository _questionRepository;
        public QuestionService(IQuestionRepository questionRepository)
        {
            _questionRepository = questionRepository;
        }

        public List<Question> GetQuestions()
        {
            return _questionRepository.GetAllQuestions();
        }

    }
}
