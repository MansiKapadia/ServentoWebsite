using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        String mail;
        String qry;
        //VenderCrud crud = new VenderCrud();

        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        int catid;
        int vid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                mail = Session["email"].ToString();

                cn.Open();
                qry = "select * from Vender_mstr where vmail = '" + mail + "' ";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                dr.Read();
                catid = Convert.ToInt32(dr["cat_Id"]);
                vid = Convert.ToInt32(dr["vid"]);
                cn.Close();
            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }
    }
}