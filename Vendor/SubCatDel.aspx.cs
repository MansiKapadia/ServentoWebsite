using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class SubCatDel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String qry;
            SubCatCrud crud = new SubCatCrud();
            
                String subcatid = Request.QueryString.Get("subcatid");
                qry = "delete from Sub_Category where sub_cat_id=" + subcatid;
                crud.subcatcrud(qry);
                Response.Redirect("DispSubCat.aspx");

            }
        }
}