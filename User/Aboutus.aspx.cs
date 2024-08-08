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
    public partial class WebForm21 : System.Web.UI.Page
    {
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        String qry1,qry2,qry3,qry4;
        int vno=0 ,sno = 0 , cno=0 , cat=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            qry1 = "SELECT COUNT(*) FROM Vender_mstr ";
            cn.Open();
            cmd = new SqlCommand(qry1, cn);
            vno = Convert.ToInt32(cmd.ExecuteScalar());
            lblprovider.Text = vno.ToString();
            cn.Close();

            qry2 = "SELECT COUNT(*) FROM Staff_mstr ";
            cn.Open();
            cmd = new SqlCommand(qry2, cn);
            sno = Convert.ToInt32(cmd.ExecuteScalar());
            lblstaff.Text = sno.ToString();
            cn.Close();

            qry3 = "SELECT COUNT(*) FROM User_mstr ";
            cn.Open();
            cmd = new SqlCommand(qry3, cn);
            cno = Convert.ToInt32(cmd.ExecuteScalar());
            lblcust.Text = cno.ToString();
            cn.Close();

            qry4 = "SELECT COUNT(*) FROM Category_mstr ";
            cn.Open();
            cmd = new SqlCommand(qry4, cn);
            cat = Convert.ToInt32(cmd.ExecuteScalar());
            lblcat.Text = cat.ToString();
            cn.Close();
        }
    }
}