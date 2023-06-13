using DAL.Enum;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Entities;

namespace Services.ServiceModel
{
    public class MealModel
    {
        public string Name { get; set; }
        public string Difficulty { get; set; }
        public List<Tag> Tags { get; set; }
    }
}
