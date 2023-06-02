using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace Services.JsonResult;

public class GetPaginatedResult<T> : ResponseObject
{
    public T Data { get; set; }
    public MetaData metaData { get; set; }
    public class MetaData
    {
        public string SortBy { get; set; }
        public string FilterBy { get; set; }
        public string FilterValue { get; set; }
        public string TotalPage { get; set; }
    }
}