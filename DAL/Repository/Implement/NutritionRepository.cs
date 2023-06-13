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
    public class NutritionRepository : INutritionRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<Nutrition> _dbSet;
        public NutritionRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<Nutrition>();
        }

        public Nutrition GetNutritionBaseOnNutritionFact(Guid nutritionID)
        {
            return _dbSet.FirstOrDefault(n => n.Id == nutritionID);
        }
    }
}
