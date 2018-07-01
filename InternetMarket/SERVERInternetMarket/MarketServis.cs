using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVERInternetMarket
{
    class MarketServis : IContract
    {
        List<Category> categorydata;
        List<Brend> brenddata;
        List<NameProdact> nameProdactsdata;
        string IContract.LoadCatStream()
        {
            InternetMarketEDMXContainer contex = new InternetMarketEDMXContainer();
            categorydata = contex.CategorySet.ToList();
            return categorydata.ToString(); 
        }

        string IContract.LoadBrendStream()
        {
            InternetMarketEDMXContainer contex = new InternetMarketEDMXContainer();
            brenddata = contex.BrendSet.ToList();
            return brenddata.ToString();
        }
        string IContract.LoadNameProdStream()
        {
            InternetMarketEDMXContainer contex = new InternetMarketEDMXContainer();
            nameProdactsdata = contex.NameProdactSet.ToList();
            return nameProdactsdata.ToString();
        }

    }
}
