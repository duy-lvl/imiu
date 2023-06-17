

using DAL.Enum;

namespace Services.ServiceModel;

public class TransactionRequestModel
{
    public Guid Id { get; set; }
    public Guid AccountId { get; set; }
    public string DateTime { get; set; }
    public double Value { get; set; }
    public string TransactionCode { get; set; }
    public string Status { get; set; }
}