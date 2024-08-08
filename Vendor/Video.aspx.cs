using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        VideoCRUD crud = new VideoCRUD();
        String fname;
        String qry;
        string anid;
        SqlDataReader dr;
        String qry2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {

            }
            else
            {
                Response.Redirect("default.aspx");
            }
            if (!IsPostBack)
            {
                String act = Request.QueryString.Get("act");
                int video_id = Convert.ToInt32( Request.QueryString.Get("video_id") );
                ViewState["video_id"] = video_id;

                if (act == "edit")
                {
                    btnsubmit.Visible = false;
                    btnupdate.Visible = true;

                    qry = "Select * from Video_mstr where video_id = " + ViewState["video_id"];
                    dr = crud.select(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        //ddlsname.SelectedValue = dr["sid"].ToString();
                        ddlcate.SelectedValue = dr["sub_cat_id"].ToString();
                        txturl.Text = dr["vurl"].ToString();
                        //txtadesc.Text = dr["adesc"].ToString();
                    }
                }
            }


        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 5000000)
                    {
                        fname = FileUpload1.PostedFile.FileName;
                        FileUpload1.SaveAs(Server.MapPath("Video/" + fname));
                        //Image1.ImageUrl = "Image/" + fname;
                        int vid = Convert.ToInt32( Session["vid"]);

                        //qry = "insert into Vender_mstr values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Value + "','" + ddlstate.SelectedItem.Value + "','" + txtmobno.Text + "','" + fname + "','"+ ddlcatogary.SelectedItem.Value +"','" + txtdesc.Text + "','" + 0 + "')";
                        //qry = "insert into Vender_mstr values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + gender + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Value + "','" + ddlstate.SelectedItem.Value + "','" + txtmobno.Text + "','" + fname + "','" + ddlcatogary.SelectedItem.Value + "','" + txtdesc.Text + "','" + "Pending" + "')";
                        //qry = "insert into Article_mstr values('" + fname + "','Vendor','" + txttittle.Text + "','" + txtadesc.Text + "')";
                        qry = "insert into Video_mstr values('" + vid + "','" + ddlcate.SelectedValue + "','" + txturl.Text + "','" + fname + "')";
                        crud.videomastercrud(qry);
                        clear();


                    }
                    else
                    {
                        Label1.Text = "File Is Too Large";
                    }

                }
                else
                {
                    Label1.Text = "Please Select Image File";
                }

            }
            else
            {
                Label1.Text = "Please Select Video Image";
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

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 5000000)
                    {
                        fname = (FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("Video/" + fname));
                        qry = "update video_mstr set sub_cat_id ='" + ddlcate.SelectedValue + "',vurl ='" + txturl.Text + "',vimage = '" + fname + "' where video_id = '" + ViewState["video_id"] + "' ";
                        crud.videomastercrud(qry);
                        Response.Redirect("DispVideo.aspx");                        
                    }
                    else
                    {
                        Label1.Text = "File Is Too Large";
                    }
                }
                else
                {
                    Label1.Text = "Please Image File";
                }
            }
            else
            {
                qry = "update Video_mstr set sub_cat_id='" + ddlcate.SelectedValue + "',vurl='" + txturl.Text + "' where video_id = '"+ ViewState["video_id"] + "'";
                //qry = "insert into Article_mstr values('" + fname + "','Admin','" + txtatitle.Text + "','" + txtadesc.Text + "')";
                crud.videomastercrud(qry);
                Response.Redirect("DispVideo.aspx");
                //clear();

            }
        }
    }
}