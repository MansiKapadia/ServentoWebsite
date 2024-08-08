using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm25 : System.Web.UI.Page
    {
        VoucherCrud crud = new VoucherCrud();
        String qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["amail"] != null)
            {
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
            if (!IsPostBack)
            {
                String act = Request.QueryString.Get("act");
                String vid = Request.QueryString.Get("vid");
                ViewState["vid"] = vid;

                if (act == "edit")
                {
                    btn_submit.Visible = false;
                    btn_update.Visible = true;

                    qry = "Select * from Voucher_mstr where voucher_id =" + vid;
                    dr = crud.select(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        //Double min =Convert.ToDouble( dr["min_amount"].ToString());
                         //txtminamt.Text = min.ToString();
                         txtdiscount.Text = dr["discount"].ToString();
                         txtvname.Text = dr["voucher_name"].ToString();

                    }
                }
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int minamount = 0;
            int discount = 0;
            minamount =  Convert.ToInt32( txtminamt.Text);
            discount =  Convert.ToInt32( txtdiscount.Text);
            qry = "insert into Voucher_mstr values('"+ txtvname.Text +"' ,'" + minamount + "','"+ discount +"')";
            crud.vouchermastercrud(qry);
            Label1.Text = "Voucher Added .. ";
            clear();

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            int voucher_id = Convert.ToInt32( Request.QueryString.Get("vid") ) ;
            ViewState["vid"] = voucher_id;
            int minamount = 0, discount = 0;
            minamount = Convert.ToInt32(txtminamt.Text);
            discount = Convert.ToInt32(txtdiscount.Text);
            qry = "Update Voucher_mstr set min_amt ='" + minamount + "', discount ='" + discount + "' where voucher_id = '"+ voucher_id +"' ";
            crud.vouchermastercrud(qry);
            Label1.Text = "Voucher Updated .. ";
            clear();
            Response.Redirect("DispVoucher.aspx");

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            clear();

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