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

		List<SubscriptionModel> Map(List<Subscription> subscriptions);
		List<SubscriptionModel.SubscriptionDetailModel> Map(List<SubscriptionDetail> subscriptionDetails);

		List<TagModel> Map(List<Tag> tags);
		List<Tag> Map(List<TagModel> tagModels);

		List<MealResponseModel> Map(List<MealSelection> favouriteMeals, List<Meal> meals, List<Tag> tags, Nutrition calories,
			int pageSize, int pageNumber, out int totalPage);
		List<MealResponseModel.Meal> Map(List<MealSelection> favouriteMeals, List<Meal> meals, Nutrition calories);

		List<MealResponseModel.Meal> Map(List<MealSelection> meals, Nutrition calories, bool isFavourite);
		
		public TransactionRequestModel Map(Transaction transaction);
    
		
		public MealModel Map(Meal meal);
		public NutritionFactModel Map(NutritionFact nutritionFact);
		public NutritionModel Map(Nutrition nutrition);
		public DirectionModel Map(Direction direction);
		public MealTagModel Map(MealTag mealTag);
		public IngredientModel Map(Ingredient ingredient);
		public MealIngredientModel Map(MealIngredient mealIngredient);
	}
}
