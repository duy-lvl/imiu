
using DAL.Entities;
using DAL.Enum;
using DAL.Repository.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class PlanService : IPlanService
{
    private readonly IPlanRepository _planRepository;
    private readonly ITransactionRepository _transactionRepository;
    private readonly ISubscriptionRepository _subscriptionRepository;

    public PlanService(IPlanRepository planRepository, ITransactionRepository transactionRepository, ISubscriptionRepository subscriptionRepository)
    {
        _planRepository = planRepository;
        _transactionRepository = transactionRepository;
        _subscriptionRepository = subscriptionRepository;
    }
    /// <summary>
    /// Create new plan
    /// </summary>
    /// <param name="createPlanModel"></param>
    /// <returns></returns>
    public ResponseObject CreatePlan(CreatePlanModel createPlanModel)
    {
        var accountId = Guid.Parse(createPlanModel.AccountId);
        var response = new PostRequestResponse();
        try
        {
            var currentPlan = _planRepository.GetCurrentPlanByCustomerId(accountId);
            
            var transaction = new Transaction()
            {
                Id = Guid.NewGuid(),
                AccountId = accountId,
                DateTime = DateTime.Now,
                Status = TransactionStatus.PENDING,
                TransactionCode = createPlanModel.TransactionCode
            };
            
            var subscriptionId = Guid.Parse(createPlanModel.SubscriptionId);
            var subscription = _subscriptionRepository.GetById(subscriptionId);
            
            if (currentPlan == null)
            {
                SubscribeNewPlan(accountId, subscription, transaction, response);
            }
            else
            {
                if (subscription.Code == "PREMIUM")
                {
                    UpgradePremium(currentPlan, accountId, subscription, transaction, response);
                }
                else switch (currentPlan.Subcription.Code)
                {
                    case "CLASSIC":
                    
                        if (subscription.Code == "CLASSIC")
                        {
                            ExtendClassic(currentPlan, accountId, subscription, transaction, response);
                        }
                        break;
                    case "FREE":
                    
                        if (subscription.Code == "CLASSIC")
                        {
                            UpgradeClassic(currentPlan, accountId, subscription, transaction, response);
                        }
                        break;
                    default:
                
                        response.Message = $"Bạn hiện tại đang dùng gói {currentPlan.Subcription.Name}";
                        response.Status = 400;
                        break;
                }
            }
            
            
            
            return response;
        }
        catch
        {
            return new PostRequestResponse()
            {
                Message = "Đăng kí thất bại",
                Status = 400
            };
        }

        
    }

    private void UpgradePremium(Plan currentPlan, Guid accountId, Subscription subscription, Transaction transaction, ResponseObject response)
    {
        _planRepository.InactivatePlan(currentPlan);
        Plan newPlan = new Plan()
        {
            Id = new Guid(),
            AccountId = accountId,
            StartDate = DateTime.Now,
            EndDate = null,
            Status = PlanStatus.ACTIVE,
            SubcriptionId = subscription.Id,
            Total = subscription.Value
        };
        _planRepository.CreatePlan(newPlan);
        transaction.Value = subscription.Value;
        _transactionRepository.Create(transaction);
        response.Message = $"Bạn đã nâng cấp gói {currentPlan.Subcription.Name} thành {subscription.Name}";
        response.Status = 201;
    }
    
    private void ExtendClassic(Plan currentPlan, Guid accountId, Subscription subscription, Transaction transaction, ResponseObject response)
    {
        var newPlan = new Plan()
        {
            Id = new Guid(),
            AccountId = accountId,
            StartDate = currentPlan.EndDate.Value,
            EndDate = currentPlan.EndDate.Value.AddDays(30),
            Status = PlanStatus.ACTIVE,
            SubcriptionId = subscription.Id,
            Total = subscription.Value
        };
        _planRepository.CreatePlan(newPlan);
        transaction.Value = subscription.Value;
        _transactionRepository.Create(transaction);
        response.Message = $"Bạn đã gia hạn gói {subscription.Name}";
        response.Status = 201;
    }

    private void UpgradeClassic(Plan currentPlan, Guid accountId, Subscription subscription, Transaction transaction, ResponseObject response)
    {
        var newPlan = new Plan()
        {
            Id = new Guid(),
            AccountId = accountId,
            StartDate = DateTime.Now,
            EndDate = DateTime.Now.AddDays(30),
            Status = PlanStatus.ACTIVE,
            SubcriptionId = subscription.Id,
            Total = subscription.Value
        };
        _planRepository.InactivatePlan(currentPlan);
        _planRepository.CreatePlan(newPlan);
        transaction.Value = subscription.Value;
        _transactionRepository.Create(transaction);
        response.Message = $"Bạn đã đăng kí gói {subscription.Name}";
        response.Status = 201;
    }
    
    private void SubscribeNewPlan(Guid accountId, Subscription subscription, Transaction transaction, ResponseObject response)
    {
        var newPlan = new Plan()
        {
            Id = new Guid(),
            AccountId = accountId,
            StartDate = DateTime.Now,
            EndDate = subscription.Duration == Duration.MONTHLY ? DateTime.Now.AddDays(30) : null,
            Status = PlanStatus.ACTIVE,
            SubcriptionId = subscription.Id,
            Total = subscription.Value
        };
        
        _planRepository.CreatePlan(newPlan);
        transaction.Value = subscription.Value;
        _transactionRepository.Create(transaction);
        response.Message = $"Bạn đã đăng kí gói {subscription.Name}";
        response.Status = 201;
    }
}