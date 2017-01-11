namespace Grow.Service.Interfaces
{
    using Model.Models;
    using System.Collections.Generic;
    using System.ServiceModel;

    [ServiceContract]
    public interface IBankService
    {
        [OperationContract]
        List<BankModel> ListarBancos();
    }
}
