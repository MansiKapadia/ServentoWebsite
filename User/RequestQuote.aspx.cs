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
    public partial class WebForm6 : System.Web.UI.Page
    {
        RequestQuoteCrud crud = new RequestQuoteCrud();
        SubCat crud2 = new SubCat();

        SqlDataReader dr;
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        String qry,qry2;
        int uid = 0 ,subid = 0,vid = 0;

        protected void Page_Load(object sender, EventArgs e)
        {            
            

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (Session["uemail"] != null)
            {
                uid = Convert.ToInt32(Session["uid"]);
                subid = Convert.ToInt32(Request.QueryString["subid"]);

            }
            else
            {
                Response.Redirect("Request.aspx");
            }

            qry2 = "select * from Sub_Category where sub_cat_id = " + subid;
            dr = crud2.select(qry2);
            dr.Read();
            vid = Convert.ToInt32(dr["vid"].ToString());
            cn.Close();

            qry = "insert into Request_Quote_mstr values('"+ uid +"','"+ subid +"','"+ txtmsg.Text +"','"+ vid +"','0',' ')";
            crud.requestmastercrud(qry);
            Response.Redirect("ThankYou.aspx");

        }
    }
}