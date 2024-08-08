<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="As_Your_Need_services.User.WebForm3" %>
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

                            <h2 class="m-b30">User Registration</h2>

                        </div>

                        <form runat="server" id="f1">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                            <div class="row">

                                

                                <!-- COLUMNS 1 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="txtfname" Text="*"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtfname" runat="server" placeholder="Full Name" class="form-control"></asp:TextBox>
                                        
                                        <%--<input type="text" name="fullname" placeholder="Name" class="form-control" required>--%>

                                    </div>

                                </div>

                                

                                <!-- COLUMNS 2 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Contact Number" ControlToValidate="txtcontact" Text="*"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Contact No Properly" ControlToValidate="txtcontact" Text="*" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="txtcontact" runat="server" placeholder="Phone" class="form-control"></asp:TextBox>

                                        <%--<input type="text" name="phone" placeholder="Phone" class="form-control">--%>

                                    </div>

                                </div>
                                                               

                               


                                <!-- COLUMNS 5 -->

                                <div class="col-md-12">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter address" Text="*" ControlToValidate="txtadd"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtadd" runat="server" placeholder="Address" class="form-control" TextMode="MultiLine"></asp:TextBox>

                                      <%--  <textarea name="message" placeholder="Message" class="form-control" required></textarea>--%>

                                    </div>

                                </div>

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
                                        <asp:DropDownList ID="ddlstate"  class="form-control" runat="server" AutoPostBack="true"  DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sid" >

                                          
                                        </asp:DropDownList>

                                        <%--<input type="text" name="subject" placeholder="Subject" class="form-control" required>--%>

                                        
                                    </div>

                                </div>

                                 <div class="col-md-6">

                                    <div class="form-group">
                                        
                                         <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [City_mstr] WHERE ([sid] = @sid)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlstate" PropertyName="SelectedValue" Name="sid" Type="String"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:DropDownList ID="ddlcity" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="city_name" DataValueField="city_id" ></asp:DropDownList>

                                        <%--<input type="text" name="subject" placeholder="Subject" class="form-control" required>--%>

                                       
                                    </div>

                                </div>
                                       
                                 <!-- COLUMNS 3 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Email Id" ControlToValidate="txtmail" Text="*"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Email ID Properly" ControlToValidate="txtmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                        <asp:TextBox ID="txtmail" runat="server" placeholder="Email" class="form-control" ></asp:TextBox>

                                       <%-- <input type="text" name="email" placeholder="Email" class="form-control" required>--%>

                                    </div>

                                </div>


                                <!-- COLUMNS 4 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtpass" Text="*">*</asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtpass" runat="server" placeholder="Password" class="form-control" TextMode="Password"></asp:TextBox>

                                        <%--<input type="text" name="subject" placeholder="Subject" class="form-control" required>--%>

                                    </div>

                                </div>


                                <div class="col-md-12">

                                    <div class="g-recaptcha" data-sitekey="6LfcCr0eAAAAAN2P-3cJJC1StgxbUWvwELbMVjnp"></div>

                                </div>

                                

                                

                            </div>

                            <div class="sf-contact-submit-btn">
                                <asp:Button ID="btn_submit" runat="server" Text="Registration"  class="site-button" OnClick="btn_submit_Click" style="left: 0px; top: 0px"/><br />
                                Already have An Account?<a href="SignIn.aspx">Sign In</a><br /><br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
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
