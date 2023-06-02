using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using DAL.Enum;

namespace DAL.Entities;

public class Plan
{
    [Key]
    public Guid Id { get; set; }

    [ForeignKey(nameof(Account))]
    public Guid AccountId { get; set; }

    [ForeignKey(nameof(Subcription))]
    public Guid SubcriptionId { get; set; }

    public DateTime StartDate { get; set; }
    public DateTime EndDate { get; set; }
    public int Total { get; set; }
    public PlanStatus Status { get; set; }
    public Account Account { get; set; }
    public Subscription Subcription { get; set; }
}