using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlDataReader dr;        
        String qry, qry2, qry3 ,qry4;
        VenderCrud vendor =new VenderCrud();
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        int stateid = 0, cityid = 0,cateid=0;
        // MyConnection cn = new MyConnection();
        string vid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                              
                vid = Request.QueryString["vid"];
                if (vid != null)
                {
                    cn.Open();
                    qry = "Select * from Vender_mstr where vid =" + vid;
                    cmd=new SqlCommand(qry,cn);
                    dr = cmd.ExecuteReader();
                    //dr = vendor.select(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        //ddlsname.SelectedValue = dr["sid"].ToString();
                        //txtcname.Text = dr["city_name"].ToString();
                        lblvname.Text = dr["vfname"].ToString();
                        lblphn.Text = dr["vcontact"].ToString();
                        lblmail.Text = dr["vmail"].ToString();
                        lblvfname.Text = dr["vfname"].ToString();
                        lbllname.Text = dr["vlname"].ToString();
                        lblvmail.Text = dr["vmail"].ToString();
                        lblvpass.Text = dr["vpass"].ToString();
                        lblvaddress.Text = dr["vaddress"].ToString();
                        lblvdesc.Text = dr["vdesc"].ToString();
                        lblcontact.Text = dr["vcontact"].ToString();
                        //  lblcity.Text = dr["vstate"].ToString();
                        //  lblcity1.Text = dr["vcity"].ToString();                        
                        stateid = Convert.ToInt32(dr["vstate"].ToString());
                        cityid = Convert.ToInt32(dr["vcity"].ToString());
                        cateid = Convert.ToInt32(dr["cat_Id"].ToString());
                        vprofile.ImageUrl = "../Vendor/Profile/" + dr["vprofile"].ToString();
                        Image1.ImageUrl = "../Vendor/Profile/" + dr["vprofile"].ToString();
                        lbldisp.Text = dr["cat_Id"].ToString();
                    }
                    cn.Close();
                    
                    cn.Open();
                    qry2 = "select * from State_mstr where sid=" + stateid ;
                
                    cmd = new SqlCommand(qry2, cn);
                    dr = cmd.ExecuteReader();

                    //dr = vendor.select(qry2);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        lblcity.Text = dr["sname"].ToString();
                    }
                    cn.Close();


                    
                    cn.Open();
                    qry3 = "select * from City_mstr where city_id=" + cityid;
                    cmd = new SqlCommand(qry3, cn);
                    dr = cmd.ExecuteReader();
                    //dr = vendor.select(qry3);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        lblcity1.Text = dr["city_name"].ToString();
                    }
                    cn.Close();

                    cn.Open();
                    qry4 = "select * from category_mstr where cat_Id=" + cateid;
                    cmd =new SqlCommand(qry4, cn);   
                    dr= cmd.ExecuteReader();    
                    if(dr.HasRows)
                    {
                        dr.Read();
                        lbldisp.Text = dr["cat_name"].ToString();
                    }
                    cn.Close();
                }
                else
                {
                    Response.Redirect("VendorManagement.aspx");
                }
                cn.Close();
            }
        }

        protected void chkapp_CheckedChanged(object sender, EventArgs e)
        {
          
            vid = Request.QueryString["vid"];
            if (chkapp.Checked)
            {
                qry = "update Vender_mstr set vstatus='Approval'" + " where vid=" + vid;
                vendor.vendermastercrud(qry);
                Response.Redirect("VendorManagement.aspx");
            }
            else
            {
                Response.Redirect("VendorManagement.aspx");
            }    
        }

        protected void btn_app_Click(object sender, EventArgs e)
        {
            qry = "update Vender_mstr where vstatus=Approval" + " where vid=" + vid;
            vendor.vendermastercrud(qry);
        }
    }
}