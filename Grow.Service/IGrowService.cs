namespace Grow.Service
{
    using Grow.Model.Models;
    using System.Collections.Generic;
    using System.ServiceModel;
    using System.ServiceModel.Web;

    [ServiceContract]
    public interface IGrowService
    {
        #region Bank
        [OperationContract]
        [WebGet(UriTemplate = "Banks", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]
        List<BankModel> GetBanks();

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "Bank?id={id}", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]
        BankModel GetBank(long id);

        [OperationContract]
        [WebInvoke(Method = "PUT", UriTemplate = "AddBank/{code}/{description}", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]
        long AddBank(string code, string description);

        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "UpdateBank/{code}/{description}?id={id}", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]
        void UpdateBank(string code, string description, long id);

        [OperationContract]
        [WebInvoke(Method = "DELETE", UriTemplate = "DeleteBank?id={id}", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]
        void DeleteBank(long id);
        #endregion

        #region Farm

        #endregion

        #region Light

        #endregion

        #region Plant

        #endregion

        #region Seed

        #endregion

        #region TypeFarm

        #endregion

        #region TypeLight

        #endregion

        #region Variaty

        #endregion

        #region VariatySeed

        #endregion

        #region Pruebas
        [OperationContract]
        [WebGet(UriTemplate = "Pruebas", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]
        string Pruebas();
        #endregion
    }
}
