namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;

    public class VariatyRepository : Repository<VariatyModel, Variaty>, IVariatyRepository
    {
        private VariatyModel MapToModel(Variaty entity)
        {
            if (entity == null)
                return null;

            return Map<Variaty, VariatyModel>(entity);
        }
    }
}
