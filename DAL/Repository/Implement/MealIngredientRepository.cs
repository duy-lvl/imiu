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
    public class MealIngredientRepository : IMealIngredientRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<MealIngredient> _dbSet;
        public MealIngredientRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<MealIngredient>();
        }

        public List<MealIngredient> GetMealIngredientsByMealID(Guid mealID)
        {
            return _dbSet.Where(mi => mi.MealId == mealID).ToList();
        }
    }
}
