namespace Services.ServiceModel;

public class RegisterTokenModel
{
    public string Token { get; set; }
    public DateTime Expiration { get; set; }
}