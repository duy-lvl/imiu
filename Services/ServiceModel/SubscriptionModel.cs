using DAL.Enum;

namespace Services.ServiceModel;

public class SubscriptionModel
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public int Value { get; set; }
    public string Duration { get; set; }
    public List<SubscriptionDetailModel> SubscriptionDetails { get; set; }
    public class SubscriptionDetailModel
    {
        public string Detail { get; set; }
        public bool Status { get; set; }
    }
}