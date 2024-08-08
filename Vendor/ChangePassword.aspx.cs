using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String qry;
        String email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                lblmail.Text = Session["email"].ToString();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            Label1.Text = null;
            cn.Open();
            qry = "select * from Vender_mstr where vmail='" + Session["email"].ToString() + "' and vpass='" + txtopass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                //Label1.Text = "same";
                cn.Close();

                if (txtnewpass.Text == txtcpass.Text)
                {


                    cn.Open();
                    qry = "update Vender_mstr set vpass='" + txtnewpass.Text + "' where vmail='" + Session["email"].ToString() + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();

                    cn.Close();
                }
                else
                {
                    Label1.Text = "Please enter confirm password and new password..";
                }

            }
            else
            {
                Label1.Text = "Please Enter Password correct...";
            }
            cn.Close();
        }
    }
}
    