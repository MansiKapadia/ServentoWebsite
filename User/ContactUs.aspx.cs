using As_Your_Need_services.Admin;
using As_Your_Need_services.Vendor;
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
    public partial class WebForm1 : System.Web.UI.Page
    {
        UserCrud crud = new UserCrud();
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            qry= "insert into Contactus_mstr values('" + txtuname.Text + "','" + txtmail.Text + "','" + txtcontact.Text + "','" + ddlservice.SelectedValue + "','" + txtmsg.Text + "')";
            crud.usermastercrud(qry);
            Response.Redirect("ContactUs.aspx");
            //cn.Open();
            //qry = "insert into Contact_us values('" + txtuname.Text + "','" + txtmail.Text + "','" + txtcontact.Text + "','" + ddlservice.SelectedValue + "','" + txtmsg.Text + "')";

            //cmd=new SqlCommand(qry,cn);
            //cmd.ExecuteNonQuery();
            //cn.Close();
        }
    }
}