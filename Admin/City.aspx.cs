using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlDataReader dr;
        String qry;
        CityCrud crud = new CityCrud();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbldisp.Text = string.Empty;
            if (!IsPostBack)
            {
                String act = Request.QueryString.Get("act");
                String cid = Request.QueryString.Get("cid");
                ViewState["cid"] = cid;

                if (act == "edit")
                {
                    btn_submit.Visible = false;
                    btn_update.Visible = true;

                    qry = "Select * from City_mstr where city_id = "+ cid ;
                    dr = crud.select(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        //ddlsname.SelectedValue = dr["sid"].ToString();
                        txtcname.Text = dr["city_name"].ToString();
                    }
                }
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (ddlsname.SelectedIndex == 0)
            {
                lbldisp.Text = "Please Select State";
            }
            else
            {
                qry = "insert into City_mstr values('" + ddlsname.SelectedValue + "','" + txtcname.Text + "' )";
                crud.citymastercrud(qry);
                lbldisp.Text = "City Added .. ";
                //Response.Redirect("City.aspx");
            }

        }
        void clear()
        {
            foreach (object control in fcity.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = "";
                    
                }
                
            }
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            qry = "update city_mstr set city_name = '" + txtcname.Text + "' , sid = '" + ddlsname.SelectedValue + "' where city_id = '" + ViewState["cid"] + "' ";
            crud.citymastercrud(qry);
            Response.Redirect("DispCity.aspx");

        }
    }
}