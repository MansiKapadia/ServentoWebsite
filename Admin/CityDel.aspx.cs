using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class CityDel : System.Web.UI.Page
    {
        String qry;
        CityCrud crud = new CityCrud();
        protected void Page_Load(object sender, EventArgs e)
        {
            String cid = Request.QueryString.Get("cid");
            qry = "delete from City_mstr where city_id=" + cid;
            crud.citymastercrud(qry);
            Response.Redirect("DispCity.aspx");

        }
    }
}