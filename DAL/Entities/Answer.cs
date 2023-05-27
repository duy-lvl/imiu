using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class Answer
{
    [Key]
    public Guid Id { get; set; }

    public string Content { get; set; }
    
    [ForeignKey(nameof(Question))]
    public Guid QuestionId { get; set; }
    
    [ForeignKey(nameof(Tag))]
    public Guid TagId { get; set; }
    
    public Question Question { get; set; }
    public Tag Tag { get; set; }
}