using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        ArticalCRUD crud = new ArticalCRUD();
        SqlDataReader dr;
        String umail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                ViewState["rid"] = Request.QueryString["rid"];
                ViewState["uid"] = Request.QueryString["uid"];
            }
            else
            {
                Response.Redirect("Default.aspx");
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            String qry,qry2;
            qry = "update Request_Quote_mstr set Response = '"+ txtresponse.Text + "' , status = '1' where rid = '"+ ViewState["rid"] +"'  ";
            crud.articalmastercrud(qry);
            // Response.Redirect("DispRequestQuote.aspx");

            String body = "Thank You For Contacting Us <br /><br /> "+ txtresponse.Text +" <br />" +
                "Your Regards,<br /> Servento ";

            qry2 = "Select * From User_mstr where uid = '"+ ViewState["uid"] +"' ";
            dr = crud.select(qry2);
            dr.Read();
            if(dr.HasRows)
            {
                umail = dr["umail"].ToString();

                MailMessage mail = new MailMessage();
                string mailid = umail;
                mail.To.Add(mailid);
                mail.From = new MailAddress("servicesservento@gmail.com");
                mail.Subject = "Response To Your Request Quote";
                //string Body = "We Have Send You A new Password For Your Account  " + num.ToString();
                mail.Body = body ;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("servicesservento@gmail.com", "vfxdkalklwoqnnsa");
                smtp.Port = 587; //465
                smtp.EnableSsl = true;
                smtp.Send(mail);
                Response.Redirect("DispRequestQuote.aspx");
            }

        }
    }
}