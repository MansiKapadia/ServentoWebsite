using As_Your_Need_services.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Configuration;

namespace As_Your_Need_services.Vendor
{
    public partial class ForgotPass : System.Web.UI.Page
    {


        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;


        VenderCrud crud = new VenderCrud();
        String qry,qry1;
        int num;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {

            cn.Open();
            qry1 = "select * from Vender_mstr where mail='" + txtemail.Text + "'";
            cmd = new SqlCommand(qry1, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtemail.Text = dr["vmail"].ToString();

                Random r = new Random();
                int num = r.Next(1000, 9999);
                ViewState["num"] = num;
                // Response.Write(num.ToString());

                MailMessage mail = new MailMessage();
                string mailid = txtemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("servicesservento@gmail.com");
                mail.Subject = "Forgot Password";
                //string Body = "We Have Send You A new Password For Your Account  " + num.ToString();
                mail.Body = CreateBody();
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("servicesservento@gmail.com", "vfxdkalklwoqnnsa");
                smtp.Port = 587; //465
                smtp.EnableSsl = true;
                smtp.Send(mail);
                qry = "update Vender_mstr set vpass = '" + num + "' where vmail = '" + txtemail.Text + "' ";
                crud.vendermastercrud(qry);
                Response.Redirect("Default.aspx");
            }

            else
            {
                Label1.Text = "Email Id Is Not Exits.....";
            }

           
        }


        private string CreateBody()
        {
            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("../OTP/ForgotPassword.html")))
            {
                body = reader.ReadToEnd();
            }
            body = body.Replace("{Email}", txtemail.Text);
            body = body.Replace("{Password}", ViewState["num"].ToString());
            return body;
        }
    }
}