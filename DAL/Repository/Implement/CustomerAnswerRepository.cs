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
    public class CustomerAnswerRepository : ICustomerAnswerRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<CustomerAnswer> _dbSet;
        public CustomerAnswerRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<CustomerAnswer>();
        }

        public void CreateCustomerAnswer(CustomerAnswer customerAnswer)
        {
            _dbSet.Add(customerAnswer);
        }

        public void DeleteCustomerAnswer(CustomerAnswer customerAnswer)
        {
            _dbSet.Remove(customerAnswer);
        }

        public List<CustomerAnswer> GetCustomerAnswersByCustomerID(Guid id)
        {
            return _dbSet.Where(cs => cs.AccountId == id).ToList();
        }

        
    }
}
