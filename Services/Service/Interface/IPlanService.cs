using Services.JsonResult;
using Services.ServiceModel;

namespace Services.Service.Interface;

public interface IPlanService
{
    ResponseObject CreatePlan(CreatePlanModel createPlanModel);
}