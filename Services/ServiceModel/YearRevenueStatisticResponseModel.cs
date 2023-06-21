namespace Services.ServiceModel;

public class YearRevenueStatisticResponseModel
{
    public string Type { get; set; }
    public List<Data> data { get; set; }

    public class Data
    {
        public int Month { get; set; }
        public int Transaction { get; set; }
    }
}