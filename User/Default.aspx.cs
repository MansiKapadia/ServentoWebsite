using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                btn_login.Visible = false;
                btn_sigup.Visible = false;
                
                
            }
            else
            {
                btn_logout.Visible = false;
                btn_profile.Visible = false;
                btn_cart.Visible = false; 
            }

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");

        }

        protected void btn_profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProfileUser.aspx");

        }

        protected void btn_sigup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btn_cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("DispCart.aspx");
        }
    }
}