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
    public class DirectionRepository : IDirectionRepository
    {
		protected readonly ImiuDbContext _context;
		protected readonly DbSet<Direction> _dbSet;
		public DirectionRepository(ImiuDbContext context)
		{
			_context = context;
			_dbSet = context.Set<Direction>();
		}

        public List<Direction> GetDirectionsByMealID(Guid mealID)
        {
            return _dbSet.Where(d => d.MealId == mealID).OrderBy(d => d.StepNumber).ToList();
        }
    }
}
