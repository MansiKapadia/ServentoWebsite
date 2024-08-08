using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        String qry,mail,qry2,qry3,act;
        VenderCrud crud = new VenderCrud();
        Staffcrud crud2 = new Staffcrud();
        MyConnection MyCon = new MyConnection(); 
        int Staffid =0;
        String gender;


        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        
        int catid ,vid ;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                vid = Convert.ToInt32(Session["vid"].ToString());
                mail = Session["email"].ToString();
                String gender;
                act = Request.QueryString["act"];
                if (act != null) 
                {
                    btnsubmit.Visible = false;
                    btnupdate.Visible = true;
                    if (!IsPostBack)
                    {
                        Staffid = Convert.ToInt32(Request.QueryString["staffid"]);
                        ViewState["staffid"] = Staffid;

                        qry = "select * from Staff_mstr where staffid = '" + ViewState["staffid"] + "' ";
                        cn.Open();
                        cmd = new SqlCommand(qry, cn);
                        dr = cmd.ExecuteReader();
                        dr = crud2.select(qry);
                        dr.Read();
                        txtname.Text = dr["staffname"].ToString();
                        txtdob.Text = dr["dob"].ToString();
                        gender = dr["gender"].ToString();
                        txtadharcard.Text = dr["adharcard"].ToString();
                        txtadd.Text = dr["address"].ToString();
                        ddlstate.SelectedValue = dr["state"].ToString();
                        //ddlcity.SelectedValue = dr["city"].ToString();
                        txtcontact.Text = dr["mobno"].ToString();
                        Image1.ImageUrl = "Staff Profile/" + dr["profile"].ToString();
                        //catid = Convert.ToInt32(dr["cat_Id"].ToString());
                        cn.Close();

                        if (gender == "Male")
                        {
                            Radmale.Checked = true;
                        }
                        else if (gender == "female")
                        {
                            Radfemale.Checked = true;
                        }

                    }
                }                

                qry = "select * from Vender_mstr where vmail = '" + mail + "' ";
                cn.Open();
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();                
                dr = crud.select(qry);
                dr.Read();
                catid = Convert.ToInt32(dr["cat_Id"].ToString() ) ;
                cn.Close();
            }
            else
            {
                Response.Redirect("default.aspx");
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String gender,fname;
            if (Radmale.Checked)
            {
                gender = Radmale.Text;
            }
            else if (Radfemale.Checked)
            {
                gender = Radfemale.Text;
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
                        profile.SaveAs(Server.MapPath("Staff Profile/" + fname));
                        //Image1.ImageUrl = "Image/" + fname;

                        if (gender == null)
                        {
                            lbldisp.Text = "Please select gender";
                        }
                        else
                        {
                            decimal contactno = Convert.ToInt64(txtcontact.Text);
                            decimal adharcard = Convert.ToInt64(txtadharcard.Text);
                            //qry = "insert into Vender_mstr values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Value + "','" + ddlstate.SelectedItem.Value + "','" + txtmobno.Text + "','" + fname + "','"+ ddlcatogary.SelectedItem.Value +"','" + txtdesc.Text + "','" + 0 + "')";
                            qry2 = "insert into Staff_mstr values('" + vid + "','" + txtname.Text + "','" + txtdob.Text + "','" + gender + "','" + adharcard + "','" + txtadd.Text + "','" + ddlstate.SelectedValue + "','" + ddlcity.SelectedValue + "','" + contactno + "','" + fname + "','" + catid + "')";

                            crud2.staffmastercrud(qry2);

                            clear();
                            Response.Redirect("DispStaff.aspx");
                        }

                    }
                    else{
                        lbldisp.Text = "File Is Too Large";
                    }
                }
                else{
                    lbldisp.Text = "Please Image File";
                }
            }
            else{
                lbldisp.Text = "Please Select Your Photo";
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string gender="", fname;
            
            if (Radmale.Checked)
            {
                gender = Radmale.Text;
            }
            else if (Radfemale.Checked)
            {
                gender = Radfemale.Text;
            } 
            
            if (profile.HasFiles)
            {
                if (profile.PostedFile.ContentType == "image/jpeg" || profile.PostedFile.ContentType == "image/png")
                {
                    if (profile.PostedFile.ContentLength < 500000)
                    {
                        
                        fname = profile.PostedFile.FileName;
                        profile.SaveAs(Server.MapPath("Staff Profile/" + fname));
                        String adharcard = txtadharcard.Text;
                        //qry3 = "update Staff_mstr set staffname = '" + txtname.Text + "',dob = '" + txtdob.Text + "',adharcard = '" + adharcard + "',address = '" + txtadd.Text + "',state = '" + ddlstate.SelectedValue + "',city = '" + ddlcity.SelectedValue + "',mobno = '" + txtcontact.Text + "',profile='"+ fname +"' where staffid = '" + ViewState["staffid"] + "' ";
                        qry3 = "update Staff_mstr set staffname='" + txtname.Text + "',dob='" + txtdob.Text + "',gender='" + gender + "',adharcard='" + txtadharcard.Text + "',address='" + txtadharcard.Text + "',state='" + ddlstate.SelectedValue + "',city='" + ddlcity.SelectedValue + "',mobno='" + txtcontact.Text + "',profile='" + fname + "' where staffid='" + ViewState["staffid"] + "'";

                        crud2.staffmastercrud(qry3);
                        clear();
                        
                        
                        //qry = "update Category_mstr set cat_name ='" + txtcname.Text + "', cat_desc = '" + txtcdesc.Text + "', cat_image = '" + catimage + "' where cat_Id = '" + ViewState["catid"] + "' ";
                        


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
                String adharcard = txtadharcard.Text;
                
                //qry3 = "update Staff_mstr set staffname='" + txtname.Text + "',dob = '" + txtdob.Text + "',gender = '" + gender + "', adharcard '" + adharcard + "' ,address='" + txtadd.Text + "', state '" + ddlstate.SelectedValue + "',city = '" + ddlcity.SelectedValue + "', mobno = '" + Convert.ToInt64(txtcontact.Text) + "' where staffid = '" + ViewState["staffid"] + "' ";

                qry3 = "update Staff_mstr set staffname = '"+ txtname.Text + "',gender='" + gender + "',dob = '" + txtdob.Text +"',adharcard = '"+ adharcard +"',address = '"+ txtadd.Text +"',state = '"+ ddlstate.SelectedValue +"',city = '"+ ddlcity.SelectedValue +"',mobno = '"+ txtcontact.Text +"' where staffid = '"+ ViewState["staffid"] + "' ";
                crud2.staffmastercrud(qry3);
                clear();
                Response.Redirect("DispStaff.aspx");

                //lbldisp.Text = "Please Select Your Photo";
            }

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
       
