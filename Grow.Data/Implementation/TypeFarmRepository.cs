namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;

    public class TypeFarmRepository : Repository<TypeFarmModel, TypeFarm>, ITypeFarmRepository
    {
        private TypeFarmModel MapToModel(TypeFarm entity)
        {
            if (entity == null)
                return null;

            return Map<TypeFarm, TypeFarmModel>(entity);
        }
    }
}
