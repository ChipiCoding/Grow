namespace Grow.Business.Interfaces
{
    using Model.Models;
    using System.Collections.Generic;

    public interface IBankBusiness
    {
        BankModel GetBank(long id);
        List<BankModel> GetBanks();
        long CreateBank(string code, string description);
        void DeleteBank(long id);
        void UpdateBank(long id, string code, string description);
    }
}
