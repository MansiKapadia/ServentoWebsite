using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlDataReader dr;
        String qry;
        StateCrud crud = new StateCrud();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                String act = Request.QueryString.Get("act");
                String sid = Request.QueryString.Get("sid");
                ViewState["sid"] = sid;

                if (act=="edit")
                {
                    btn_submit.Visible = false;
                    btn_update.Visible = true;

                    qry = "Select * from state_mstr where sid =" + sid;
                    dr = crud.select(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txtstate.Text = dr["sname"].ToString();

                    }
                }
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            qry = "insert into State_mstr values('"+txtstate.Text+"')";
            crud.statemastercrud(qry);
            Label1.Text = "State Added .. ";
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

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
             clear();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            qry = "update state_mstr set sname='" + txtstate.Text + "' where sid = " + ViewState["sid"] ;
            crud.statemastercrud(qry);
            Response.Redirect("DispState.aspx");
        }
    }
}