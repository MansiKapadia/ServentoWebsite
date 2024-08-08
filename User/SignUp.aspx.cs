using As_Your_Need_services.Admin;
using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace As_Your_Need_services.User
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader dr;

        //UserCrud crud = new UserCrud();
        //MyConnection MyCon = new MyConnection();
        String qry,uname,qry2;
        int num;
        //SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            qry2 = "Select * from User_mstr where umail = '" + txtmail.Text + "' ";
            cn.Open();
            cmd = new SqlCommand(qry2, cn);
            dr = cmd.ExecuteReader();
            //dr = crud.select(qry2);
            dr.Read();
            if (dr.HasRows)
            {
                lbldisp.Text = "This Email Id Alread Exist";
              //  con.cnclose();
            }
            else
            {
                cn.Close();
                Random r = new Random();
                int num = r.Next(1000, 9999);
                ViewState["num"] = num;
                // Response.Write(num.ToString());

                MailMessage mail = new MailMessage();
                string mailid = txtmail.Text;
                //uname=txtfname.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("servicesservento@gmail.com");
                mail.Subject = "Registration";
                //string Body = "We Have Send You A new Password For Your Account  " + num.ToString();
                mail.Body = CreateBody();
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("servicesservento@gmail.com", "vfxdkalklwoqnnsa");
                smtp.Port = 587; //465
                smtp.EnableSsl = true;
                smtp.Send(mail);
                qry = "insert into User_mstr values('" + txtfname.Text + "','" + txtmail.Text + "','" + txtcontact.Text + "','" + txtpass.Text + "','" + txtadd.Text + "','" + ddlstate.SelectedValue + "','" + ddlcity.SelectedValue + "','" + num + "','Pending')";
                cn.Open();
                cmd = new SqlCommand(qry,cn);
                cmd.ExecuteNonQuery();
                cn.Close() ;    
                //crud.usermastercrud(qry);
                clear();

                Response.Redirect("SignIn.aspx");


            }


        }

        private string CreateBody()
        {
            string body=string.Empty;
            using (StreamReader reader=new StreamReader(Server.MapPath("../OTP/Template.html")))
            {
                body=reader.ReadToEnd();    
            }
            body = body.Replace("{fname}",txtfname.Text);
            body = body.Replace("{otp}", ViewState["num"].ToString());
            return body;
        }
        void clear()
        {
            foreach (object control in f1.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = "";
                }
            }
        }
    }
}