using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace As_Your_Need_services.Admin
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlDataReader dr;
        String catimage;
        String qry;
        CategoryCrud crud = new CategoryCrud();
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
                String catid = Request.QueryString.Get("catid");
                ViewState["catid"] = catid;

                if (act == "edit")
                {
                    btn_submit.Visible = false;
                    btn_update.Visible = true;

                    qry = "Select * from Category_mstr where cat_Id =" + catid;
                    dr = crud.select(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txtcname.Text = dr["cat_name"].ToString();
                        txtcdesc.Text = dr["cat_desc"].ToString();

                    }
                }
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (cimage.HasFiles)
            {
                if (cimage.PostedFile.ContentType == "image/jpeg" || cimage.PostedFile.ContentType == "image/png")
                {
                    if (cimage.PostedFile.ContentLength < 500000)
                    {
                        catimage = cimage.PostedFile.FileName;
                        cimage.SaveAs(Server.MapPath("CategoryImage/" + catimage));

                        qry = "insert into Category_mstr values('" + txtcname.Text + "','" + txtcdesc.Text + "','" + catimage + "')";
                        crud.categorymastercrud(qry);
                        clear();
                        

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
        void clear()
        {
            foreach (object control in fcategory.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = "";
                }
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (cimage.HasFiles)
            {
                if (cimage.PostedFile.ContentType == "image/jpeg" || cimage.PostedFile.ContentType == "image/png")
                {
                    if (cimage.PostedFile.ContentLength < 500000)
                    {
                        catimage = cimage.PostedFile.FileName;
                        cimage.SaveAs(Server.MapPath("CategoryImage/" + catimage));

                        qry = "update Category_mstr set cat_name ='" + txtcname.Text + "', cat_desc = '" + txtcdesc.Text + "', cat_image = '" + catimage + "' where cat_Id = '"+ ViewState["catid"] + "' ";
                        crud.categorymastercrud(qry);
                        clear();


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
                qry = "update Category_mstr set cat_name ='" + txtcname.Text + "', cat_desc = '" + txtcdesc.Text + "' where cat_Id = '" + ViewState["catid"] + "' ";
                crud.categorymastercrud(qry);
                clear();

                //lbldisp.Text = "Please Select Your Photo";
            }

        }

    }
 }
