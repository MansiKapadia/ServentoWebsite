using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        UserCrud crud = new UserCrud();
        String qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uemail"] != null)
            {

            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            qry = "update User_mstr set status = 'verify' where umail = '" + Session["uemail"].ToString() + "' ";
            crud.usermastercrud(qry);
            Response.Redirect("default.aspx");
        }
    }
}