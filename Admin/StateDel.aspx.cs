using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace As_Your_Need_services.Admin
{
    public partial class StateDel : System.Web.UI.Page
    {
        String qry;
        StateCrud crud = new StateCrud();

        protected void Page_Load(object sender, EventArgs e)
        {

            String sid = Request.QueryString.Get("sid");
            qry = "delete from State_mstr where sid =" + sid;
            crud.statemastercrud(qry);
            Response.Redirect("DispState.aspx");


        }
    }
}