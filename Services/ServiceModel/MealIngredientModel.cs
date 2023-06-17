﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class MealIngredientModel
    {
        public Guid Id { get; set; }

        public string Name { get; set; }

        public string Unit { get; set; }
        public decimal Quantity { get; set; }
        public string Description { get; set; }
        public string ImgUrl { get; set; }
    }
}
