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
    public partial class MyBookingDel : System.Web.UI.Page
    {
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            String order_id = Request.QueryString.Get("order_id");
            cn.Open();
            qry = "delete from Order_mstr where order_id='" + order_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            //crud.articalmastercrud(qry);
            Response.Redirect("MyBooking.aspx");
        }
    }
}