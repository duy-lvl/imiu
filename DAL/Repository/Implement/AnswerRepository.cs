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
    public class AnswerRepository : IAnswerRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<Answer> _dbSet;
        public AnswerRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<Answer>();
        }
        public List<Answer> GetAnswersByQuestionID(Guid questionID)
        {
            return _dbSet.Where(a => a.QuestionId == questionID).ToList();
        }
    }
}
