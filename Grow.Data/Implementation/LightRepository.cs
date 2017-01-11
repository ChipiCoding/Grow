namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;

    public class LightRepository : Repository<LightModel, Ligth>, ILightRepository
    {
        private LightModel MapToModel(Ligth entity)
        {
            if (entity == null)
                return null;

            return Map<Ligth, LightModel>(entity);
        }
    }
}
