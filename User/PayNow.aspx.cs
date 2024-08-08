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
    public partial class WebForm16 : System.Web.UI.Page
    {
        //int order_id;
        //string qry;
        //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //cn.Open();
            //qry = "select max(order_id) from Order_mstr";
            //cmd=new SqlCommand(qry, cn);
            //order_id= Convert.ToInt32(cmd.ExecuteScalar());
            //cn.Close();
            //Session["order_id"] = order_id;
        }
    }
}