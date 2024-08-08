<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="As_Your_Need_services.User.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="page-content">

            <!-- Contact Us-->

            <%--<div class="aon-contact-area">--%>

              <div class="container">

               
                <div class="section-content">

               

                  <div class="sf-contact-form-wrap">

                    <!--Contact Information-->  

                    <div class="sf-contact-form">

                        <div class="sf-con-form-title text-center">

                            <h2 class="m-b30">Forget password</h2>

                        </div>

                        <form runat="server" id="f1">
                            

                            <div class="row">

                                

                                <!-- COLUMNS 1 -->

                              

                                

                                <!-- COLUMNS 2 -->

                                <div class="col-md-11">

                                    <div class="form-group">

                                        <asp:TextBox ID="txtmail" runat="server" placeholder="Email" class="form-control" ></asp:TextBox>
                                        

                                       <%-- <input type="text" name="email" placeholder="Email" class="form-control" required>--%>

                                    </div>

                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email ID" ControlToValidate="txtmail" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                                <!-- COLUMNS 5 -->

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
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

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
