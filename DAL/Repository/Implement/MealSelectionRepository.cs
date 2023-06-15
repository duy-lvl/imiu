using DAL.Entities;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository.Implement
{
    public class MealSelectionRepository : IMealSelectionRepository
    {
        private readonly ImiuDbContext _context;
        private readonly DbSet<MealSelection> _dbSet;

        public MealSelectionRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = _context.Set<MealSelection>();
        }

        public void Add(MealSelection mealSelection)
        {
            _dbSet.Add(mealSelection);
        }

        public bool Delete(MealSelection mealSelection)
        {
            var check = _dbSet.Remove(mealSelection);
            return check != null;
            
        }


        public List<MealSelection> Get(Guid accountId)
        {
            return _dbSet.Where(ms => ms.AccountId == accountId).ToList();
        }

        public MealSelection Get(Guid accountId, Guid mealId)
        {
            return _dbSet.FirstOrDefault(ms => ms.MealId == mealId && ms.AccountId == accountId);
        }

        public List<MealSelection> Get(Guid accountId, bool isFavourite, int pageNumber, int pageSize, out int totalPage)
        {
            var mealSelections = _dbSet.Include(ms => ms.Meal)
                .Include(ms=>ms.Meal.NutritionFacts)
                .Where(ms => ms.IsFavourite == isFavourite && accountId == ms.AccountId);

            totalPage = (int)Math.Ceiling(1.0 * mealSelections.Count() / pageSize);
            return mealSelections
                .Skip((pageNumber - 1) * pageSize)
                .Take(pageSize)
                .ToList();
        }
    }
}
