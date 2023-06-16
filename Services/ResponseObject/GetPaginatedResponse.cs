using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace Services.JsonResult;

public class GetPaginatedResponse<T> : ResponseObject
{
    public T Data { get; set; }
    public MetaData metaData { get; set; }
    public class MetaData
    {
        public int CurrentPage { get; set; }
        public int TotalPage { get; set; }
    }
}