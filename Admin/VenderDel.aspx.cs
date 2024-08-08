using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        String qry;
        VenderCrud crud = new VenderCrud();

        protected void Page_Load(object sender, EventArgs e)
        {
            String vid = Request.QueryString.Get("vid");
            qry = "delete from Vender_mstr where vid =" + vid;
            crud.vendermastercrud(qry);
            Response.Redirect("DispVender.aspx");
        }
    }
}