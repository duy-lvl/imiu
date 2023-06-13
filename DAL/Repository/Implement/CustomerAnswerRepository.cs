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

        public List<CustomerAnswer> GetCustomerAnswersByCustomerID(Guid id)
        {
            return _dbSet.Include(ca=>ca.Answer)
                .Include(ca => ca.Answer.Tag)
                .Where(cs => cs.AccountId == id).ToList();
        }

        public void UpdateCustomerAnswer(CustomerAnswer customerAnswer)
        {
            CustomerAnswer temp = _dbSet.Where(cs => cs.Id == customerAnswer.Id).FirstOrDefault(); ;
            if (temp != null)
            {
                temp.AnswerId = customerAnswer.AnswerId;
                temp.Value = customerAnswer.Value;
                _dbSet.Update(temp);
            }
        }

        public List<Guid> GetCustomerAnswerTagsByCustomerId(Guid id)
        {
            var answers = _dbSet.Include(ca => ca.Answer)
                .Where(ca => ca.AccountId == id).ToList();
            var tags = new List<Guid>();
            foreach (var answer in answers)
            {
                tags.Add(answer.Answer.TagId);
            }

            return tags;
        }
    }
}
