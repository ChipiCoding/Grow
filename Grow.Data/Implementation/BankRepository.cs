namespace Grow.Data.Implementation
{
    using Entities;
    using Interfaces;
    using Model.Models;
    using System.Collections.Generic;
    using System.Linq;

    public class BankRepository : Repository<BankModel, Bank>, IBankRepository
    {
        private BankModel MapToModel(Bank entity)
        {
            if (entity == null)
                return null;

            return Map<Bank, BankModel>(entity);
        }

        public List<BankModel> GetBanks()
        {
            using (var ctx = new GROWEntities())
            {
                try
                {
                    List<BankModel> lista = ctx.Database.SqlQuery<Bank>("Select [id], [code],[description] From Bank").Select(MapToModel).ToList();
                    if (lista != null)
                    {
                        lista.ForEach(delegate (BankModel bank)
                        {
                            bank.Seeds = ctx.Database.SqlQuery<SeedModel>(string.Format("Select * From Seed Where [idBank] = {0}", bank.id)).ToList();
                        });
                    }                    
                    return lista;
                }
                catch (System.Exception ex)
                {

                    throw;
                }
            }
        }

        public BankModel GetBank(long id)
        {
            using (var ctx = new GROWEntities())
            {
                return ctx.Database.SqlQuery<Bank>(string.Format("Select * From Bank Where id = {0}", id)).Select(MapToModel).FirstOrDefault();
            }
        }
    }
}
