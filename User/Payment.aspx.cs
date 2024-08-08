using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.User
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        public string orderId;
        public string orderIds;
        public string name;
        public string product;
        public string email;
        public string contact;
        public string addressn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {

                    name = "Servento";
                    product = "Services";
                    email = "serviceservento@gmail.com";
                    contact = "9426976624";
                    addressn = "Delhi";
                    Session["product"] = product;
                    Session["totalprice"] = "100";
                    Dictionary<string, object> input = new Dictionary<string, object>();

                    int am = Convert.ToInt32(Session["tamt"]);
                    //string orderss = Session["OrderId"].ToString();
                    string orderss = System.DateTime.Now.Ticks.ToString();
                    orderIds = orderss;
                    //
                    input.Add("amount", am * 100);
                    //input.Add("amount", 100); // this amount should be same as transaction amount
                    input.Add("currency", "INR");
                    input.Add("receipt", orderss);
                    input.Add("payment_capture", 1);

                    string key = "rzp_test_ReNJbuPk5klQGp";
                    string secret = "XmatZazNE442hR7otaSPxTP2";

                    //Session["totalprice"] = "100";
                    RazorpayClient client = new RazorpayClient(key, secret);
                    System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                    Razorpay.Api.Order order = client.Order.Create(input);
                    orderId = order["id"].ToString();


                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}