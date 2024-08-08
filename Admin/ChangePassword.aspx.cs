using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
         SqlCommand cmd = new SqlCommand();
         SqlDataReader dr;
        String qry;
        String amail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["amail"] != null)
            {
                lblemail.Text = Session["amail"].ToString();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            //Label1.Text=null;
           cn.Open();
            qry = "select * from Admin_mstr where amail='"+ Session["amail"].ToString() + "' and apass='"+txtoldpass.Text+"'";
            cmd=new SqlCommand(qry,cn);
            dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                dr.Read();
                //Label1.Text = "same";
                cn.Close();

                if (txtpass.Text == txtcpass.Text)
                {


                    cn.Open();
                    qry = "update Admin_mstr set apass='" + txtpass.Text + "' where amail='" + Session["amail"].ToString() + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();

                    cn.Close();
                    Response.Redirect("logout.aspx");
                }
                else
                {
                    // Label1.Text = "Please enter confirm password and new password..";
                }

            }
            else
            {
                // Label1.Text = "Please Enter Password correct...";
            }
            cn.Close();
        }
    }
}