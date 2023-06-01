using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class MealSelectionItemModel
    {
        public Guid Id { get; set; }

        public MealSelectionModel MealSelection { get; set; }

        public MealModel Meal { get; set; }
    }
}
