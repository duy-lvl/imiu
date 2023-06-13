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
        private INutritionRepository _nutritionRepository;
        private INutritionFactRepository _nutritionfactRepository;
        private IDirectionRepository _directionRepository;
        private ITagRepository _tagRepository;
        private IMealTagRepository _mealTagRepository;
        private IIngredientRepository _ingredientRepository;
        private IMealIngredientRepository _mealIngredientRepository;
        public CustomMapper(IAnswerRepository answerRepository, INutritionRepository nutritionRepository,
            INutritionFactRepository nutritionFactRepository, IDirectionRepository directionRepository,
            ITagRepository tagRepository, IMealTagRepository  mealTagRepository, IIngredientRepository ingredientRepository,
            IMealIngredientRepository mealIngredientRepository)
        {
            _answerRepository = answerRepository;
            _nutritionRepository = nutritionRepository;
            _nutritionfactRepository = nutritionFactRepository;
            _directionRepository = directionRepository;
            _tagRepository = tagRepository;
            _mealTagRepository = mealTagRepository;
            _ingredientRepository = ingredientRepository;
            _mealIngredientRepository = mealIngredientRepository;
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
            foreach(var direction in directionList)
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
            foreach(var mealIngredient in mealIngredientList)
            {
                mealIngredientModelList.Add(Map(mealIngredient));
            }

            return new MealModel
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
                Code = nutrition.Code,
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
                ImgUrl= ingredient.ImgUrl
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
