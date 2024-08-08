using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        String gender;
        String mail;
        String qry;
        SqlDataReader dr;
        VenderCrud crud = new VenderCrud();
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();

        SqlDataAdapter dap = new SqlDataAdapter();
        SqlDataAdapter dap1 = new SqlDataAdapter();
        MyConnection MyCon = new MyConnection();


        protected void Page_Load(object sender, EventArgs e)
        {
            Lbldisp.Text = null;

            if (Session["email"] != null)
            {
               
                if (!IsPostBack)
                {
                    
                    fillState();
                    ProfileImage.ImageUrl = "profile/" + Session["vprofile"].ToString();
                    mail = Session["email"].ToString();
                    qry = "select * from Vender_mstr where vmail = '" + mail + "' ";
                    dr = crud.select(qry);
                    dr.Read();
                    gender = dr["vgender"].ToString();  
                    txtvfname.Text = dr["vfname"].ToString();
                    txtvlname.Text = dr["vlname"].ToString();
                    txtvmail.Text = dr["vmail"].ToString();
                    txtvcontact.Text = dr["vcontact"].ToString();
                    txtvaddress.Text = dr["vaddress"].ToString();
                    txtvdesc.Text = dr["vdesc"].ToString();
                    fillState();
                    //ddlstate.SelectedItem.Text = dr["vstate"].ToString();

                    if (gender== "Male")
                    {
                        Radmale.Checked= true;
                    }
                    else if (gender == "Female")
                    {
                        Radfemale.Checked = true;
                    }
                   


                }
            
            }
            else
            {
                Response.Redirect("default.aspx");
            }


        }

        void fillState()
        {
            ds.Clear();
            qry = "select * from state_mstr";
            dap = new SqlDataAdapter(qry, MyCon.cn);
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
            dap1 = new SqlDataAdapter(qry, MyCon.cn);
            dap1.Fill(ds1);
            ddlcity.DataSource = ds1.Tables[0];
            ddlcity.DataTextField = "city_name";
            ddlcity.DataValueField = "city_id";
            ddlcity.DataBind();

            ddlcity.Items.Insert(0, "------Select City -----");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            String gender2;
            //String fname;
            if (Radmale.Checked)
            {
                gender2 = Radmale.Text;
            }
            else if (Radfemale.Checked)
            {
                gender2 = Radfemale.Text;
            }            
            else
            {
                gender2 = null;
            }
            Lbldisp.Text = null;

            
            if (gender2 != null)
            {
                if (ddlstate.SelectedIndex != 0)
                {
                    if (ddlcity.SelectedIndex != 0)
                    {
                        if (updateprofile.HasFile)
                        {
                            if (updateprofile.PostedFile.ContentType == "image/jpeg" || updateprofile.PostedFile.ContentType == "image/png")
                            {
                                if (updateprofile.PostedFile.ContentLength < 5000000)
                                {

                                    String fname = (updateprofile.PostedFile.FileName);
                                    updateprofile.SaveAs(Server.MapPath("Profile/" + fname));
                                    mail = Session["email"].ToString();
                                    qry = "update Vender_mstr set vfname='" + txtvfname.Text + "',vlname='" + txtvlname.Text + "',vmail='" + txtvmail.Text + "',vgender='" + gender2 + "',vaddress='" + txtvaddress.Text + "',vcity='" + ddlcity.SelectedIndex + "',vstate='" + ddlstate.SelectedIndex + "',vcontact='" + txtvcontact.Text + "',vprofile='" + fname + "',vdesc='" + txtvdesc.Text + "' where vmail='" + Session["email"] + "'";
                                    //qry = "update Vender_mstr set vfname = '" + txtvfname.Text + "',vlname = '" + txtvlname.Text + "',vmail='" + txtvmail.Text + "',vcontact='" + txtvcontact.Text + "',vgender = '"+ gender2 +"',vaddress='" + txtvaddress.Text + "' ,vstate='" + ddlstate.SelectedValue + "',vcity = '" + ddlcity.SelectedValue + "' ,vdesc='" + txtvdesc.Text + "'  where vmail = '" + mail + "' ";
                                    crud.vendermastercrud(qry);
                                    Response.Redirect("VProfile.aspx");

                                }
                                else
                                {
                                    Lbldisp.Text = "File Is To Large";
                                }
                            }
                            else
                            {
                                Lbldisp.Text = "Please Select image file";
                            }

                        }
                        else
                        {
                            mail = Session["email"].ToString();
                            qry = "update Vender_mstr set vfname='" + txtvfname.Text + "',vlname='" + txtvlname.Text + "',vmail='" + txtvmail.Text + "',vgender='" + gender2 + "',vaddress='" + txtvaddress.Text + "',vcity='" + ddlcity.SelectedIndex + "',vstate='" + ddlstate.SelectedIndex + "',vcontact='" + txtvcontact.Text + "',vdesc='" + txtvdesc.Text + "' where vmail='" + Session["email"] + "'";
                            //qry = "update Vender_mstr set vfname = '" + txtvfname.Text + "',vlname = '" + txtvlname.Text + "',vmail='" + txtvmail.Text + "',vcontact='" + txtvcontact.Text + "',vgender = '"+ gender2 +"',vaddress='" + txtvaddress.Text + "' ,vstate='" + ddlstate.SelectedValue + "',vcity = '" + ddlcity.SelectedValue + "' ,vdesc='" + txtvdesc.Text + "'  where vmail = '" + mail + "' ";
                            crud.vendermastercrud(qry);
                            Response.Redirect("VProfile.aspx");
                        }




                    }
                    else
                    {
                        Lbldisp.Text = "Please select City";
                    }

                }
                else
                {
                    Lbldisp.Text = "Please select State";
                }

            }
            else
            {
                Lbldisp.Text = "Please Select Gender";
            }

            

        }
    }
}