using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class DirectionModel
    {
        public Guid Id { get; set; }
        [Required(ErrorMessage = "Step number is required")]

        public int StepNumber { get; set; }
        [Required(ErrorMessage = "Instruction is required")]

        public string Instruction { get; set; }

        public string ImgUrl { get; set; }

        public MealModel Meal { get; set; }
    }
}
