using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        String qry1, qry2, qry3, qry4;
        int sno = 0, scat = 0, booking = 0 ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                qry1 = "SELECT COUNT(*) FROM Staff_mstr where vid = '"+ Session["vid"].ToString() +"' ";
                cn.Open();
                cmd = new SqlCommand(qry1, cn);
                sno = Convert.ToInt32(cmd.ExecuteScalar());
                lbltstaff.Text = sno.ToString();
                cn.Close();

                qry2 = "SELECT COUNT(*) FROM Sub_category where vid = '" + Session["vid"].ToString() + "' ";
                cn.Open();
                cmd = new SqlCommand(qry2, cn);
                scat = Convert.ToInt32(cmd.ExecuteScalar());
                lbltsub.Text = scat.ToString();
                cn.Close();
                
                qry3 = "SELECT Count(*) FROM Sub_Category INNER JOIN Order_details_mstr ON Sub_Category.sub_cat_id = Order_details_mstr.sub_cat_id WHERE (Sub_Category.vid = '"+ Session["vid"].ToString() +"') ";
                cn.Open();
                cmd = new SqlCommand(qry3, cn);
                booking = Convert.ToInt32(cmd.ExecuteScalar());
                lblbooking.Text = booking.ToString();
                cn.Close();

                cn.Open();
                qry4 = "select * from vender_mstr where vmail='" + Session["email"] + "'";
                cmd = new SqlCommand(qry4, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    lblvname.Text = dr["vfname"].ToString() + " " + dr["vlname"].ToString();
                }
                cn.Close();



            }
            else
            {
                Response.Redirect("default.aspx");
            }



        }
    }
}