namespace Grow.Data.Interfaces
{
    using System.Collections.Generic;

    public interface IRepository<T> where T : class
    {
        //IEnumerable<T> GetAll();
        long Create(T model);
        void Update(T model);
        void Delete(T model);
        //void CreateMany(List<T> models);
    }
}
