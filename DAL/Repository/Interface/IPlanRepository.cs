using DAL.Entities;

namespace DAL.Repository.Interface;

public interface IPlanRepository
{
    List<Plan> GetAllByCustomerId(Guid id);
    Plan GetCurrentPlanByCustomerId(Guid id);

    void CreatePlan(Plan plan);

    void UpdatePlan(Plan plan);

    void ExtendPlan(Plan plan);
    Plan? GetLatestPlanByCustomerId(Guid id);
}