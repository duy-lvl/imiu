using System.ComponentModel.DataAnnotations;

namespace Services.ServiceModel;

public class TagModel
{
    public Guid Id { get; set; }
    [Required(ErrorMessage = "Name is required")]
    public string Name { get; set; }
    [Required(ErrorMessage = "Code is required")]
    public string Code { get; set; }
}