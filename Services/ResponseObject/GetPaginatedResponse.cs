using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace Services.JsonResult;

public class GetPaginatedResponse<T> : ResponseObject
{
    public T Data { get; set; }
    public MetaData metaData { get; set; }
    public class MetaData
    {
        public string SortBy { get; set; }
        public object FilterBy { get; set; }
        public string FilterValue { get; set; }
        public string TotalPage { get; set; }
    }
}