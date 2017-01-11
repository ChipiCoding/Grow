namespace Grow.Business.Implementation
{
    using Data.Implementation;
    using Data.Interfaces;
    using Interfaces;
    using Model.Models;
    using System.Collections.Generic;
    using System;

    public class BankBusiness : IBankBusiness
    {
        public IBankRepository _Bank { get; set; }

        public long CreateBank(string code, string description)
        {
            _Bank = new BankRepository();
            return _Bank.Create(new BankModel { code = code, description = description });
        }

        public void DeleteBank(long id)
        {
            _Bank = new BankRepository();
            BankModel bank = _Bank.GetBank(id);
            if (bank != null)
                _Bank.Delete(bank);
        }

        public BankModel GetBank(long id)
        {
            _Bank = new BankRepository();
            return _Bank.GetBank(id);
        }

        public List<BankModel> GetBanks()
        {
            _Bank = new BankRepository();
            return _Bank.GetBanks();
        }

        public void UpdateBank(long id, string code, string description)
        {
            _Bank = new BankRepository();
            BankModel bank = _Bank.GetBank(id);
            if (bank != null)
            {
                bank.code = code;
                bank.description = description;
                _Bank.Update(bank);
            }
        }
    }
}
