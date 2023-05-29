using System.ComponentModel.DataAnnotations;

namespace DAL.Entities;

public class Question
{
    [Key]
    public Guid id { get; set; }
    public string Content { get; set; }
    public int Index { get; set; }

    public List<Answer> Answers { get; set; }
}