namespace Grow.Service.Contracts
{
    #region Usings

    using Data.Model.Entities;
    using ResponseMessages;
    using System.Collections.Generic;
    using System.ServiceModel;
    using System.ServiceModel.Web;

    #endregion

    [ServiceContract]
    public interface IGrowService
    {
        #region Operation contracts

        [OperationContract]
        [WebGet(UriTemplate = "Banks", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]
        List<GetBanksResponse> GetBanks();

        [OperationContract]
        [WebGet(UriTemplate = "echo", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]
        string Pruebas();

        #endregion
    }
}
