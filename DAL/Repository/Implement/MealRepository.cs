using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;
using System.Xml.Linq;
using System.Text;
using System.Threading.Tasks;
using System;
using System.Collections.Generic;
namespace DAL.Repository.Implement;

public class MealRepository : IMealRepository
{
    private readonly DbSet<Meal> _dbSet;
    private readonly ImiuDbContext _context;
    private readonly IMemoryCache _cache;

    public MealRepository(ImiuDbContext context, IMemoryCache cache)
    {
        _context = context;
        _dbSet = _context.Set<Meal>();
        _cache = cache;
    }


    

    public List<Meal> GetMeal(int pageNumber, int pageSize, int limit, out int totalPage)
    {
        
        Random rand = new Random();
        string cacheKey = $"randomizedListAll_{pageSize}";
        bool hasValue = _cache.TryGetValue(cacheKey, out List<int> orders);
        if (!hasValue)
        {
            orders = orders ?? new List<int>();
            for (int i = 0; i < _dbSet.Count(); i++)
            {
                orders.Add(rand.Next());
            }
            var cacheEntryOptions = new MemoryCacheEntryOptions()
               .SetAbsoluteExpiration(TimeSpan.FromSeconds(3600)); // Expire after 60 minutes
            _cache.Set(cacheKey, orders, cacheEntryOptions);
        }
        int j = 0;
        var meals = _dbSet
            .Include(m => m.NutritionFacts)
            .ToList()
            .Take(limit)
            .OrderBy(m => orders[j++]);

        totalPage = (int)Math.Ceiling(1.0 * meals.Count() / pageSize);
        return meals.Skip((pageNumber - 1) * pageSize)
            .Take(pageSize)
            .ToList();
    }
    
    public Meal GetMealByMealID(Guid mealID)
    {
        var meal = _dbSet.FirstOrDefault(m => m.Id == mealID);
        return _dbSet.FirstOrDefault(m => m.Id == mealID);
    }
}