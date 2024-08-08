<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="As_Your_Need_services.User.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <form action="Result.aspx" method="post" name="razorpayForm">
        <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
        <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
        <input id="razorpay_signature" type="hidden" name="razorpay_signature" />
    </form>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />


    <div class="sf-jobs-head">
                   
                              
                                 <center>  <button class="sf-jobs-position" id="rzp-button1" style="width:108px;background-color:#ffb600;font-size: 14px;border-radius: 12px;font-weight: 500;">Pay Now</button></center>
                        
                          </div>





    <%-- <center> <button class="gem-button gem-button-size-tiny gem-button-style-outline gem-button-text-weight-normal gem-button-border-2 gem-button-empty sf-sb-btn " id="rzp-button1" style="width: 108px;">Pay Now</button></center>--%>
    <br />
    <br />
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        var orderId = "<%=orderId%>"
        var options = {
            "name": "<%=product%>",
                "description": "<%=product%>",
                "order_id": orderId,
                "image": "images/logo.jpg",
                "prefill": {
                    "name": "<%=name%>",
                    "email": "<%=email%>",
                    "contact": "<%=contact%>",
                },
                "notes": {
                    "address": "<%=addressn%>",
                    "merchant_order_id": "<%=orderIds%>",
            },
            "theme": {
                "color": "#F37254"
            }
        }
        // Boolean whether to show image inside a white frame. (default: true)
        options.theme.image_padding = false;
        options.handler = function (response) {
            document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
            document.getElementById('razorpay_order_id').value = orderId;
            document.getElementById('razorpay_signature').value = response.razorpay_signature;
            document.razorpayForm.submit();
        };
        options.modal = {
            ondismiss: function () {
                console.log("This code runs when the popup is closed");
            },
            // Boolean indicating whether pressing escape key 
            // should close the checkout form. (default: true)
            escape: true,
            // Boolean indicating whether clicking translucent blank
            // space outside checkout form should close the form. (default: false)
            backdropclose: false
        };
        var rzp = new Razorpay(options);
        document.getElementById('rzp-button1').onclick = function (e) {
            rzp.open();
            e.preventDefault();
        }
    </script>

</asp:Content>
