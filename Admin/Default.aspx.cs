using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin.assets
{
    public partial class Default : System.Web.UI.Page
    {
        SqlDataReader dr;
        String qry;
        AdminCrud crud = new AdminCrud();
        String amail;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            qry = "select * from Admin_mstr where amail = '" + txtamail.Text + "' and apass = '" + txtapass.Text + "'";
            dr = crud.select(qry);
            if (dr.HasRows)
            {
                dr.Read();
                amail = dr["amail"].ToString();
                Session["amail"] = amail;
                Response.Redirect("AdHome.aspx");
            }
            else
            {
                lblerror.Text = "Invalid Email or Password";
            }

        }
    }
}