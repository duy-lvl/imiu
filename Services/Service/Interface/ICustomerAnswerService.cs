using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service.Interface
{
    public interface ICustomerAnswerService
    {
        void CreateCustomerAnswers(List<CustomerAnswerModel> customerAnswers);
        List<CustomerAnswerModel> GetCustomerAnswersByCustomerID(Guid id);
        void UpdateCustomerAnswers(List<CustomerAnswerModel> customerAnswers);
    }
}
