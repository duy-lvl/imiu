using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class PlanModel
    {
        public Guid Id { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int Total { get; set; }

        public AccountModel Account { get; set; }
        public LoginResponseModel.SubcriptionModel Subcription { get; set; }
    }
}
