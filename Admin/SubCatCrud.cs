using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace As_Your_Need_services.Admin
{
    public class SubCatCrud
    {
        MyConnection MyCon = new MyConnection();

        public void subcatcrud(String qry)
        {
            MyCon.cnopen();
            MyCon.cmd = new SqlCommand(qry, MyCon.cn);
            MyCon.cmd.ExecuteNonQuery();
            MyCon.cnclose();
        }
    }
}