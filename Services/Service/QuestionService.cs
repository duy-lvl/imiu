using DAL.Entities;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.Service.Interface;
using Services.ServiceModel;
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
        private ICustomMapper _mapper;

        public QuestionService(IQuestionRepository questionRepository, ICustomMapper mapper)
        {
            _questionRepository = questionRepository;
            _mapper = mapper;
        }

        public List<QuestionModel> GetQuestions()
        {
            var list = _questionRepository.GetAllQuestions();
            List<QuestionModel> questions = new List<QuestionModel>();
            foreach (Question question in list)
            {
                questions.Add(_mapper.Map(question));
            }
            return questions;
        }

    }
}
