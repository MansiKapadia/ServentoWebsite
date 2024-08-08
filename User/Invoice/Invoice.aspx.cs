using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User.Invoice.assets
{
    public partial class Invoice : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry,uid,qry2;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string order_id = Request.QueryString.Get("order_id").ToString();
            cn.Open();
            qry = "select * from Order_mstr where order_id='"+order_id+"'";
            cmd = new SqlCommand(qry, cn);
            dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                dr.Read();
                lblorderid.Text = dr["order_id"].ToString();
                
                DateTime d1= Convert.ToDateTime (dr["tdate"].ToString());
                string dt = d1.ToString();
                dt = dt.Substring(0, 10);
                lbldate.Text = dt;

                lbltotal.Text = dr["tamt"].ToString();
                uid = dr["user_id"].ToString();
                cn.Close();

                cn.Open();
                qry2 = "select * from User_mstr where uid=" + uid;
                cmd = new SqlCommand(qry2, cn);
                dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    dr.Read();
                    lblname.Text = dr["uname"].ToString();
                    string add = dr["address"].ToString();
                    lbladd.Text = add;
                    string contact = dr["ucontact"].ToString();
                    lblcontact.Text = contact;
                }
                cn.Close();
            }
            
            
        }
    }
}