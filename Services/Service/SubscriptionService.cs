using DAL.Entities;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class SubscriptionService : ISubscriptionService
{
    private readonly ISubscriptionRepository _subscriptionRepository;
    private readonly ICustomMapper _customMapper;

    public SubscriptionService(ISubscriptionRepository subscriptionRepository, ICustomMapper customMapper)
    {
        _subscriptionRepository = subscriptionRepository;
        _customMapper = customMapper;
    }

    public ResponseObject GetAll()
    {
        var list = _subscriptionRepository.GetAll();
        var subscriptions = _customMapper.Map(list);
        var response = new GetRequestResponse<List<SubscriptionModel>>()
        {
            Data = subscriptions,
        };
        if (list.Count > 0)
        {
            response.Message = "Thành công";
            response.Status = 200;
        }
        else
        {
            response.Message = "Không có dữ liệu";
            response.Status = 500;
        }

        return response;
    }
}