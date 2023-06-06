using DAL.Entities;

namespace DAL.Repository.Interface;

public interface ISubscriptionRepository
{
    Subscription GetById(Guid id);
    List<Subscription> GetAll();
}