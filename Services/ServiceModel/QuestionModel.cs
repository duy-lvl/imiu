using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class QuestionModel
    {
        public Guid id { get; set; }
        public string Content { get; set; }
        public int Index { get; set; }

        public List<AnswerModel> Answers { get; set; }
    }
}
