namespace Grow.Data.Interfaces
{
    #region Usings

    using System.Collections.Generic;

    #endregion

    public interface IRepository<T> where T : class
    {
        #region Contracts

        long Create(T model);

        void Update(T model);

        void Delete(T model);

        List<T> Get();

        T GetByID(long ID);

        #endregion
    }
}
