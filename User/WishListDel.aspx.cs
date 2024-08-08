using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WishListDel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String qry;
            WishListCrud crud = new WishListCrud();

            String wid = Request.QueryString.Get("wid");
            qry = "delete from Wish_List_mstr where wid=" + wid ;
            crud.wishlistmastercrud(qry);
            Response.Redirect("UserWishList.aspx");

        }

    }
    
}