namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;

    public class FarmRepository : Repository<FarmModel, Farm>, IFarmRepository
    {
        private FarmModel MapToModel(Farm entity)
        {
            if (entity == null)
                return null;

            return Map<Farm, FarmModel>(entity);
        }
    }
}
