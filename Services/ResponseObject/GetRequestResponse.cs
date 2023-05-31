namespace Services.JsonResult;

public class GetRequestResponse<T> : ResponseObject
{
    public T Data { get; set; }

    public int Status { get; set; }
}