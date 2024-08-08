<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="Otp.aspx.cs" Inherits="As_Your_Need_services.User.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-content">
            <%--<div class="aon-contact-area">--%>

              <div class="container">

               
                <div class="section-content">

               

                  <div class="sf-contact-form-wrap">

                    <!--Contact Information-->  

                    <div class="sf-contact-form">

                        <div class="sf-con-form-title text-center">

                            <h2 class="m-b30">Verification</h2>

                        </div>

                        <form runat="server" id="f1">
                            

                            <div class="row">

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:TextBox ID="txtotp" runat="server" placeholder="OTP" class="form-control" ></asp:TextBox>

                                        <%--<input type="text" name="subject" placeholder="Subject" class="form-control" required>--%>

                                    </div>

                                </div>


                                 

                                <div class="col-md-12">

                                    <div class="g-recaptcha" data-sitekey="6LfcCr0eAAAAAN2P-3cJJC1StgxbUWvwELbMVjnp"></div>

                                </div>

                                

                                

                            </div>

                            <div class="sf-contact-submit-btn">
                                <asp:Button ID="btn_submit" runat="server" Text="Submit" class="site-button" OnClick="btn_submit_Click"  />

                             <%--   <button class="site-button" type="submit">Submit</button>--%>

                            </div>
                             <div class="col-md-6">

                                    <div class="form-group">
                            <p>
                                <asp:Label ID="lbldisp" runat="server"  ></asp:Label>

                            </p>
                                        </div>
                                 </div>

                        </form>

                    </div>

                    <!--Contact Information End-->

                  </div>              

                </div>

        

              </div>

            </div>
</asp:Content>
