using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        ArticalCRUD crud = new ArticalCRUD();
        String fname;
        String qry;
        string anid;
        SqlDataReader dr;
        String qry2;

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
                String anid = Request.QueryString.Get("anid");
                ViewState["anid"] = anid;

                if (act == "edit")
                {
                    Btn_submit.Visible = false;
                    Btn_update.Visible = true;

                    qry = "Select * from Article_mstr where anid = " + ViewState["anid"] ;
                    dr = crud.select(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        //ddlsname.SelectedValue = dr["sid"].ToString();
                        txtatitle.Text = dr["title"].ToString();
                        txtadesc.Text = dr["adesc"].ToString();
                    }
                }
            }
            

        }

        protected void Btn_submit_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 5000000)
                    {
                        fname = FileUpload1.PostedFile.FileName;
                        FileUpload1.SaveAs(Server.MapPath("../Vendor/Artical/" + fname));
                        //Image1.ImageUrl = "Image/" + fname;


                        //qry = "insert into Vender_mstr values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Value + "','" + ddlstate.SelectedItem.Value + "','" + txtmobno.Text + "','" + fname + "','"+ ddlcatogary.SelectedItem.Value +"','" + txtdesc.Text + "','" + 0 + "')";
                        //qry = "insert into Vender_mstr values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + gender + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Value + "','" + ddlstate.SelectedItem.Value + "','" + txtmobno.Text + "','" + fname + "','" + ddlcatogary.SelectedItem.Value + "','" + txtdesc.Text + "','" + "Pending" + "')";
                        qry = "insert into Article_mstr values('" + fname + "','Admin','" + txtatitle.Text + "','" + txtadesc.Text + "')";
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
                    Label1.Text = "Please Image File";
                }

            }
            else
            {
                Label1.Text = "Please Select Your Photo";
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
        protected void Btn_update_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 5000000)
                    {
                        fname = FileUpload1.PostedFile.FileName;
                        FileUpload1.SaveAs(Server.MapPath("../Vendor/Artical/" + fname));
                        qry = "update Article_mstr set image='" + fname + "',postby='Admin',title='" + txtatitle.Text + "',adesc='" + txtadesc.Text + "' where anid='" + ViewState["anid"] +"'"; 
                        //qry = "insert into Article_mstr values('" + fname + "','Admin','" + txtatitle.Text + "','" + txtadesc.Text + "')";
                        crud.articalmastercrud(qry);
                        Response.Redirect("DispArticalAdmin.aspx");
                        clear();


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
                qry = "update Article_mstr set postby='Admin',title='" + txtatitle.Text + "',adesc='" + txtadesc.Text + "' where anid='" + ViewState["anid"] + "'";
                //qry = "insert into Article_mstr values('" + fname + "','Admin','" + txtatitle.Text + "','" + txtadesc.Text + "')";
                crud.articalmastercrud(qry);
                Response.Redirect("DispArticalAdmin.aspx");
                clear();

            }
        }
    }
}