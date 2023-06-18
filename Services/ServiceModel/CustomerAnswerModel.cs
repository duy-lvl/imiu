using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class CustomerAnswerModel
    {
        public int Value { get; set; }

        public Guid AnswerId { get; set; }
        public Guid AccountId { get; set; }
    }
}
