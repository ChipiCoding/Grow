namespace Grow.Data.Implementation
{
    using EmitMapper;
    using EmitMapper.MappingConfiguration;
    using Entities;
    using Interfaces;
    using System.Data.Entity;

    /// <summary>
    /// This class contains direct methods to the database
    /// </summary>
    /// <typeparam name="TM">Model type</typeparam>
    /// <typeparam name="TE">Entity type</typeparam>    
    public class Repository<TM, TE> : IRepository<TM>
        where TM : class
        where TE : class
    {
        public long Create(TM model)
        {
            using (var ctx = new GROWEntities())
            {
                var target = Map<TM, TE>(model);
                ctx.Set<TE>().Add(target);
                ctx.SaveChanges();

                Bank bank = target as Bank;
                Farm farm = target as Farm;
                Ligth light = target as Ligth;
                Plant plant = target as Plant;
                Seed seed = target as Seed;
                TypeFarm typeFarm = target as TypeFarm;
                TypeLight typeLight = target as TypeLight;
                Variaty variaty = target as Variaty;
                VariatySeed variatySeed = target as VariatySeed;

                if (bank != null)
                {
                    return bank.id;
                }
                else if (farm != null)
                {
                    return farm.id;
                }
                else if (light != null)
                {
                    return light.id;
                }
                else if (plant != null)
                {
                    return plant.id;
                }
                else if (seed != null)
                {
                    return seed.id;
                }
                else if (typeFarm != null)
                {
                    return typeFarm.id;
                }
                else if (typeLight != null)
                {
                    return typeLight.id;
                }
                else if (variaty != null)
                {
                    return variaty.id;
                }
                else if (variatySeed != null)
                {
                    return variatySeed.id;
                }
                else
                    return 0;
            }
        }

        //public void CreateMany(List<TM> models)
        //{
        //    using (var ctx = new GROWEntities())
        //    {
        //        IList<TE> entities = new List<TE>();
        //        models.ForEach(delegate (TM aux)
        //        {
        //            entities.Add(Map<TM, TE>(aux));
        //        });
        //        ctx.Set<TE>().AddRange(entities);
        //        ctx.SaveChanges();
        //    }
        //}

        public void Delete(TM model)
        {
            using (var ctx = new GROWEntities())
            {
                ctx.Entry(Map<TM, TE>(model)).State = EntityState.Deleted;
                ctx.SaveChanges();
            }
        }

        //public IEnumerable<TM> GetAll()
        //{
        //    using (var ctx = new GROWEntities())
        //    {
        //        return ctx.Set<TE>().ToList().Select(e => Map<TE, TM>(e, null));
        //    }
        //}

        public void Update(TM model)
        {
            using (var ctx = new GROWEntities())
            {
                ctx.Entry(Map(model)).State = EntityState.Modified;
                ctx.SaveChanges();
            }
        }

        /// <typeparam name="TS">Source type</typeparam>
        /// <typeparam name="TT">Target type</typeparam>
        /// <returns>Source mapped to target</returns>
        protected virtual TT Map<TS, TT>(TS source, string[] ignore = null)
        {
            var inst = ObjectMapperManager.DefaultInstance;

            return ignore == null ? inst.GetMapper<TS, TT>().Map(source)
                                  : inst.GetMapper<TS, TT>(new DefaultMapConfig()
                                        .IgnoreMembers<TS, TT>(ignore)).Map(source);
        }

        protected virtual TE Map(TM model)
        {
            return Map<TM, TE>(model);
        }

    }
}
