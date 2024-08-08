using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();

        String qry1,qry2,qry3,qry4;
        int vno=0,sub=0,cat=0,user=0 ;

        protected void Page_Load(object sender, EventArgs e)
        {
            //lbltvendor.Text = "12";
            qry1 = "SELECT COUNT(*) FROM Vender_mstr";
            cn.Open();
            cmd = new SqlCommand(qry1,cn);
            vno = Convert.ToInt32( cmd.ExecuteScalar() );
            lbltvendor.Text = vno.ToString();
            cn.Close();

            qry2 = "SELECT COUNT(*) FROM Sub_Category";
            cn.Open();
            cmd = new SqlCommand(qry2, cn);
            sub = Convert.ToInt32(cmd.ExecuteScalar());
            lbltsubcat.Text = sub.ToString();
            cn.Close();

            qry3 = "SELECT COUNT(*) FROM Category_mstr";
            cn.Open();
            cmd = new SqlCommand(qry3, cn);
            cat = Convert.ToInt32(cmd.ExecuteScalar());
            lbltcat.Text = cat.ToString();
            cn.Close();

            qry4 = "SELECT COUNT(*) FROM User_mstr";
            cn.Open();
            cmd = new SqlCommand(qry4, cn);
            user = Convert.ToInt32(cmd.ExecuteScalar());
            lbltuser.Text = user.ToString();
            cn.Close();

        }
    }
}