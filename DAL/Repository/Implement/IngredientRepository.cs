
﻿using DAL.Entities;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository.Implement
{
    public class IngredientRepository : IIngredientRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<Ingredient> _dbSet;
        public IngredientRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<Ingredient>();
        }

        public Ingredient GetIngredientBaseOnMealIngredient(Guid ingredientId)
        {
            return _dbSet.FirstOrDefault(i => i.Id == ingredientId);
        }
    }
}