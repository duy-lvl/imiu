using DAL.Entities;
using Services.ServiceModel;

namespace Services.CustomeMapper.Interface
{
	public interface ICustomMapper
	{
		public Account Map(AccountModel accountModel);
		public AccountModel Map(Account account);
		public QuestionModel Map(Question question);

		public AnswerModel Map(Answer answer);
		LoginResponseModel.SubcriptionModel Map(Subscription subcription);
		public CustomerAnswerModel Map(CustomerAnswer customerAnswer);
		public CustomerAnswer Map(CustomerAnswerModel customerAnswer);
		public TagModel Map(Tag tag);
		public MealModel Map(Meal meal);
		public NutritionFactModel Map(NutritionFact nutritionFact);
		public NutritionModel Map(Nutrition nutrition);
		public DirectionModel Map(Direction direction);
		public MealTagModel Map(MealTag mealTag);
		public IngredientModel Map(Ingredient ingredient);
		public MealIngredientModel Map(MealIngredient mealIngredient);
	}
}
