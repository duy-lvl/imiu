using System.ComponentModel.DataAnnotations;
using DAL.Enum;

namespace DAL.Entities;

public class AccountDetail
{
    [Key]
    public Guid Id { get; set; }

    public Guid TagId { get; set; }
    public Guid AccountId { get; set; }
    public int UserAmount { get; set; }
    public int MinimumCalories { get; set; }
    public int MaximumCalories { get; set; }
    public DateTime StartDate { get; set; }
    public DateTime EndDate { get; set; }
    public int Total { get; set; }
    public Difficulty MaximumDifficulty { get; set; }
}