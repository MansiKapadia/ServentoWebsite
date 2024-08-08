using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace As_Your_Need_services.Admin
{
    public partial class WebForm28 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
        SqlDataAdapter dap = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                qry = "SELECT Order_details_mstr.order_id AS Expr1, Order_mstr.*, User_mstr.*, Sub_Category.*, Vender_mstr.* FROM Order_details_mstr INNER JOIN Order_mstr ON Order_details_mstr.order_id = Order_mstr.order_id INNER JOIN User_mstr ON Order_details_mstr.uid = User_mstr.uid INNER JOIN Sub_Category ON Order_details_mstr.sub_cat_id = Sub_Category.sub_cat_id CROSS JOIN Vender_mstr where Order_mstr.status='Pending'";
                dap = new SqlDataAdapter(qry, cn);
                dap.Fill(ds);
                Repeater1.DataSource = ds.Tables[0];
                Repeater1.DataBind();
            }
        }

        protected void Btn_submit_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {
                ds.Clear();
                qry = "SELECT Order_details_mstr.order_id AS Expr1, Order_mstr.*, User_mstr.*, Sub_Category.*, Vender_mstr.* FROM Order_details_mstr INNER JOIN Order_mstr ON Order_details_mstr.order_id = Order_mstr.order_id INNER JOIN User_mstr ON Order_details_mstr.uid = User_mstr.uid INNER JOIN Sub_Category ON Order_details_mstr.sub_cat_id = Sub_Category.sub_cat_id CROSS JOIN Vender_mstr where Order_mstr.status='Pending' and tdate='" + TextBox1.Text + "'";
                dap = new SqlDataAdapter(qry, cn);
                dap.Fill(ds);
                Repeater1.DataSource = ds.Tables[0];
                Repeater1.DataBind();
            }
            else
            {
                ds.Clear();
                qry = "SELECT Order_details_mstr.order_id AS Expr1, Order_mstr.*, User_mstr.*, Sub_Category.*, Vender_mstr.* FROM Order_details_mstr INNER JOIN Order_mstr ON Order_details_mstr.order_id = Order_mstr.order_id INNER JOIN User_mstr ON Order_details_mstr.uid = User_mstr.uid INNER JOIN Sub_Category ON Order_details_mstr.sub_cat_id = Sub_Category.sub_cat_id CROSS JOIN Vender_mstr where Order_mstr.status='Pending' and tdate between '" + TextBox1.Text + "' AND '" + TextBox2.Text + "' ";
                
                dap = new SqlDataAdapter(qry, cn);
                dap.Fill(ds);
                Repeater1.DataSource = ds.Tables[0];
                Repeater1.DataBind();
            }
        }
    }
}