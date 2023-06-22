using DAL.Enum;

namespace Services.ServiceModel;

public class UpdateAccountModel
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public DateTime Dob { get; set; }
}