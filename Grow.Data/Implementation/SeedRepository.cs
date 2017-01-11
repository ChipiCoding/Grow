namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;

    public class SeedRepository : Repository<SeedModel, Seed>, ISeedRepository
    {
        private SeedModel MapToModel(Seed entity)
        {
            if (entity == null)
                return null;

            return Map<Seed, SeedModel>(entity);
        }
    }
}
