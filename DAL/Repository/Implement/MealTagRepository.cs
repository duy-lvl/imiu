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
    public class MealTagRepository : IMealTagRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<MealTag> _dbSet;
        public MealTagRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<MealTag>();
        }

        public List<MealTag> GetMealTagsByMealID(Guid mealID)
        {
            return _dbSet.Where(mt => mt.MealId == mealID).ToList();
        }
    }
}
