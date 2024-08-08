using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        int subid = 0,uid = 0,catid=0,vid=0;
        String qry;
        WishListCrud crud = new WishListCrud();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uemail"] != null)
            {                
                subid = Convert.ToInt32(Request.QueryString["subid"]);
                catid = Convert.ToInt32(Request.QueryString["catid"]);
                vid = Convert.ToInt32(Request.QueryString["vid"]);
                uid = Convert.ToInt32(Session["uid"]);
                qry = "Insert into Wish_List_mstr values ('" + uid + "','" + subid + "','"+ vid +"')";
                crud.wishlistmastercrud(qry);
                
                Response.Redirect("Dispcategory.aspx?cat_Id="+catid);
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }

        }
    }
}