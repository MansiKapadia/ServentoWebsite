using As_Your_Need_services.Admin;
using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;


        UserCrud crud = new UserCrud();
        String qry, qry1;
        int num;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            cn.Open();
            qry1 = "select * from User_mstr where umail='" + txtmail.Text + "'";
            cmd = new SqlCommand(qry1, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtmail.Text = dr["umail"].ToString();

                Random r = new Random();
                int num = r.Next(1000, 9999);
                ViewState["num"] = num;
                // Response.Write(num.ToString());

                MailMessage mail = new MailMessage();
                string mailid = txtmail.Text;
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
                qry = "update User_mstr set upass = '" + num + "' where umail = '" + txtmail.Text + "' ";
                crud.usermastercrud(qry);
                Response.Redirect("SignIn.aspx");

            }

            else
            {
                lbldisp.Text = "Email Id Is Not Exits.....";
            }


        }

        private string CreateBody()
        {
            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("../OTP/ForgotPassword.html")))
            {
                body = reader.ReadToEnd();
            }
            body = body.Replace("{Email}", txtmail.Text);
            body = body.Replace("{Password}", ViewState["num"].ToString());
            return body;
        }
    }
}