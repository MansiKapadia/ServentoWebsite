using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlDataReader dr;
        String qry;
        UserCrud crud = new UserCrud();
        String email;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            qry = "select * from User_mstr where umail = '" + txtmail.Text + "' and upass = '" + txtpass.Text + "'";
            dr = crud.select(qry);
            if (dr.HasRows)
            {
                dr.Read();
                String status = dr["status"].ToString();
                Session["uemail"] = dr["umail"].ToString();
                Session["uid"] = dr["uid"].ToString();
                if (status == "Pending")
                {
                    Response.Redirect("Otp.aspx");
                }
                else
                {
                    Response.Redirect("default.aspx");
                }

            }
            else
            {
                lbldisp.Text = "Invalid Email or Password";
            }

        }
    }
}
    


    
