namespace DAL.Entities;
using Enum;
public class Transaction
{
    public Guid Id { get; set; }
    public Guid AccountId { get; set; }
    public DateTime DateTime { get; set; }
    public double Value { get; set; }
    public string TransactionCode { get; set; }
    public TransactionStatus Status { get; set; }
}