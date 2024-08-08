using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Admin
{
    public partial class VoucherDel : System.Web.UI.Page
    {
        String qry;
        VoucherCrud crud = new VoucherCrud();
        protected void Page_Load(object sender, EventArgs e)
        {
            int voucher_id = Convert.ToInt32( Request.QueryString.Get("vid") );
            qry = "delete from Voucher_mstr where voucher_id=" + voucher_id ;
            crud.vouchermastercrud(qry);
            Response.Redirect("DispVoucher.aspx");

        }
    }
}