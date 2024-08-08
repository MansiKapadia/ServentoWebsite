using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class CartDel : System.Web.UI.Page
    {
        String qry;
        CartCrud crud = new CartCrud();
        protected void Page_Load(object sender, EventArgs e)
        {            
            int cid = Convert.ToInt32( Request.QueryString.Get("cid") );
            qry = "delete from Cart_mstr where cartId=" + cid;
            crud.cartmastercrud(qry);
            Response.Redirect("DispCart.aspx");

        }
    }
}