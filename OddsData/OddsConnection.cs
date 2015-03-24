using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OddsData
{
   public static class OddsConnection
    {
       public static string GetConnectionString()
       {
           return "Data Source=111.118.250.186;Initial Catalog=OddsChecker;User ID=sa;Password=Syno2009; Pooling=False;";
       }
    }
}
