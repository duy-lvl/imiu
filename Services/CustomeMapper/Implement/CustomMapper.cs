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
using DAL.Enum;
using Services.Service.Interface;

namespace Services.CustomeMapper.Implement
{
	public class CustomMapper : ICustomMapper
	{
		private IAnswerRepository _answerRepository;
		private ITagRepository _tagRepository;

		public CustomMapper(IAnswerRepository answerRepository, ITagRepository tagRepository)
		{
			_answerRepository = answerRepository;
			_tagRepository = tagRepository;
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
				Content = answer.Content,
                Tag = answer.Tag != null ? Map(answer.Tag) : null
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
		public List<SubscriptionModel> Map(List<Subscription> subscriptions)
		{
			List<SubscriptionModel> result = new();
			foreach (var subscription in subscriptions)
			{
				var subscriptionDetails = Map(subscription.SubscriptionDetails);
				var subscriptionModel = new SubscriptionModel()
				{
					Duration = subscription.Duration == Duration.MONTHLY ? "1 tháng" : "Vĩnh viễn",
					Id = subscription.Id,
					Name = subscription.Name,
					Value = subscription.Value,
					SubscriptionDetails = subscriptionDetails
				};
				result.Add(subscriptionModel);
			}

			return result;
		}

		public List<SubscriptionModel.SubscriptionDetailModel> Map(List<SubscriptionDetail> subscriptionDetails)
		{
			List<SubscriptionModel.SubscriptionDetailModel> result = new();
			foreach (var subscriptionDetail in subscriptionDetails)
			{
				var subscriptionDetailModel = new SubscriptionModel.SubscriptionDetailModel()
				{
					Status = subscriptionDetail.Status,
					Detail = subscriptionDetail.Detail
				};
				result.Add(subscriptionDetailModel);
			}

			return result;
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

		#region Tag
		public TagAnswerModel Map(Tag tag)
		{
			return new TagAnswerModel
			{
				Id = tag.Id,
				Name = tag.Name,
				Code = tag.Code
			};
		}
		
		public List<TagModel> Map(List<Tag> tags)
		{
			List<TagModel> result = new List<TagModel>();
			foreach (var tag in tags)
			{
				result.Add(new TagModel()
				{
					Id = tag.Id,
					Name = tag.Name
				});
			}

			return result;
		}

		public List<Tag> Map(List<TagModel> tagModels)
		{
			List<Tag> result = new List<Tag>();
			foreach (var tag in tagModels)
			{
				result.Add(new Tag()
				{
					Id = tag.Id,
					Name = tag.Name
				});
			}

			return result;
		}

		public List<MealResponseModel> Map(List<Meal> meals, List<Tag> tags)
		{
			
			var mealResponseModels = new List<MealResponseModel>();
			
			foreach (var tag in tags)
			{
				mealResponseModels.Add(new MealResponseModel()
				{
					TagId = tag.Id.ToString(),
					Tag = tag.Name,
					Data = new List<MealResponseModel.Meal>()
				});
				foreach (var meal in meals)
				{
					if (meal.MealTags.FirstOrDefault(mt=>mt.TagId == tag.Id) != null)
					{
						mealResponseModels.Last().Data.Add(new()
						{
							Name = meal.Name,
							CookingTime = meal.CookingTime,
							Difficulty = meal.Difficulty.ToString(),
							Id = meal.Id,
							ImageUrl = meal.ImageUrl
						});
					}
				}
			}

			return mealResponseModels;
		}

		#endregion


	}

}
