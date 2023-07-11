using DAL.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class ImiuDbContext : DbContext
	{
		DbSet<Account> Accounts { get; set; }
		DbSet<Answer> Answers { get; set; }
		DbSet<CustomerAnswer> CustomerAnswers { get; set; }
		DbSet<Direction> Directions { get; set; }
		DbSet<Ingredient> Ingredients { get; set; }
		DbSet<Meal> Meals { get; set; }
		DbSet<MealIngredient> MealIngredients { get; set; }
		DbSet<MealSelection> MealSelections { get; set; }
		DbSet<MealTag> MealTags { get; set; }
		DbSet<Nutrition> Nutritions { get; set; }
		DbSet<NutritionFact> NutritionFacts { get; set; }
		DbSet<Plan> Plans { get; set; }
		DbSet<Question> Questions { get; set; }
		DbSet<Subscription> Subscriptions { get; set; }
		DbSet<SubscriptionDetail> SubscriptionDetails { get; set; }
		DbSet<Tag> Tags { get; set; }
		DbSet<Transaction> Transactions { get; set; }
		

		public ImiuDbContext()
        {
            
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
		{
			IConfiguration config = new ConfigurationBuilder()
				.SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
			string connectionString = config.GetConnectionString("Azure");
			optionsBuilder.UseSqlServer(connectionString);
		}

		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			modelBuilder.Entity<MealTag>().HasKey(mt=>new {mt.MealId, mt.TagId});

			
		}
	}
}
