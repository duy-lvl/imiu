using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;
using System.Xml.Linq;

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


    

    public List<Meal> GetMeal(int pageNumber, int pageSize)
    {
        
        Random rand = new Random();
        string cacheKey = $"randomizedList_{pageSize}";
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
        return _dbSet
            .Include(m => m.NutritionFacts)
            .ToList()
            .OrderBy(m => orders[j++])
            .Skip((pageNumber - 1) * pageSize)
            .Take(pageSize)
            .ToList();
    }
}