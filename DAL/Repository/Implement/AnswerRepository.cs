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
        private ITagRepository _tagRepository;
        public AnswerRepository(ImiuDbContext context, ITagRepository tagRepository)
        {
            _context = context;
            _dbSet = context.Set<Answer>();
            _tagRepository = tagRepository;
        }
        public List<Answer> GetAnswersByQuestionID(Guid questionID)
        {
            Tag? tag = null;
            var list =  _dbSet.Where(a => a.QuestionId == questionID).ToList();
            foreach (var answer in list)
            {
                tag = _tagRepository.GetTagByAnswerID(answer.TagId);
                answer.Tag = tag;
            }
            return list;
        }
    }
}
