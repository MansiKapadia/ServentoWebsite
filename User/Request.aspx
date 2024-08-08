<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="As_Your_Need_services.User.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Content -->

        <div class="page-content">

            <!--Banner-->

            <div class="aon-page-benner-area">

              <div class="aon-page-banner-row" style="background-image: url(images/banner/job-banner.jpg)">

                <div class="sf-overlay-main" style="opacity:0.8; background-color:#022279;"></div>

                <div class="sf-banner-heading-wrap">

                  <div class="sf-banner-heading-area">

                    <div class="sf-banner-heading-large">Please Login</div>

                    <div class="sf-banner-breadcrumbs-nav">

                      <%--<ul class="list-inline">

                        <li><a href="index.html"> Home </a></li>

                        <li>Contact us</li>

                      </ul>--%>

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
                    <h2 class="sf-title"></h2>
                </div>

                <!--Title Section End-->



                <div class="section-content">

               

                 <%-- <div class="sf-contact-info-wrap">  

                    <div class="row">

            

                        <!-- COLUMNS 1 -->

                        <div class="col-lg-4 col-md-6">

                            <div class="sf-contact-info-box">

                                <div class="sf-contact-icon">

                                    <span><img src="images/contact-us/1.png" alt=""></span>

                                </div>

                                <div class="sf-contact-info">

                                    <h4 class="sf-title">Mailing Address</h4>

                                    <p>121 King Street, Melbourne 

                                        Victoria 3000 Australia</p>

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

                                    <p>info@brandcoin.com</p><p>support@brandcoin.com</p>

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

                  </div>--%>



                  <div class="sf-contact-form-wrap">

                    <!--Contact Information-->  

                    <div class="sf-contact-form">

<%--                        <div class="sf-con-form-title text-center">

                            <h2 class="m-b30">Contact Information</h2>

                        </div>--%>

                        <form  runat="server" >

                           <%-- <div class="row">

                                

                                <!-- COLUMNS 1 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:TextBox ID="txtuname" runat="server" placeholder="Name" class="form-control"></asp:TextBox>

                                        

                                    </div>

                                </div>

                                

                                <!-- COLUMNS 2 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:TextBox ID="txtmail" runat="server" placeholder="Email" class="form-control"></asp:TextBox>

                                     

                                    </div>

                                </div>

                                <!-- COLUMNS 3 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:TextBox ID="txtcontact" runat="server" placeholder="Phone" class="form-control"></asp:TextBox>

                                     

                                    </div>

                                </div>

                                <!-- COLUMNS 4 -->

                                <div class="col-md-6">

                                    <div class="form-group">
                                        </div>

                                </div>



                                <!-- COLUMNS 5 -->

                                <div class="col-md-12">

                                    <div class="form-group">
                                        <asp:TextBox ID="txtmsg" runat="server" placeholder="Message" class="form-control" TextMode="MultiLine"></asp:TextBox>

                                       

                                    </div>

                                </div>

                                

                                <div class="col-md-12">

                                    <div class="g-recaptcha" data-sitekey="6LfcCr0eAAAAAN2P-3cJJC1StgxbUWvwELbMVjnp"></div>

                                </div>

                                

                                

                            </div>--%>

                            <div class="sf-contact-submit-btn">

                              <%--  <button class="site-button" type="submit">Submit</button>--%>
                              <button class="site-button" type="submit"><a href="Default.aspx"> Home </a></button>
                              <button class="site-button" type="submit"><a href="SignIn.aspx"> Login </a></button>

                            </div>

                        </form>

                    </div>

                    <!--Contact Information End-->

                  </div>              

                </div>

        

              </div>

            </div>

              

            <!-- Contact Us-->

           <%-- <div class="section-full sf-contact-map-area">

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

            </div>--%>


                

        </div>
        <!-- Content END-->
</asp:Content>
