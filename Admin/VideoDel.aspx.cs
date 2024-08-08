using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class VideoDel : System.Web.UI.Page
    {
        String qry;
        VideoCRUD crud = new VideoCRUD();
        protected void Page_Load(object sender, EventArgs e)
        {
            String video_id = Request.QueryString.Get("video_id");
            qry = "delete from Video_mstr where video_id=" + video_id;
            crud.videomastercrud(qry);
            Response.Redirect("DispVideo.aspx");
        }
    }
}