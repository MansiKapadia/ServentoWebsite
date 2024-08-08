using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        Staffcrud crud = new Staffcrud();
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                String Staff_id = Request.QueryString.Get("staffid");
                qry = "delete from Staff_mstr where Staffid ='" + Staff_id + "'";
                crud.staffmastercrud(qry);
                Response.Redirect("DispStaff.aspx");
            }
            else
            {
                Response.Redirect("default.aspx");
            }
            

        }
    }
}