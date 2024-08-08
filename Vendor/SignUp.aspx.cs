using As_Your_Need_services.Admin;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Configuration;

namespace As_Your_Need_services.Vendor
{
    public partial class SignUp : System.Web.UI.Page
    {
        //MyConnection MyCon = new MyConnection();
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader dr;
        //SqlDataReader dr;
        String qry,qry2;
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();

        SqlDataAdapter dap = new SqlDataAdapter();
        SqlDataAdapter dap1 = new SqlDataAdapter();
        VenderCrud crud = new VenderCrud();
        String fname;
        protected void Page_Load(object sender, EventArgs e)
        {

            fillState();
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {

            cn.Open();
            qry2 = "Select * from Vender_mstr where vmail = '" + txtemail.Text + "'";
            cmd = new SqlCommand(qry2, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                //txtemail.Text = dr["vmail"].ToString();
                lbldisp.Text = "Email id already Exits...";
            }
            else
            {

                String gender;
                if (radmale.Checked)
                {
                    gender = radmale.Text;
                }
                else if (radfemale.Checked)
                {
                    gender = radfemale.Text;
                }
                else
                {
                    gender = null;
                }


                if (profile.HasFiles)
                {
                    if (profile.PostedFile.ContentType == "image/jpeg" || profile.PostedFile.ContentType == "image/png")
                    {
                        if (profile.PostedFile.ContentLength < 5000000)
                        {
                            fname = profile.PostedFile.FileName;
                            profile.SaveAs(Server.MapPath("Profile/" + fname));
                            

                            if (gender == null)
                            {
                                lbldisp.Text = "Please select gender";
                            }



                            qry = "insert into Vender_mstr values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + gender + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Value + "','" + ddlstate.SelectedItem.Value + "','" + txtmobno.Text + "','" + fname + "','" + ddlcatogary.SelectedItem.Value + "','" + txtdesc.Text + "','" + "Pending" + "')";

                            crud.vendermastercrud(qry);
                            clear();
                            Response.Redirect("Processing.aspx");

                        }
                        else
                        {
                            lbldisp.Text = "File Is Too Large";
                        }

                    }
                    else
                    {
                        lbldisp.Text = "Please Image File";
                    }

                }
                else
                {
                    lbldisp.Text = "Please Select Your Photo";
                }

            }
                            ;
            cn.Close();


            
            
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

        void fillState()
        {
            ds.Clear();
            qry = "select * from state_mstr";
            dap = new SqlDataAdapter(qry, cn);
            dap.Fill(ds);
            ddlstate.DataSource = ds.Tables[0];
            ddlstate.DataTextField = "sname";
            ddlstate.DataValueField = "sid";
            ddlstate.DataBind();

            ddlstate.Items.Insert(0, "------Select State -----");
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            ds1.Clear();
            qry = "select * from city_mstr where sid=" + ddlstate.SelectedValue;
            dap1 = new SqlDataAdapter(qry, cn);
            dap1.Fill(ds1);
            ddlcity.DataSource = ds1.Tables[0];
            ddlcity.DataTextField = "city_name";
            ddlcity.DataValueField = "city_id";
            ddlcity.DataBind();

            ddlcity.Items.Insert(0, "------Select City -----");
        }
    }
}