using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace As_Your_Need_services.Vendor
{
    public class MyConnection
    {
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader dr;

        public void cnopen()
        {
            cn.Open();
        }
        public void cnclose()
        {
            cn.Close();
        }
    }
}