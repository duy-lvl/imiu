using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class CustomerAnswer
{
    [Key]
    public Guid Id { get; set; }
    
    [ForeignKey(nameof(Answer))]
    public Guid AnswerId { get; set; }
    
    [ForeignKey(nameof(Account))]
    public Guid AccountId { get; set; }
    
    public int Value { get; set; }
    
    public Answer Answer { get; set; }
    public Account Account { get; set; }
}