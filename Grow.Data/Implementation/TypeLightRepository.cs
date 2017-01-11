namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;

    public class TypeLightRepository : Repository<TypeLightModel, TypeLight>, ITypeLightRepository
    {
        private TypeLightModel MapToModel(TypeLight entity)
        {
            if (entity == null)
                return null;

            return Map<TypeLight, TypeLightModel>(entity);
        }
    }
}
