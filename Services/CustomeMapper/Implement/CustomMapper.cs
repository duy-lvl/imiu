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
		#region Account
		public Account Map(AccountModel accountModel)
		{
			return new Account
			{
				Id = accountModel.Id,
				Name = accountModel.Name,
				Email = accountModel.Email,
				Password = accountModel.Password,
				Dob = accountModel.Dob,
				Role = accountModel.Role,
				Status = accountModel.Status,
								
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
				Role = account.Role,
				Status = account.Status,

			};
		}
		#endregion
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

        #region Subscription

        public LoginResponseModel.SubcriptionModel Map(Subscription subcription)
        {
	        return new LoginResponseModel.SubcriptionModel()
	        {
		        Code = subcription.Code,
		        Name = subcription.Name
	        };
        }

		#endregion

		#region Customer Answer
		public CustomerAnswerModel Map(CustomerAnswer customerAnswer)
		{
			return new CustomerAnswerModel
			{
				Id = customerAnswer.Id,
				Value = customerAnswer.Value,
				AnswerId = customerAnswer.AnswerId,
				AccountId = customerAnswer.AccountId
			};
		}

		public CustomerAnswer Map(CustomerAnswerModel customerAnswer)
		{
			return new CustomerAnswer
			{
				Id = customerAnswer.Id,
				Value = customerAnswer.Value,
				AnswerId = customerAnswer.AnswerId,
				AccountId = customerAnswer.AccountId
			};
		}
		#endregion
	}

}
