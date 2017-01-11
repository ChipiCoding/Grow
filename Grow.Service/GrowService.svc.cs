namespace Grow.Service
{
    using System.Collections.Generic;
    using Grow.Model.Models;
    using Business.Interfaces;
    using Business.Implementation;    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "GrowService" in code, svc and config file together.
    using System.ServiceModel;                                      // NOTE: In order to launch WCF Test Client for testing this service, please select GrowService.svc or GrowService.svc.cs at the Solution Explorer and start debugging.
    using System;

    [ServiceBehavior(IncludeExceptionDetailInFaults = true)]
    public class GrowService : IGrowService
    {

        #region Properties
        public IBankBusiness _Bank { get; set; }
        #endregion


        #region Bank
        public void DeleteBank(long id)
        {
            _Bank = new BankBusiness();
            _Bank.DeleteBank(id);
        }

        public BankModel GetBank(long id)
        {
            _Bank = new BankBusiness();
            return _Bank.GetBank(id);
        }

        public List<BankModel> GetBanks()
        {
            _Bank = new BankBusiness();
            return _Bank.GetBanks();
        }

        public void UpdateBank(string code, string description, long id)
        {
            _Bank = new BankBusiness();
            _Bank.UpdateBank(id, code, description);
        }

        public long AddBank(string code, string description)
        {
            _Bank = new BankBusiness();
            return _Bank.CreateBank(code, description);
        }

        public string Pruebas()
        {
            return "Método de pruebas";
        }


        #endregion
    }
}
