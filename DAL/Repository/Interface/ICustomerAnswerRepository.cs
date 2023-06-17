using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository.Interface
{
    public interface ICustomerAnswerRepository
    {
        void CreateCustomerAnswer(CustomerAnswer customerAnswer);
        List<CustomerAnswer> GetCustomerAnswersByCustomerID(Guid id);
        void DeleteCustomerAnswer(CustomerAnswer customerAnswer);
        List<Guid?> GetCustomerAnswerTagsByCustomerId(Guid id);
    }
}
