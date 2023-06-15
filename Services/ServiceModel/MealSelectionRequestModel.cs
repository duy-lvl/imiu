using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class MealSelectionRequestModel
    {
        public string MealId { get; set; }
        public bool IsFavourite { get; set; }

    }
}
