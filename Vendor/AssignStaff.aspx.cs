using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();

        String qry,umail,qry2;
        int ordid ,subcatid = 0;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                if (Request.QueryString["umail"] != null)
                {
                    umail = Request.QueryString["umail"].ToString();
                    ordid = Convert.ToInt32(Request.QueryString["ordid"].ToString());
                    subcatid = Convert.ToInt32(Request.QueryString["sid"].ToString());
                    ViewState["sid"] = subcatid;
                    lblordid.Text = Request.QueryString["ordid"].ToString();
                    lbluname.Text = Request.QueryString["uname"].ToString();
                }
                else
                {
                    Response.Redirect("OrderDetails.aspx");
                }
                
            }
            else
            {
                Response.Redirect("default.aspx");
            }

        }


        protected void btnassign_Click(object sender, EventArgs e)
        {
            int staffid = Convert.ToInt32( ddlstate.SelectedValue);
            qry2 = "Select * from sub_category where sub_cat_id = " + ViewState["sid"] ;
            cn.Open();
            cmd = new SqlCommand(qry2, cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            String sname = dr["sub_cat_name"].ToString();
            cn.Close();
            String dateee = txtdate.Text;
            cn.Open();
            qry = "insert into Assign_Staff values('" + ordid + "','" + staffid + "','" + dateee + "') ";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            //Lbldisp.Text = ddlstate.SelectedItem.ToString();

            String body = "Thank You For Booking <br> We will Send '" + ddlstate.SelectedItem.ToString() + "' on '" + txtdate.Text + "' for "+ sname +" <br><br>Regard,<br>Servento";

            MailMessage mail = new MailMessage();
            //string mailid = txtemail.Text;
            mail.To.Add(umail);
            mail.From = new MailAddress("servicesservento@gmail.com");
            mail.Subject = "Approval Request";
            string Body = body;
            mail.Body = Body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("servicesservento@gmail.com", "vfxdkalklwoqnnsa");
            smtp.Port = 587; //465
            smtp.EnableSsl = true;
            smtp.Send(mail);



        }
    }
}