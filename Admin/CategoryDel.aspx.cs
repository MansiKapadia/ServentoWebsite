using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        String qry;
        CategoryCrud crud = new CategoryCrud();

        protected void Page_Load(object sender, EventArgs e)
        {
            
                String catid = Request.QueryString.Get("catid");
                qry = "delete from Category_mstr where cat_id=" + catid;
                crud.categorymastercrud(qry);
                Response.Redirect("DispCategory.aspx");
            

        }
    }
}