using DAL.Entities;

namespace DAL.Repository.Interface;

public interface IPlanRepository
{
    List<Plan> GetAllByCustomerId(Guid id);
    Plan GetCurrentPlanByCustomerId(Guid id);
}