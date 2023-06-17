using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class NutritionFactModel
    {
        public Guid Id { get; set; }

        public Guid NutritionId { get; set; }

        public string Name { get; set; }

        public decimal Value { get; set; }
        public string Code { get; set; }
    }
}
