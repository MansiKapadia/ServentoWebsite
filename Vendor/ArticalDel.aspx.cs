using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class ArticalDel : System.Web.UI.Page
    {
        ArticalCRUD crud = new ArticalCRUD();
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            String anid = Request.QueryString.Get("anid");
            qry = "delete from Article_mstr where anid='" + anid + "'";
            crud.articalmastercrud(qry);
            Response.Redirect("DispArtical.aspx");
        }
    }
}