using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlDataReader dr;
        String qry;
        VenderCrud crud = new VenderCrud();
        String email;
        String pimage;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            qry = "select * from Vender_mstr where vmail = '" + txtemail.Text + "' and vpass = '" + txtpass.Text + "'";
            dr = crud.select(qry);
            if (dr.HasRows)
            {
                dr.Read();
                String vstatus = dr["vstatus"].ToString();  
                if (vstatus == "Pending")
                {
                    Response.Redirect("Processing.aspx");
                }
                else
                {
                    
                    pimage = dr["vprofile"].ToString();
                    email = dr["vmail"].ToString();
                    Session["email"] = email;
                    Session["vprofile"] = pimage;
                    Session["vid"] = dr["vid"].ToString();
                    Response.Redirect("VDashBoard.aspx");
                }
                
            }
            else
            {
                lblerror.Text = "Invalid Email or Password";
            }

        }
    }
}