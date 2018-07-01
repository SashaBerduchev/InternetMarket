using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace InternetMarket
{
    [ServiceContract]
    interface IContract
    {
        [OperationContract]
        string LoadCatStream();
        [OperationContract]
        string LoadBrendStream();
        [OperationContract]
        string LoadNameProdStream();
    }
}
