﻿using DAL.Entities;
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
using Microsoft.Extensions.Caching.Memory;

namespace Services.CustomeMapper.Implement
{
	public class CustomMapper : ICustomMapper
	{
		private IAnswerRepository _answerRepository;
		private ITagRepository _tagRepository;
        private readonly IMemoryCache _cache;


        public CustomMapper(IAnswerRepository answerRepository, ITagRepository tagRepository, INutritionRepository nutritionRepository, 
			INutritionFactRepository nutritionFactRepository, IDirectionRepository directionRepository, IMealTagRepository mealTagRepository, 
			IIngredientRepository ingredientRepository, IMealIngredientRepository mealIngredientRepository)
		{
			
			_answerRepository = answerRepository;
			_tagRepository = tagRepository;
			_mealTagRepository = mealTagRepository;
			_directionRepository = directionRepository;
			_ingredientRepository = ingredientRepository;
			_mealIngredientRepository = mealIngredientRepository;
			_nutritionRepository = nutritionRepository;
			_nutritionfactRepository = nutritionFactRepository;
			
			
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



        #endregion

        #region Meal
        
                 public List<MealResponseModel.Meal> Map(List<Meal> meals, Nutrition calories)
        {
            var mealResponseModels = new List<MealResponseModel.Meal>();

            
            foreach (var meal in meals)
            {
                
                string calo = "0 kcal";
                var nutritionFact = meal.NutritionFacts.FirstOrDefault(nf => nf.NutritionId == calories.Id);
                if (nutritionFact != null)
                {
                    calo = $"{(int)nutritionFact.Value} {calories.Unit}";
                }
                mealResponseModels.Add(new()
                {
                    Name = meal.Name,
                    CookingTime = meal.CookingTime,
                    Difficulty = meal.Difficulty,
                    Id = meal.Id,
                    Calories = calo,
                    ImageUrl = meal.ImageUrl
                });
                
            }
            return mealResponseModels.ToList();
        }
        public List<MealResponseModel> Map(List<Meal> meals, List<Tag> tags, Nutrition calories, int pageSize, int pageNumber)

        {
            Random rng = new Random();
            string cacheKey = $"randomizedList_{pageSize}";
            bool hasValue = _cache.TryGetValue(cacheKey, out List<int> orders);
			if (!hasValue)
			{
				orders = orders ?? new List<int>();
				for (int i = 0; i < meals.Count; i++)
				{
					orders.Add(rng.Next());
				}
                var cacheEntryOptions = new MemoryCacheEntryOptions()
					.SetAbsoluteExpiration(TimeSpan.FromSeconds(3600)); // Expire after 60 minutes
                _cache.Set(cacheKey, orders, cacheEntryOptions);
            }
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
                    if (meal.MealTags.FirstOrDefault(mt => mt.TagId == tag.Id) != null)
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
			int j = 0;
            foreach (var mealResponse in mealResponseModels)
            {
                mealResponse.Data = mealResponse.Data.OrderBy(m => orders[j++]).ToList();
                mealResponse.Data = mealResponse.Data
                    .Skip((pageNumber - 1) * pageSize)
                    .Take(pageSize).ToList();

            }
             mealResponseModels.RemoveAll(x => x.Data.Count == 0);
            return mealResponseModels;
            }

 public MealDetailModel Map(Meal meal)
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
            return new MealDetailModel
            {
                Id = meal.Id,
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
            var nutritionModel = Map(_nutritionRepository.GetNutritionBaseOnNutritionFact(nutritionFact.NutritionId));
            return new NutritionFactModel
            {
                Id = nutritionFact.Id,
                NutritionId = nutritionFact.NutritionId,
                Name = nutritionModel.Name,
                Value = nutritionFact.Value,
                Unit = nutritionModel.Unit
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
            var tagModel = Map(_tagRepository.GetTagBaseOnMealTag(mealTag.TagId));
            return new MealTagModel
            {
                Id = tagModel.Id,
                Name = tagModel.Name,
                Code = tagModel.Code
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
            var ingredientModel = Map(_ingredientRepository.GetIngredientBaseOnMealIngredient(mealIngredient.IngredidentId));
            return new MealIngredientModel
            {
                Id = mealIngredient.Id,
                Name = ingredientModel.Name,
                Unit = ingredientModel.Unit,
                Quantity = mealIngredient.Quantity,
                Description = mealIngredient.Description,
                ImgUrl = ingredientModel.ImgUrl
            };
        }
        #endregion
    }

}
