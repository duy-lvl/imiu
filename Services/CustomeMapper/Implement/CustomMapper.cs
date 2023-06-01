using DAL.Entities;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata;
using System.Text;
using System.Threading.Tasks;

namespace Services.CustomeMapper.Implement
{
	public class CustomMapper : ICustomMapper
	{
		private IAnswerRepository _answerRepository;
		public CustomMapper(IAnswerRepository answerRepository)
        {
			_answerRepository = answerRepository;
        }

		public Account Map(AccountModel accountModel)
		{
			return new Account
			{
				Id = accountModel.Id,
				Name = accountModel.Name,
				Email = accountModel.Email,
				Password = accountModel.Password,
				Dob = accountModel.Dob,
				Role = accountModel.Role
			};
		}

		public AccountModel Map(Account account)
		{
			return new AccountModel
			{
				Id = account.Id,
				Name = account.Name,
				Email = account.Email,
				Password = account.Password,
				Dob = account.Dob,
				Role = account.Role
			};
		}
        #region Question
        public QuestionModel Map(Question question)
        {
			var list = _answerRepository.GetAnswersByQuestionID(question.id);
			List<AnswerModel> answerList = new List<AnswerModel>();
			foreach (Answer answer in list)
            {
				answerList.Add(Map(answer));
            }
			return new QuestionModel
			{
				id = question.id,
				Content = question.Content,
				Index = question.Index,
				Answers = answerList
			};
        }
        #endregion

        #region Answer
		public AnswerModel Map(Answer answer)
        {
			return new AnswerModel
			{
				Id = answer.Id,
				Content = answer.Content
			};
        }
        #endregion
    }
}
