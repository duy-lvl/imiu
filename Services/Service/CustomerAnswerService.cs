using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.Service.Interface;
using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service.Implement
{
    public class CustomerAnswerService : ICustomerAnswerService
    {
        private readonly ICustomerAnswerRepository _customerAnswerRepository;
        private ICustomMapper _mapper;

        public CustomerAnswerService(ICustomerAnswerRepository customerAnswerRepository, ICustomMapper mapper)
        {
            _customerAnswerRepository = customerAnswerRepository;
            _mapper = mapper;
        }

        public void CreateCustomerAnswers(List<CustomerAnswerModel> customerAnswers)
        {
            foreach (var customerAnswer in customerAnswers)
            {
                customerAnswer.Id = new Guid();
                _customerAnswerRepository.CreateCustomerAnswer(_mapper.Map(customerAnswer));
            }
            
        }

        public List<CustomerAnswerModel> GetCustomerAnswersByCustomerID(Guid id)
        {
            var list = _customerAnswerRepository.GetCustomerAnswersByCustomerID(id);
            List<CustomerAnswerModel> result = new List<CustomerAnswerModel>();
            foreach (var customerAnswer in list)
            {
                result.Add(_mapper.Map(customerAnswer));
            }
            return result;
        }

        public void UpdateCustomerAnswers(Guid accountID, List<CustomerAnswerModel> customerAnswers)
        {
            var list = _customerAnswerRepository.GetCustomerAnswersByCustomerID(accountID);
            foreach (var customerAnswer in list)
            {
                _customerAnswerRepository.DeleteCustomerAnswer(customerAnswer);
            }
            foreach (var customerAnswer in customerAnswers)
            {
                _customerAnswerRepository.CreateCustomerAnswer(_mapper.Map(customerAnswer));
            }
        }
    }
}
