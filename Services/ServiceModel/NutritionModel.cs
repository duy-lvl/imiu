using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class NutritionModel
    {
        public Guid Id { get; set; }

        public string Name { get; set; }

        public string Unit { get; set; }

        public List<NutritionFactModel> NutritionFacts { get; set; }
    }
}
