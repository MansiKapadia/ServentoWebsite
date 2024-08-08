using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class CartTemp : System.Web.UI.Page
    {
        int uid = 0, subid = 0 ,  price = 0;
        String qry,qry2;

        WishListCrud crud = new WishListCrud();
        SubCat crud2= new SubCat();
        SqlDataReader dr;
        MyConnection conn = new MyConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uemail"] != null)
            {
                uid = Convert.ToInt32(Session["uid"]);
                subid = Convert.ToInt32(Request.QueryString["subid"]);
                qry2 = "select * from Sub_Category where sub_cat_id = " + subid;
                dr = crud2.select(qry2);
                dr.Read();
                price = Convert.ToInt32( dr["sub_cat_price"] );
                conn.cnclose();

                qry = "Insert into Cart_mstr values ('" + uid + "','" + subid + "','"+ price +"')";
                crud.wishlistmastercrud(qry);
                Response.Redirect("DispCart.aspx");

            }
            else
            {
                Response.Redirect("Request.aspx");
            }

        }
    }
}