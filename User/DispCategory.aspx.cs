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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        int uid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                uid = Convert.ToInt32(Session["uid"].ToString());
                cn.Open();
                qry = "insert into Testimonial_mstr values(" + uid + ",'" + txttitle.Text + "','" + txtdesc.Text + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("Request.aspx");
            }
            
        }
    }
}