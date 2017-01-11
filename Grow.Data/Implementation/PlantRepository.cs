namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;

    public class PlantRepository : Repository<PlantModel, Plant>, IPlantRepository
    {
        private PlantModel MapToModel(Plant entity)
        {
            if (entity == null)
                return null;

            return Map<Plant, PlantModel>(entity);
        }
    }
}
