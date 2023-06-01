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
    public class AnswerService : IAnswerService
    {
        private readonly IAnswerRepository _answerRepository;
        private ICustomMapper _mapper;
        public AnswerService(IAnswerRepository answerRepository, ICustomMapper mapper)
        {
            _answerRepository = answerRepository;
            _mapper = mapper;
        }

        public List<AnswerModel> GetAnswersByQuestionID(Guid questionID)
        {
            var list = _answerRepository.GetAnswersByQuestionID(questionID);
            List<AnswerModel> answerList = new List<AnswerModel>();
            foreach (Answer answer in list)
            {
                answerList.Add(_mapper.Map(answer));
            }
            return answerList;
        }
    }
}
