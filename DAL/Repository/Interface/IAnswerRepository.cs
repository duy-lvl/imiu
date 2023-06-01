using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository.Interface
{
    public interface IAnswerRepository
    {
        List<Answer> GetAnswersByQuestionID(Guid questionID);
    }
}
