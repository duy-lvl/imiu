using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.Service.Interface;
using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service
{
    public class MealService : IMealService
    {
        private readonly IMealRepository _mealRepository;
        private ICustomMapper _mapper;

        public MealService(IMealRepository mealRepository, ICustomMapper mapper)
        {
            _mealRepository = mealRepository;
            _mapper = mapper;
        }

        public MealModel GetMealByMealID(Guid mealID)
        {
            return _mapper.Map(_mealRepository.GetMealByMealID(mealID));
        }
    }
}
