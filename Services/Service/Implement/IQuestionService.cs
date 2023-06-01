using DAL.Entities;
using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service.Interface
{
    public interface IQuestionService
    {
        List<QuestionModel> GetQuestions();
    }
}
