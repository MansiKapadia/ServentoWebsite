using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String qry;
        String uemail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uemail"] != null)
            {
                lblmail.Text = Session["uemail"].ToString();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            Label1.Text = null;
            cn.Open();
            qry = "select * from User_mstr where umail='" + Session["uemail"].ToString() + "' and upass='" + txtopass.Text + "'";
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
                    qry = "update User_mstr set upass='" + txtnewpass.Text + "' where umail='" + Session["uemail"].ToString() + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();

                    cn.Close();
                    Response.Redirect("LogOut.aspx");
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