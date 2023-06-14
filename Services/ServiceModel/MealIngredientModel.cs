using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class MealIngredientModel
    {
        public Guid Id { get; set; }

        public decimal Quantity { get; set; }

        public string Description { get; set; }

        public MealModel Meal { get; set; }
        public IngredientModel Ingredient { get; set; }
    }
}
