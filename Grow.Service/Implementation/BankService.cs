namespace Grow.Service.Implementation
{
    using Business.Implementation;
    using Business.Interfaces;
    using Interfaces;
    using Model.Models;
    using System.Collections.Generic;

    public class BankService : IBankService
    {
        public IBankBusiness _Bank{ get; set; }

        public List<BankModel> ListarBancos()
        {
            _Bank = new BankBusiness();
            return new List<BankModel>();//_Bank.ListarBancos();
        }
    }
}
