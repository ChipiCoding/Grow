namespace Grow.Data.Implementation
{
    #region Usings

    using System;
    using Interfaces;
    using Model.Entities;
    using System.Collections.Generic;
    using System.Linq;
    using System.Data.Entity;

    #endregion

    public class BankRepositoryManager : IRepository<Bank>
    {
        #region IRepository Members

        public long Create(Bank model)
        {
            //TODO: [Juan.Orozco] must to be implemented
            throw new NotImplementedException();
        }

        public void Update(Bank model)
        {
            //TODO: [Juan.Orozco] must to be implemented
            throw new NotImplementedException();
        }

        public void Delete(Bank model)
        {
            //TODO: [Juan.Orozco] must to be implemented
            throw new NotImplementedException();
        }

        public List<Bank> Get()
        {
            using (var ctx = new GROWEntities())
            {
                return ctx.Banks.Include(bank => bank.Seeds).ToList();
            }
        }

        public Bank GetByID(long ID)
        {
            using (var ctx = new GROWEntities())
            {
                return ctx.Banks.Where(bank => bank.id.Equals(ID)).Include(bank => bank.Seeds).FirstOrDefault();
            }
        }

        #endregion
    }
}