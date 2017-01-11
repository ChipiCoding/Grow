namespace Grow.Data.Interfaces
{
    using Grow.Model.Models;
    using System.Collections.Generic;

    public interface IBankRepository : IRepository<BankModel>
    {
        BankModel GetBank(long id);
        List<BankModel> GetBanks();
    }
}
