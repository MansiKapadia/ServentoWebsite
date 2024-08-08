using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using As_Your_Need_services.Vendor;

namespace As_Your_Need_services.Admin
{
    public class CityCrud
    {
        MyConnection MyCon = new MyConnection();
        public void citymastercrud(String qry)
        {
            MyCon.cnopen();
            MyCon.cmd = new SqlCommand(qry, MyCon.cn);
            MyCon.cmd.ExecuteNonQuery();
            MyCon.cnclose();
        }
        public SqlDataReader select(String qry)
        {
            MyCon.cnopen();
            MyCon.cmd = new SqlCommand(qry, MyCon.cn);
            MyCon.dr = MyCon.cmd.ExecuteReader();
            return MyCon.dr;
        }
    }
}