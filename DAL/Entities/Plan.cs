using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class Plan
{
    [Key]
    public Guid Id { get; set; }

    [ForeignKey(nameof(Account))]
    public Guid AccountId { get; set; }

    [ForeignKey(nameof(AccountType))]
    public Guid AccountTypeId { get; set; }

    public DateTime StartDate { get; set; }
    public DateTime EndDate { get; set; }
    public int Total { get; set; }
    
    public Account Account { get; set; }
    public AccountType AccountType { get; set; }
}