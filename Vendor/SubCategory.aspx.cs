using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace As_Your_Need_services.Vendor
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        String mail;
        String qry , qry2 ,qry3 ,qry4;
        VenderCrud crud = new VenderCrud();
        SubCatCrud crud2 = new SubCatCrud();
        
        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        SqlDataReader dr , dr1;

        int catid;
        int vid;
        String fname;
        

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["email"] != null)
            {
                if (!IsPostBack)
                {
                    String act = Request.QueryString.Get("act");
                    String subcatid = Request.QueryString.Get("subcatid");
                    ViewState["subcatid"] = subcatid;

                    if (act == "edit")
                    {
                        btn_submit.Visible = false;
                        btn_update.Visible = true;

                        qry = "Select * from Sub_Category where sub_cat_id =" + subcatid;
                        dr = crud2.select(qry);
                        if (dr.HasRows)
                        {
                            dr.Read();
                            txtsubcatname.Text = dr["sub_cat_name"].ToString();
                            txtsubdesc.Text = dr["sub_cat_desc"].ToString();
                            txtsubprice.Text = dr["sub_cat_price"].ToString();

                        }
                    }
                }


                mail = Session["email"].ToString();
                
                cn.Open();
                qry = "select * from Vender_mstr where vmail = '" + mail + "' ";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();                
                dr.Read();
                catid = Convert.ToInt32(dr["cat_Id"]);
                vid = Convert.ToInt32(dr["vid"]);
                cn.Close();

                cn.Open();
                qry2 = "select * from Category_mstr where cat_Id = '" + catid + "' ";
                cmd = new SqlCommand(qry2, cn);
                dr1 = cmd.ExecuteReader();
                dr1.Read();
                lblcat.Text = dr1["cat_name"].ToString();
                cn.Close() ;

            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int num = r.Next(1000, 9999);

            if (fupsubimage.HasFiles)
            {
                if (fupsubimage.PostedFile.ContentType == "image/jpeg" || fupsubimage.PostedFile.ContentType == "image/png")
                {
                    if (fupsubimage.PostedFile.ContentLength < 5000000)
                    {
                        fname = fupsubimage.PostedFile.FileName;
                        fupsubimage.SaveAs(Server.MapPath("SubCategory/" + fname));
                        
                        qry3 = "insert into Sub_Category values('" + catid + "','" + txtsubcatname.Text + "','"+ txtsubdesc.Text +"','"+ txtsubprice.Text +"','"+ fname +"','"+ vid +"')";
                        crud2.subcatcrud(qry3);
                        Response.Redirect("DispSubCat.aspx");
                        //clear();
                        // lbldisp.Text = "Sub-Category is inserted ..... ";
                       
                    }
                    else
                    {
                        lbldisp.Text = "File Is Too Large";
                    }

                }
                else
                {
                    lbldisp.Text = "Please Select Image File";
                }

            }
            else
            {
                lbldisp.Text = "Please Select Sub Category Photo";
            }
            
            
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {

            if (fupsubimage.HasFiles)
            {
                if (fupsubimage.PostedFile.ContentType == "image/jpeg" || fupsubimage.PostedFile.ContentType == "image/png")
                {
                    if (fupsubimage.PostedFile.ContentLength < 500000)
                    {

                        fname = fupsubimage.PostedFile.FileName;
                        fupsubimage.SaveAs(Server.MapPath("SubCategory/" + fname));
                        qry4 = "update Sub_Category set sub_cat_name ='" + txtsubcatname.Text + "' , sub_cat_desc = '" + txtsubdesc.Text + "' , sub_cat_price = '" + txtsubprice.Text + "',sub_cat_img = '"+ fname +"' where sub_cat_id = " + ViewState["subcatid"];
                        crud2.subcatcrud(qry4);
                        Response.Redirect("DispSubCat.aspx");

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
                qry4 = "update Sub_Category set sub_cat_name ='" + txtsubcatname.Text + "' , sub_cat_desc = '" + txtsubdesc.Text + "' , sub_cat_price = '" + txtsubprice.Text + "' where sub_cat_id = " + ViewState["subcatid"];
                crud2.subcatcrud(qry4);
                Response.Redirect("DispSubCat.aspx");
            }
            //qry4 = "update Sub_Category set sub_cat_name ='" + txtsubcatname.Text + "' , sub_cat_desc = '"+ txtsubdesc.Text +"' , sub_cat_price = '"+ txtsubprice.Text +"' where sub_cat_id = " + ViewState["subcatid"];
            //crud2.subcatcrud(qry4);
            //Response.Redirect("DispSubCat.aspx");
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