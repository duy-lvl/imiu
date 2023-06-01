using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class MealSelectionModel
    {
        public Guid Id { get; set; }

        [Required(ErrorMessage = "Select date is required")]

        public DateTime SelectDate { get; set; }

        public AccountModel Account { get; set; }

        public List<MealSelectionItemModel> PlansMealSelectionItems { get; set; }
    }
}
