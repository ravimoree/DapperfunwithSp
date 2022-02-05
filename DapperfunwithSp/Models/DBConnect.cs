using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DapperfunwithSp.Models
{
    public class DBConnect
    {
        public static String ConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
        }
    }
}