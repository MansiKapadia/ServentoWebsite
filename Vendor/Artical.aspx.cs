using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        ArticalCRUD crud = new ArticalCRUD();
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
                String anid = Request.QueryString.Get("anid");
                ViewState["anid"] = anid;

                if (act == "edit")
                {
                    btnsubmit.Visible = false;
                    btn_update.Visible = true;

                    qry = "Select * from Article_mstr where anid = " + ViewState["anid"];
                    dr = crud.select(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        //ddlsname.SelectedValue = dr["sid"].ToString();
                        txttitle.Text = dr["title"].ToString();
                        txtadesc.Text = dr["adesc"].ToString();
                    }
                }
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Fileupload1.HasFiles)
            {
                if (Fileupload1.PostedFile.ContentType == "image/jpeg" || Fileupload1.PostedFile.ContentType == "image/png")
                {
                    if (Fileupload1.PostedFile.ContentLength < 5000000)
                    {
                        fname = Fileupload1.PostedFile.FileName;
                        Fileupload1.SaveAs(Server.MapPath("Artical/" + fname));
                        //Image1.ImageUrl = "Image/" + fname;


                        //qry = "insert into Vender_mstr values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Value + "','" + ddlstate.SelectedItem.Value + "','" + txtmobno.Text + "','" + fname + "','"+ ddlcatogary.SelectedItem.Value +"','" + txtdesc.Text + "','" + 0 + "')";
                        //qry = "insert into Vender_mstr values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + gender + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Value + "','" + ddlstate.SelectedItem.Value + "','" + txtmobno.Text + "','" + fname + "','" + ddlcatogary.SelectedItem.Value + "','" + txtdesc.Text + "','" + "Pending" + "')";
                        qry = "insert into Article_mstr values('" + fname + "','Vendor','" + txttitle.Text + "','" + txtadesc.Text + "')";
                        crud.articalmastercrud(qry);
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
                Label1.Text = "Please Select Image";
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

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (Fileupload1.HasFiles)
            {
                if (Fileupload1.PostedFile.ContentType == "image/jpeg" || Fileupload1.PostedFile.ContentType == "image/png")
                {
                    if (Fileupload1.PostedFile.ContentLength < 5000000)
                    {
                        fname = (Fileupload1.PostedFile.FileName);
                        Fileupload1.SaveAs(Server.MapPath("Artical/" + fname));
                        qry = "update Article_mstr set image='" + fname + "',postby='Vendor',title='" + txttitle.Text + "',adesc='" + txtadesc.Text + "' where anid='" + ViewState["anid"] + "'";
                        //qry = "insert into Article_mstr values('" + fname + "','Admin','" + txtatitle.Text + "','" + txtadesc.Text + "')";
                        crud.articalmastercrud(qry);
                        Response.Redirect("DispArtical.aspx");
                       // clear();


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
                qry = "update Article_mstr set postby='Vendor',title='" + txttitle.Text + "',adesc='" + txtadesc.Text + "' where anid='" + ViewState["anid"] + "'";
                //qry = "insert into Article_mstr values('" + fname + "','Admin','" + txtatitle.Text + "','" + txtadesc.Text + "')";
                crud.articalmastercrud(qry);
                Response.Redirect("DispArtical.aspx");
                //clear();

            }
        }
    }
}