using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        
        String qry;
        SubCatCrud crud = new SubCatCrud();
        protected void Page_Load(object sender, EventArgs e)
        {
            String subcatid = Request.QueryString.Get("subcatid");
            qry = "delete from Sub_Category where sub_cat_id=" + subcatid;
            crud.subcatcrud(qry);
            Response.Redirect("DispSubCategory.aspx");

        }
    }
}