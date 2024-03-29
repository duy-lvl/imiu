﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DAL.Entities;

public class MealSelection
{
    [Key] 
    public Guid Id { get; set; }

    [ForeignKey(nameof(Account))] 
    public Guid AccountId;

    [Required(ErrorMessage = "Select date is required")]
    public DateTime SelectDate { get; set; }

    public Account Account { get; set; }
    [ForeignKey(nameof(Meal))]
    public Guid MealId { get; set; }
    public bool IsFavourite { get; set; }
    public Meal Meal { get; set; }
}