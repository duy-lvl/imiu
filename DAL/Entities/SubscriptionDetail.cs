using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class SubscriptionDetail
{
    [Key]
    public Guid Id { get; set; }
    
    public string Detail { get; set; }
    
    public bool Status { get; set; }
    
    [ForeignKey(nameof(Subscription))]
    public Guid SubscriptionId { get; set; }
    public Subscription Subscription { get; set; }
}