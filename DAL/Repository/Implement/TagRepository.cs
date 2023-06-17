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
    public class TagRepository : ITagRepository
    {
        protected readonly ImiuDbContext _context;
        protected readonly DbSet<Tag> _dbSet;
        public TagRepository(ImiuDbContext context)
        {
            _context = context;
            _dbSet = context.Set<Tag>();
        }

        public Tag GetTagByAnswerID(Guid? answerID)
        {
            return _dbSet.FirstOrDefault(t => t.Id == answerID);
        }

        public List<Tag> GetAllTags()
        {
            return _dbSet.ToList();
        }

        public List<Tag> GetAllTagsExceptDiseases()
        {
            return _dbSet.Where(t => !t.Code.StartsWith("D-")).ToList();
        }
    }
}
