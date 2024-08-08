using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        string qry;
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["status"].ToString()=="razor")
            {
                cn.Open();
                qry = "update Order_mstr set status='Success' where order_id=" + Session["order_id"].ToString();
                cmd=new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
          

        }
    }
}