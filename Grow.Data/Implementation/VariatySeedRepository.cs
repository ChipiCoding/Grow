namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;

    public class VariatySeedRepository : Repository<VariatySeedModel, VariatySeed>, IVariatySeedRepository
    {
        private VariatySeedModel MapToModel(VariatySeed entity)
        {
            if (entity == null)
                return null;

            return Map<VariatySeed, VariatySeedModel>(entity);
        }
    }
}
