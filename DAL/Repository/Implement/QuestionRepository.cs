using DAL.Entities;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository
{
    public class QuestionRepository : IQuestionRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<Question> _dbSet;
        public QuestionRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<Question>();
        }
        public List<Question> GetAllQuestions()
        {
            return _dbSet.Include(a => a.Answers).OrderBy(a => a.Index).ToList();
        }

    }
}
