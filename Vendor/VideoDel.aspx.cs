using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class VideoDel : System.Web.UI.Page
    {
        VideoCRUD crud=new VideoCRUD();
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            String Video_id = Request.QueryString.Get("Video_id");
            qry = "delete from Video_mstr where Video_id='" + Video_id + "'";
            crud.videomastercrud(qry);
            Response.Redirect("DispVideo.aspx");
        }
    }
}