<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="As_Your_Need_services.User.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Content -->

        <div class="page-content">

            <!--Banner-->

            <div class="aon-page-benner-area">

              <div class="aon-page-banner-row" style="background-image: url(images/banner/job-banner.jpg)">

                <div class="sf-overlay-main" style="opacity:0.8; background-color:#022279;"></div>

                <div class="sf-banner-heading-wrap">

                  <div class="sf-banner-heading-area">

                    <div class="sf-banner-heading-large">Thank You For Your Message</div>

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

                    <h2 class="sf-title">We Will Respond Soon</h2>
                                        
                </div>

                <!--Title Section End-->



                <div class="section-content">
                  <div class="sf-contact-form-wrap">

                    <!--Contact Information-->  

                    <div class="sf-contact-form">

                        <form  runat="server" >

                           
                            <div class="sf-contact-submit-btn">

                              <%--  <button class="site-button" type="submit">Submit</button>--%>
                              <button class="site-button" type="submit"><a href="Default.aspx"> Back to Home </a></button>
                              
                            </div>

                        </form>

                    </div>

                    <!--Contact Information End-->

                  </div>              

                </div>

        

              </div>

            </div>

              

        </div>
        <!-- Content END-->
</asp:Content>
