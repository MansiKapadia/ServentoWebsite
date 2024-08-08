using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class VenderMaster : System.Web.UI.MasterPage
    {
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader dr;
        SqlDataReader dr1;
        VenderCrud crud=new VenderCrud();
        string qry,qry1;
        int catid;
        //MyConnection cn = new MyConnection();
      
        protected void Page_Load(object sender, EventArgs e)
        {

            //return MyCon.dr;
            cn.Open();
            qry = "select * from vender_mstr where vmail='" + Session["email"] + "'";
            cmd = new SqlCommand(qry,cn);
            dr = cmd.ExecuteReader();
           if(dr.HasRows)
            {
                dr.Read();
                lblvname.Text = dr["vfname"].ToString()+" "+ dr["vlname"].ToString();
                lblvname2.Text = dr["vfname"].ToString()+" "+ dr["vlname"].ToString();
                catid = Convert.ToInt32(dr["cat_Id"]);

            }
            cn.Close();    
    
            
            cn.Open();
            qry1 = "select * from category_mstr where cat_Id=" + catid;
            cmd = new SqlCommand(qry1, cn);
            dr1 = cmd.ExecuteReader();
            if (dr1.HasRows)
            {
                dr1.Read();
                lblcat.Text = dr1["cat_name"].ToString();
            }
            cn.Close();           

            //if (Session["email"] != null || Session["vprofile"] != null)
            //{
            //}
            //else
            //{
            //    Response.Redirect("Default.aspx");
            //}
            ProfileImg.ImageUrl = "profile/" + Session["vprofile"].ToString();
            //Session["vprofile"] = Convert.FromBase64String(Image1);
            Profileimg2.ImageUrl = "profile/" + Session["vprofile"].ToString();

        }
    }
}