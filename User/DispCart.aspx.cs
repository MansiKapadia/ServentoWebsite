using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        string qry,qry2,qry3,qry4,qry5,qry6,qry7,d;
        int subt = 0;
        string payment;
        int order_id;
        int sub_cat_id,sub_cat_price;

        MyConnection conn = new MyConnection();
        SubCat crud = new SubCat();
        VoucherCrud vcrud = new VoucherCrud();
        
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        SqlDataAdapter dap=new SqlDataAdapter();
        DataSet ds=new DataSet();
        // int sub_total=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["uemail"] != null)
                {
                    lblsubtotal.Text = null;
                    qry = "Select sum(sub_cat_price) from Cart_mstr where uid = " + Session["uid"];
                    conn.cnopen();
                    conn.cmd = new SqlCommand(qry, conn.cn);
                    String sub = conn.cmd.ExecuteScalar().ToString();
                    subt = Convert.ToInt32(sub);
                    lblsubtotal.Text = conn.cmd.ExecuteScalar().ToString();
                    // sub_total= Convert.ToInt32( cmd.ExecuteScalar() ) ;           
                    conn.cnclose();

                    lblgrandtotal.Text = sub;
                }
                else
                {
                    Response.Redirect("Request.aspx");
                }
                
            }
            catch(FormatException ex)
            {
                //Response.Redirect("DispCart.aspx");
            }
            catch(Exception ex)
            {
                Response.Redirect("DispCart.aspx");
            }
            

        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            if(radcod.Checked)
            {
                Session["status"] = "cod";
            }
            else
            {
                Session["status"] = "razor";

                
            }
            Session["tamt"] = lblgrandtotal.Text;
            d = DateTime.Now.Date.ToString();
            d = d.Substring(0, 10);

            cn.Open();
            qry3 = "insert into Order_mstr values(" + Session["uid"].ToString() + "," + lblgrandtotal.Text + ",'" + d + "','Pending')";
            cmd = new SqlCommand(qry3, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            qry = "select max(order_id) from Order_mstr";
            cmd = new SqlCommand(qry, cn);
            order_id = Convert.ToInt32(cmd.ExecuteScalar());
            cn.Close();
            Session["order_id"] = order_id;

            qry6 = "select * from Cart_mstr where uid='" + Session["uid"].ToString()+"'";
            dap = new SqlDataAdapter(qry6, cn);
            dap.Fill(ds);
            for(int i = 0; i < ds.Tables[0].Rows.Count;i++)
            {
                sub_cat_id = Convert.ToInt32(ds.Tables[0].Rows[i][2].ToString());
                sub_cat_price = Convert.ToInt32(ds.Tables[0].Rows[i][3].ToString());



                cn.Open();
                qry5 = "insert into Order_details_mstr values('" + Session["order_id"].ToString() + "','" + Session["uid"].ToString() + "'," + sub_cat_id + "," + sub_cat_price + ")";
                cmd = new SqlCommand(qry5, cn);
                cmd.ExecuteNonQuery();
                cn.Close();

            }
        
            cn.Open();
            qry7 = "delete from Cart_mstr where uid='"+Session["uid"].ToString()+"'";
            cmd = new SqlCommand(qry7,cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            if (Session["status"].ToString()=="cod")
            {
                Response.Redirect("Result.aspx");

            }
            else
            {
                Response.Redirect("Payment.aspx");
            }

        }

        protected void btnapply_Click(object sender, EventArgs e)
        {
            lblinvalid.Text = null;
            int temp_amt,temp_disc;
            qry2 = "Select * from Voucher_mstr where voucher_name = '" + txtcoupen.Text +"' ";
            // qry2 = "select * from Voucher_mstr where voucher_name = " + txtcoupen.Text ;
            dr = vcrud.select(qry2);
            dr.Read();
            if (dr.HasRows)
            {
                // int min_amount = Convert.ToInt32(dr["min_amt"]);
                temp_amt = Convert.ToInt32(dr["min_amt"]);
                temp_disc = Convert.ToInt32(dr["discount"]);
                
                if (subt > temp_amt)
                {
                    double Discount = 0;
                    double a = 0,b = 0 ;                    
                    Discount = subt * temp_disc;
                    a = Discount / 100;
                    b = subt - a;
                    //lblinvalid.Text = b.ToString();
                    lblgrandtotal.Text = b.ToString();

                }
                else
                {
                    lblinvalid.Text = "Offer Is Unavailable";
                }
            }
            else
            {
                lblinvalid.Text = "Invalid Coupon Name";
            }

        }
    }
}