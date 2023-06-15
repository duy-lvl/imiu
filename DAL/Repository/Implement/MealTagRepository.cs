using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace DAL.Repository.Implement;

public class MealTagRepository : IMealTagRepository
{
    private readonly DbSet<MealTag> _dbSet;
    private readonly ImiuDbContext _context;
    private readonly IConfiguration _configuration;

    public MealTagRepository(ImiuDbContext context, IConfiguration configuration)
    {
        _context = context;
        _dbSet = _context.Set<MealTag>();
        _configuration = configuration;
    }

    public List<MealTag> GetMealTag(Guid mealId)
    {
        return _dbSet.Include(mt => mt.Meal)
            .Include(mt => mt.Tag)
            .Where(mt => mt.Meal.Id == mealId)
            .ToList();
    }

    

    public List<Meal> GetMeal(List<Tag> filterTags, List<CustomerAnswer> customerAnswers, 
        string filterValue, List<int> difficulties)
    {
        
        
        var isBreakfast = filterTags.FirstOrDefault(t => t.Code == "Breakfast") != null;

        
        string connectionString = _configuration["ConnectionStrings:Local"];
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        string query =
            "select m.Id " +
            "from MealTags mt join Meals m on mt.MealId = m.Id join Tags t on t.Id = mt.TagId where ";
        
        if (customerAnswers != null)
        {
            var customerAnswerDiseases = customerAnswers
                .Where(ca => ca.Answer.Tag.Code.StartsWith("D-")).ToList();
        
            bool isVegie = customerAnswers.Where(ca => ca.Answer.Tag.Code == "Vegie").ToList().Count > 0;
            
            var diseaseTags = customerAnswerDiseases.Select(ca => ca.Answer.Tag).ToList();
            
            for (int i = 0; i < diseaseTags.Count; i++)

            {
                query += "t.Code = N'" + diseaseTags[i].Code + "' ";
                if (i < diseaseTags.Count - 1)
                {
                    query += " or ";
                }
            }

            if (isVegie)
            {
                query += "and t.Code = N'Vegie' ";
            }

            if (diseaseTags.Count > 0 || isVegie)
            {
                query += " and ";
            }
        }
        
        if (isBreakfast)
        {
            query += " t.Code = N'Breakfast' ";
        }
        else
        {
            query += " t.Code <> N'Breakfast' ";
        }

        if (!string.IsNullOrEmpty(filterValue))
        {
            query += " and m.Name like N'%" + filterValue + "%' ";
        }

        if (difficulties.Count > 0)
        {
            query += " and (";
        }
        for (int i = 0; i < difficulties.Count; i++)
        {
            query += " m.Difficulty = " + difficulties[i];
            if (i == difficulties.Count - 1)
            {
                query += ") ";
            }

            if (i>=0 && i < difficulties.Count -1)
            {
                query += " or ";
            }
        }
       
        query += " group by m.id";
        SqlCommand sqlCommand = new SqlCommand(query, conn);
        try
        {
            SqlDataReader reader = sqlCommand.ExecuteReader();
            var mealIds = new List<Guid>();
            while (reader.Read())
            {
                mealIds.Add(Guid.Parse(reader["Id"].ToString()));
            }

            var result = _context.Set<Meal>()
                .Include(m => m.MealTags)
                .Include(m => m.NutritionFacts)

                .Where(m => mealIds.Contains(m.Id))
                
                .ToList();
            return result;
        }
        catch
        {
            return new List<Meal>();
        }
            
        
    }
}