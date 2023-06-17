﻿using System;
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


        public decimal Value { get; set; }

        public NutritionModel Nutrition { get; set; }

        public MealModel Meal { get; set; }
    }
}
