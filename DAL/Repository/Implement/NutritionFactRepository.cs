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
    public class NutritionFactRepository : INutritionFactRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<NutritionFact> _dbSet;
        public NutritionFactRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<NutritionFact>();
        }

        public List<NutritionFact> GetNutritionFactsByMealID(Guid mealID)
        {
            return _dbSet.Where(nf => nf.MealId == mealID).ToList();
        }
    }
}
