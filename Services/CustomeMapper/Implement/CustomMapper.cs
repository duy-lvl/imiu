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
using DAL.Repository.Implement;

namespace Services.CustomeMapper.Implement
{
	public class CustomMapper : ICustomMapper
	{
		private IAnswerRepository _answerRepository;
		private ITagRepository _tagRepository;
        private INutritionRepository _nutritionRepository;
        private INutritionFactRepository _nutritionfactRepository;
        private IDirectionRepository _directionRepository;
        
        private IMealTagRepository _mealTagRepository;
        private IIngredientRepository _ingredientRepository;
        private IMealIngredientRepository _mealIngredientRepository;

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
		public TagModel Map(Tag tag)
		{
			return new TagModel
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

		public List<MealResponseModel> Map(List<Meal> meals, List<Tag> tags, Nutrition calories,int pageSize, int pageNumber)
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
						string calo = "0 kcal";
						var nutritionFact = meal.NutritionFacts.FirstOrDefault(nf => nf.NutritionId == calories.Id);
						if (nutritionFact != null)
						{
							calo = $"{(int)nutritionFact.Value} {calories.Unit}";
						}
						mealResponseModels.Last().Data.Add(new()
						{
							Name = meal.Name,
							CookingTime = meal.CookingTime,
							Difficulty = meal.Difficulty,
							Id = meal.Id,
							Calories = calo,
							ImageUrl = meal.ImageUrl
						});
					}
				}
			}
			Random rng = new Random();
			foreach (var mealResponse in mealResponseModels)
			{
				mealResponse.Data = mealResponse.Data.OrderBy(m => rng.Next()).ToList();
				mealResponse.Data = mealResponse.Data
					.Skip((pageNumber - 1) * pageSize)
					.Take(pageSize).ToList();
				
			}

			mealResponseModels.RemoveAll(x => x.Data.Count == 0);
			return mealResponseModels;
		}

        #endregion

        #region Meal
        public MealModel Map(Meal meal)	
        {
            var nutritionFactList = _nutritionfactRepository.GetNutritionFactsByMealID(meal.Id);
            List<NutritionFactModel> nutritionfactModelList = new List<NutritionFactModel>();
            foreach (var nutritionFact in nutritionFactList)
            {
                nutritionfactModelList.Add(Map(nutritionFact));
            }

            var directionList = _directionRepository.GetDirectionsByMealID(meal.Id);
            List<DirectionModel> directionModelList = new List<DirectionModel>();
            foreach (var direction in directionList)
            {
                directionModelList.Add(Map(direction));
            }

            var mealTagList = _mealTagRepository.GetMealTagsByMealID(meal.Id);
            List<MealTagModel> mealTagModelList = new List<MealTagModel>();
            foreach (var mealTag in mealTagList)
            {
                mealTagModelList.Add(Map(mealTag));
            }

            var mealIngredientList = _mealIngredientRepository.GetMealIngredientsByMealID(meal.Id);
            List<MealIngredientModel> mealIngredientModelList = new List<MealIngredientModel>();
            foreach (var mealIngredient in mealIngredientList)
            {
                mealIngredientModelList.Add(Map(mealIngredient));
            }

            return new MealModel
            {
               
                Name = meal.Name,
                Summary = meal.Summary,
                CookingTime = meal.CookingTime,
                Difficulty = meal.Difficulty,
                ImageUrl = meal.ImageUrl,
                NutritionFacts = nutritionfactModelList,
                Directions = directionModelList,
                MealTags = mealTagModelList,
                MealIngredients = mealIngredientModelList
            };
        }

        #endregion

        #region Nutrition Fact
        public NutritionFactModel Map(NutritionFact nutritionFact)
        {
            var nutrition = _nutritionRepository.GetNutritionBaseOnNutritionFact(nutritionFact.NutritionId);
            return new NutritionFactModel
            {
                Id = nutritionFact.Id,
                NutritionId = nutritionFact.NutritionId,
                Value = nutritionFact.Value,
                Nutrition = Map(nutrition)
            };
        }
        #endregion

        #region Nutrition
        public NutritionModel Map(Nutrition nutrition)
        {
            return new NutritionModel
            {
                Id = nutrition.Id,
                Unit = nutrition.Unit,
                Name = nutrition.Name
            };
        }
        #endregion

        #region Direction
        public DirectionModel Map(Direction direction)
        {
            return new DirectionModel
            {
                Id = direction.Id,
                StepNumber = direction.StepNumber,
                Instruction = direction.Instruction,
                ImgUrl = direction.ImgUrl
            };
        }
        #endregion

        #region Meal Tag
        public MealTagModel Map(MealTag mealTag)
        {
            Tag tag = _tagRepository.GetTagBaseOnMealTag(mealTag.TagId);
            return new MealTagModel
            {
                Tag = Map(tag)
            };
        }
        #endregion

        #region Ingredient
        public IngredientModel Map(Ingredient ingredient)
        {
            return new IngredientModel
            {
                Id = ingredient.Id,
                Name = ingredient.Name,
                Unit = ingredient.Unit,
                ImgUrl = ingredient.ImgUrl
            };
        }
        #endregion

        #region Meal Ingredient
        public MealIngredientModel Map(MealIngredient mealIngredient)
        {
            var ingredient = _ingredientRepository.GetIngredientBaseOnMealIngredient(mealIngredient.IngredidentId);
            return new MealIngredientModel
            {
                Id = mealIngredient.Id,
                Quantity = mealIngredient.Quantity,
                Description = mealIngredient.Description,
                IngredientModel = Map(ingredient)
            };
        }
        #endregion
    }


}
