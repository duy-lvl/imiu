using DAL.Enum;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class MealDetailModel
    {
        public Guid Id { get; set; }
        [Required(ErrorMessage = "Name is required")]

        public string Name { get; set; }

        public string Summary { get; set; }
        [Required(ErrorMessage = "Cooking time is required")]

        public int CookingTime { get; set; }
        [Required(ErrorMessage = "Difficulty is required")]

        public Difficulty Difficulty { get; set; }

        public string ImageUrl { get; set; }

        public List<NutritionFactModel> NutritionFacts { get; set; }
        public List<MealTagModel> MealTags { get; set; }
        public List<DirectionModel> Directions { get; set; }
        public List<MealIngredientModel> MealIngredients { get; set; }
    }
}
