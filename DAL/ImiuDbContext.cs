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
		DbSet<Account> accounts { get; set; }
		DbSet<AccountDetail> accountsDetail { get; set; }
		DbSet<AccountType> accountTypes { get; set; }
		DbSet<Direction> directions { get; set; }
		DbSet<Ingredient> ingredients { get; set; }
		DbSet<Meal> meals { get; set; }
		DbSet<MealTag> mealTags { get; set; }
		DbSet<MealIngredient> mealIngredients { get; set; }
		DbSet<MealSelection> mealSelection { get; set; }
		DbSet<MealSelectionItem> mealSelectionItem { get; set; }
		DbSet<Nutrition> nutritions { get; set; }
		DbSet<NutritionFact> nutritionFacts { get; set; }
		DbSet<Plan> plans { get; set; }
		DbSet<Tag> tags { get; set; }

		
        public ImiuDbContext()
        {
            
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
		{
			IConfiguration config = new ConfigurationBuilder()
				.SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
			string connectionString = config.GetConnectionString("Local");
			optionsBuilder.UseSqlServer(connectionString);
		}

		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			modelBuilder.Entity<Account>()
				.HasMany(a => a.Plans)
				.WithOne(p => p.Account)
				.HasForeignKey(p => p.AccountId);
        
			modelBuilder.Entity<Plan>()
				.HasOne(p => p.AccountType)
				.WithMany(at => at.Plans)
				.HasForeignKey(p => p.AccountTypeId);
		}
	}
}
