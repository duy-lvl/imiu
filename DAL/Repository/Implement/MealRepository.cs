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
    public class MealRepository : IMealRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<Meal> _dbSet;
        public MealRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<Meal>();
        }

        public Meal GetMealByMealID(Guid mealID)
        {
            var meal = _dbSet.FirstOrDefault(m => m.Id == mealID);
            return _dbSet.FirstOrDefault(m => m.Id == mealID);
        }
    }
}
