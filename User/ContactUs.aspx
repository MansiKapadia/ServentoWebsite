<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="As_Your_Need_services.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <!-- Content -->

        <div class="page-content">

            <!--Banner-->

            <div class="aon-page-benner-area">

              <div class="aon-page-banner-row" style="background-image: url(images/banner/job-banner.jpg)">

                <div class="sf-overlay-main" style="opacity:0.8; background-color:#022279;"></div>

                <div class="sf-banner-heading-wrap">

                  <div class="sf-banner-heading-area">

                    <div class="sf-banner-heading-large">Contact Us</div>

                    <div class="sf-banner-breadcrumbs-nav">

                      <ul class="list-inline">

                        <li><a href="Default.aspx"> Home </a></li>

                        <li>Contact us</li>

                      </ul>

                    </div>

                  </div>

                </div>

              </div>

            </div>            

            <!--Banner-->



            <!-- Contact Us-->

            <div class="aon-contact-area">

              <div class="container">

                <!--Title Section Start-->

                <div class="section-head text-center">

                    <h2 class="sf-title">Contact Information</h2>

                    <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do usmod tempor incididunt ut labore et dolore magna aliqua.</p>--%>

                </div>

                <!--Title Section End-->



                <div class="section-content">

               

                  <div class="sf-contact-info-wrap">  

                    <div class="row">

            

                        <!-- COLUMNS 1 -->

                        <div class="col-lg-4 col-md-6">

                            <div class="sf-contact-info-box">

                                <div class="sf-contact-icon">

                                    <span><img src="images/contact-us/1.png" alt=""></span>

                                </div>

                                <div class="sf-contact-info">

                                    <h4 class="sf-title">Mailing Address</h4>

                                    <p>121 King Street, Melbourne, 

                                        Surat, Gujarat, India</p>

                                </div>

                            </div>

                        </div>

                        <!-- COLUMNS 2 -->

                        <div class="col-lg-4 col-md-6">

                            <div class="sf-contact-info-box">

                                <div class="sf-contact-icon">

                                    <span><img src="images/contact-us/2.png" alt=""></span>

                                </div>

                                <div class="sf-contact-info">

                                    <h4 class="sf-title">Email Info</h4>

                                    <p>servicesservento@gmail.com</p><p>serventosupport@gmail.com</p>

                                </div>

                            </div>

                        </div>

                        <!-- COLUMNS 3 -->

                        <div class="col-lg-4 col-md-6">

                            <div class="sf-contact-info-box">

                                <div class="sf-contact-icon">

                                    <span><img src="images/contact-us/3.png" alt=""></span>

                                </div>

                                <div class="sf-contact-info">

                                    <h4 class="sf-title">Phone Number</h4>

                                    <p>0800-123456 (24/7 Support Line)</p>

                                    <p>0800-123654</p>

                                </div>

                            </div>

                        </div>

            

                    </div>

                  </div>



                  <div class="sf-contact-form-wrap">

                    <!--Contact Information-->  

                    <div class="sf-contact-form">

                        <div class="sf-con-form-title text-center">

                            <h2 class="m-b30">Contact Information</h2>

                        </div>

                        <form  runat="server" >

                            <div class="row">

                                

                                <!-- COLUMNS 1 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="txtuname" Text="*"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtuname" runat="server" placeholder="Name" class="form-control"></asp:TextBox>

                                        <%--<input type="text" name="fullname" placeholder="Name" class="form-control" required>--%>

                                    </div>

                                </div>

                                

                                <!-- COLUMNS 2 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Email ID" ControlToValidate="txtmail">*</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Email Properly" ControlToValidate="txtmail" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="txtmail" runat="server" placeholder="Email" class="form-control"></asp:TextBox>

                                      <%--  <input type="text" name="email" placeholder="Email" class="form-control" required>--%>

                                    </div>

                                </div>

                                <!-- COLUMNS 3 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Contact Details" ControlToValidate="txtcontact" Text="*"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Contact No Properly" ControlToValidate="txtcontact" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$">*</asp:RegularExpressionValidator>
                                        <asp:TextBox ID="txtcontact" runat="server" placeholder="Phone" class="form-control"></asp:TextBox>

                                      <%--  <input type="text" name="phone" placeholder="Phone" class="form-control">--%>

                                    </div>

                                </div>

                                <!-- COLUMNS 4 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <br />
                                        <asp:DropDownList ID="ddlservice" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="cat_name" DataValueField="cat_Id" AppendDataBoundItems="true">
                                            <asp:ListItem text="Select Service" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                        <%--  <asp:TextBox ID="txtservice" runat="server" placeholder="Services" class="form-control"></asp:TextBox>--%>

                                        <%--<input type="text" name="subject"  placeholder="Subject" class="form-control" required>--%>

                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [cat_name], [cat_Id] FROM [Category_mstr]"></asp:SqlDataSource>
                                    </div>

                                </div>



                                <!-- COLUMNS 5 -->

                                <div class="col-md-12">

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Your Message" ControlToValidate="txtmsg" Text="*"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtmsg" runat="server" placeholder="Message" class="form-control" TextMode="MultiLine"></asp:TextBox>

                                        <%--<textarea name="message" placeholder="Message" class="form-control" required></textarea>--%>

                                    </div>

                                </div>

                                

                                <div class="col-md-12">

                                    <div class="g-recaptcha" data-sitekey="6LfcCr0eAAAAAN2P-3cJJC1StgxbUWvwELbMVjnp"></div>

                                </div>

                                

                                

                            </div>

                            <div class="sf-contact-submit-btn">

                              <%--  <button class="site-button" type="submit">Submit</button>--%>
                                <asp:Button ID="btn_submit" runat="server" Text="Submit" class="site-button" OnClick="btn_submit_Click"/>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

                            </div>

                        </form>

                    </div>

                    <!--Contact Information End-->

                  </div>              

                </div>

        

              </div>

            </div>

              

            <!-- Contact Us-->

            <div class="section-full sf-contact-map-area">

                <div class="container">



                    <div class="sf-map-social-block text-center">

                        <h2>Trusted by thousands of people all over the world</h2>

                        <ul class="sf-con-social">

                            <li><a href="#" class="sf-fb"><img src="images/contact-us/facebook.png" alt="">Facebook</a></li>

                            <li><a href="#" class="sf-twitter"><img src="images/contact-us/twitter.png" alt="">Twitter</a></li>

                            <li><a href="#" class="sf-pinterest"><img src="images/contact-us/pinterest.png" alt="">Pinterest</a></li>

                        </ul>



                        <div class="sf-con-social-pic">

                            <span class="img-pos-1"><img src="images/contact-us/img1.png" alt=""></span>

                            <span class="img-pos-2"><img src="images/contact-us/img2.png" alt=""></span>

                            <span class="img-pos-3"><img src="images/contact-us/img3.png" alt=""></span>

                            <span class="img-pos-4"><img src="images/contact-us/r-img1.png" alt=""></span>

                            <span class="img-pos-5"><img src="images/contact-us/r-img2.png" alt=""></span>

                            <span class="img-pos-6"><img src="images/contact-us/r-img3.png" alt=""></span>

                        </div>

                    </div>



                </div>

                <div class="sf-map-wrap">

                    <div class="gmap-area">

                        <iframe src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=1%20Grafton%20Street,%20Dublin,%20Ireland+(My%20Business%20Name)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>

                    </div>

                </div>

            </div>

                

        </div>

        <!-- Content END-->
       
</asp:Content>
