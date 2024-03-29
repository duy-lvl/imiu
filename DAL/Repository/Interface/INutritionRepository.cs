﻿using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace DAL.Repository.Interface;

public interface INutritionRepository
{
    Nutrition? GetByName(string name);
    Nutrition GetNutritionBaseOnNutritionFact(Guid nutritionID);
    List<Nutrition> GetAll();
}