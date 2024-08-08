using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        String qry,qry2;
        UserCrud crud = new UserCrud();
        
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            if (Session["uemail"] != null)
            {
                int uid = Convert.ToInt32(Session["uid"]);
                qry = "select * from User_mstr where uid = '" + uid + "' ";
                cn.Open();
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                {
                    dr.Read();
                    //Lbldisp.Text = dr["uid"].ToString();
                    txtuname.Text = dr["uname"].ToString();
                    txtcontact.Text = dr["ucontact"].ToString();
                    txtemail.Text = dr["umail"].ToString();

                }
                cn.Close();
                

            }
            else
            {
                Response.Redirect("Request.aspx");
            }
            }

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            qry2 = "update User_mstr set uname ='" + txtuname.Text + "', umail = '" + txtemail.Text + "', ucontact = '" + txtcontact.Text + "' where uid = '" + uid + "' ";
            //qry2 = "update User_mstr set uname = '"+ txtuname.Text +"',ucontact='"+ txtcontact.Text +"',umail='"+ txtemail.Text +"'  where uid = '" + uid + "' ";
            crud.usermastercrud(qry2);
            Response.Redirect("Logout.aspx");
        }
    }
}