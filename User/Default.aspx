<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="As_Your_Need_services.User.Default" %>


<!DOCTYPE html>
<html class="no-js" lang="zxx">

<!-- Mirrored from aonetheme.com/sf-html-demo/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 21 Dec 2022 07:06:30 GMT -->
<head>

	<!-- META -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <meta name="robots" content="" />    
    <meta name="description" content="" />
    
    <!-- FAVICONS ICON -->
    <link rel="icon" href="images/favicon.html" type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    
    <!-- PAGE TITLE HERE -->
    <title>SERVENTO | User </title>
    
    <!-- MOBILE SPECIFIC -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
    <!-- BOOTSTRAP STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- Bootstrap toggle -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap4-toggle.min.css">
    <!-- Bootstrap seclect -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css" /> 
    <!-- Price Range Slider -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap-slider.min.css" />
    <!-- Bootstrap data table -->
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css">
    <!-- Dropzone -->
    <link rel="stylesheet" type="text/css" href="css/dropzone.css">
    <!-- Fonts -->
    <link rel="stylesheet" type="text/css" href="css/font.css" />    
    <!-- Feather icon -->
    <link rel="stylesheet" type="text/css" href="css/feather.css" />  
    <!-- Fontawesome -->
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
    <!-- Lc light box popup -->
    <link rel="stylesheet" type="text/css" href="css/lc_lightbox.css" />     
    <!-- Magnific Popup -->
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.min.css">
    <!-- Custom Scrollbar -->
    <link rel="stylesheet" type="text/css" href="css/m-custom-scrollbar.min.css" />
    <!-- Owl Carousel -->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
    <!-- Slick Carousel -->
    <link rel="stylesheet" type="text/css" href="css/slick.min.css">
    <!-- Slick Theme -->
    <link rel="stylesheet" type="text/css" href="css/slick-theme.css">  
    <!-- Main STyle Sheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body>
    <!-- LOADING AREA START ===== -->
    <div class="loading-area">
        <div class="loading-box"></div>
        <div class="loading-pic">
            <div class="windows8">
                <div class="wBall" id="wBall_1">
                    <div class="wInnerBall"></div>
                </div>
                <div class="wBall" id="wBall_2">
                    <div class="wInnerBall"></div>
                </div>
                <div class="wBall" id="wBall_3">
                    <div class="wInnerBall"></div>
                </div>
                <div class="wBall" id="wBall_4">
                    <div class="wInnerBall"></div>
                </div>
                <div class="wBall" id="wBall_5">
                    <div class="wInnerBall"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- LOADING AREA  END ====== -->
    
	<div class="page-wraper">
     
        <!-- HEADER START -->
        <header class="site-header header-style-1 mobile-sider-drawer-menu header-full-width">
            <div class="sticky-header main-bar-wraper  navbar-expand-lg">
                <div class="main-bar">  
                                    
                    <div class="container clearfix"> 
                        <!--Logo section start-->
                        <div class="logo-header">
                            <div class="logo-header-inner logo-header-one">
                                <a href="Default.aspx">
                                    <img src="images/logo-light.png" alt="" class="site-logo-has">
                                    <img src="images/logo-dark.png" alt="" class="site-logo-sticky">
                                </a>
                            </div>
                        </div>  
                        <!--Logo section End-->

                        <!-- NAV Toggle Button -->
                        <button id="mobile-side-drawer" data-target=".header-nav" data-toggle="collapse" type="button" class="navbar-toggler collapsed">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar icon-bar-first"></span>
                            <span class="icon-bar icon-bar-two"></span>
                            <span class="icon-bar icon-bar-three"></span>
                        </button> 

                        <!-- MAIN Vav -->
                        <div class="nav-animation header-nav navbar-collapse collapse d-flex justify-content-start">
                            
                            <ul class=" nav navbar-nav">
                                <li class="has-child current-menu-item"><a href="Default.aspx">Home</a>
                                   <%-- <ul class="sub-menu">
                                        <li><a href="index.html">Home 1</a></li>
                                        <li><a href="index-2.html">Home 2</a></li>
                                    </ul>--%>
                                </li>


                                <%--<li class="has-child">
                                    <a href="javascript:;">Pages</a>
                                    <ul class="sub-menu">
                                        
                                        <li><a href="javascript:;">Categories</a>
                                            <ul class="sub-menu">
                                                <li><a href="all-categories.html">All Categories</a></li>
                                                <li><a href="categories-detail.html">Categories Detail</a></li>
                                                <li><a href="categories-detail-2.html">Categories Detail 2</a></li>
                                            </ul>
                                        </li>
          
                                        <li><a href="javascript:;">Search</a>
                                            <ul class="sub-menu">
                                                <li><a href="search-list.html">Search List</a></li>
                                                <li><a href="new-search-list-2.html">Search List 2</a></li>
                                                <li><a href="search-list-map.html">Search List Map</a></li>
                                                <li><a href="search-list-map2.html">Search List Map 2</a></li>
                                                <li><a href="search-grid.html">Search-grid</a></li>
                                                <li><a href="search-grids-map.html">Search-grid-map</a></li>
                                                <li><a href="search-grid-map2.html">Search-grid-map2</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="error-404.html">Error 404</a></li>
                                    </ul>                                
                                </li>

                                <li class="has-child"><a href="javascript:;">Profile</a>
                                    <ul class="sub-menu">
                                        <li><a href="profile-full.html">Profile</a></li>
                                        <li><a href="profile-sidebar.html">Profile Sidebar</a></li>
                                    </ul>                                                                 
                                </li>
                        
                                <li class="has-child"><a href="javascript:;">Jobs</a>
                                    <ul class="sub-menu">
                                        <li><a href="job-listing.html">Job listing</a></li>                                        
                                        <li><a href="job-grid.html">Job grid</a></li>
                                        <li><a href="job-detail.html">Job detail</a></li>                                        
                                    </ul>                                
                                </li>
                        
                                <li class="has-child"><a href="javascript:;">Blog</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog-grid.html">Blog Grid</a></li>                                        
                                        <li><a href="blog-grid-2.html">Blog Grid 2</a></li>
                                        <li><a href="blog-list.html">Blog list</a></li>
                                        <li><a href="blog-list-2.html">Blog list 2</a></li>
                                        <li><a href="blog-list-3.html">Blog list 3</a></li>
                                        <li><a href="blog-list-4.html">Blog list 4</a></li>
                                        <li><a href="blog-detail.html">Blog detail</a></li>
                                    </ul>                                
                                </li>--%>

                                <li><a href="AllCategories.aspx">All Categories</a></li>  
                                <li><a href="ContactUs.aspx">Contact</a></li>
                                <li><a href="Aboutus.aspx">About us</a></li>
                                <li><a href="../Vendor/Default.aspx">Vendor</a></li>  
                        
                            </ul>

                        </div>
                        
                        <!-- Header Right Section-->
                        <form runat="server">
                        <div class="extra-nav header-2-nav">
                            <div class="extra-cell">                               
                                <asp:Button ID="btn_logout" runat="server" Text="Logout" class="site-button aon-btn-login" OnClick="btn_logout_Click" />
                                <%--<button type="button" class="site-button aon-btn-login" data-toggle="modal" data-target="#login-signup-model">
                                    <i class="fa fa-user"></i> Logout
                                </button>--%>
                                <!--Login-->
                                <asp:Button ID="btn_login" runat="server" Text="Login" class="site-button aon-btn-login" OnClick="btn_login_Click" />
                                <%--<button type="button" class="site-button aon-btn-login" data-toggle="modal" data-target="#login-signup-model">
                                    <i class="fa fa-user"></i> Login
                                </button>--%>
                                <!--Sign up-->
                                <asp:Button ID="btn_profile" runat="server" Text="My Profile" class="site-button aon-btn-login" OnClick="btn_profile_Click" />
                                <%--<button type="button" class="site-button aon-btn-login" data-toggle="modal" data-target="#login-signup-model">
                                    <i class="fa fa-user"></i> My Profile
                                </button>--%>
                                <asp:Button ID="btn_cart" runat="server" Text="My Cart" class="site-button aon-btn-login" OnClick="btn_cart_Click" />
                                <asp:Button ID="btn_sigup" runat="server" Text="Sign Up" class="site-button aon-btn-login" OnClick="btn_sigup_Click" />
                                <%--<a href="mc-profile.html" class="site-button aon-btn-signup m-l20">
                                    <i class="fa fa-plus"></i> Add Listing
                                </a>--%>                                
                            </div>
                                
                            </div>
                            </form>
                    
                    </div>    
                
                </div>
            </div>
        </header>
        <!-- HEADER END -->
    
        <!-- CONTENT START -->
        <div class="page-content">
           
            <!-- BANNER SECTION START -->
            <section class="aon-banner-wrap">

                <!--Left Section-->
                <div class="aon-banner-outer sf-overlay-wrapper">
                    <div class="aon-banner-pic">
                        <div class="aon-curve-area"></div>
                        <div class="aon-overlay-main" style="opacity:0.85; background-color:#022278;"></div>
                        <img src="images/banner/bnr-pic.jpg" width="1919" height="976" alt="">
                    </div>
                    <div class="aon-banner-text">
                        <div class="container"> 
                            <div class="aon-bnr-write">
                                <h2 class="text-top-line">Hire <span class="text-secondry">Experts</span> & </h2>
                                <h2 class="text-bot-line">Get Your Job Done</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Right Section-->
                <div class="aon-find-bar aon-findBar-vertical">
                  <div class="container">
                    <!-- Search Form start--> 
                    <div class="search-form ">
                      <form class="clearfix search-providers" method="get">
                        <input type="hidden" name="s" value="">

                          <div class="aon-searchbar-table">

                          <div class="aon-searchbar-left">
                            <ul class="clearfix sf-searchfileds-count-5">
                              <li>
                                <label>Keyword</label>
                                <input type="text" value="" placeholder="Enter Keyword" id="keyword" name="keyword" class="form-control sf-form-control">
                                <span class="sf-search-icon"><img src="images/search-bar/keyword.png" alt=""/></span>
                              </li>

                              <li>
                                <label>Category</label> 
                                <select id="categorysrh" name="catid" class="form-control sf-form-control aon-categories-select sf-select-box" title="Select Category">
                                    <option class="bs-title-option" value="">Select a Category</option>
                                    <option value="17" data-content="<img class='childcat-img' width='50' height='auto' src=images/cat-thum/cat-1.jpg>
                                      <span class='childcat'>Cab Service</span>">Cab Service
                                    </option>
                                    <option value="30" data-content="<img class='childcat-img' width='50' height='auto' src=images/cat-thum/cat-2.jpg>
                                      <span class='childcat'>Car Dealers</span>">Car Dealers
                                    </option>
                                    <option value="19" data-content="<img class='childcat-img' width='50' height='auto' src=images/cat-thum/cat-3.jpg>
                                      <span class='childcat'>Food & Drink</span>">Food & Drink
                                    </option>
                                    <option value="19" data-content="<img class='childcat-img' width='50' height='auto' src=images/cat-thum/cat-4.jpg>
                                      <span class='childcat'>Plumber</span>">Plumber
                                    </option>
                                    <option value="19" data-content="<img class='childcat-img' width='50' height='auto' src=images/cat-thum/cat-5.jpg>
                                      <span class='childcat'>Electrician</span>">Electrician 
                                    </option>                                                    
                                  </select>
                                <span class="sf-search-icon"><img src="images/search-bar/maintenance.png" alt=""/></span>
                              </li>
                              <li>
                                <label>Country</label>  
                                <select class="sf-select-box form-control sf-form-control bs-select-hidden" data-live-search="true" name="country" id="country" title="Country" data-header="Select a Country">
                                  <option class="bs-title-option" value="">Select Country</option>
                                  <option value="">Select Country</option>
                                  <option value="Turkey">Turkey</option>
                                  <option value="United States">United States</option>
                                </select>
                                <span class="sf-search-icon"><img src="images/search-bar/globe.png" alt=""/></span>
                              </li>
                              <li>
                                <label>City</label>
                                <select class="sf-select-box form-control sf-form-control bs-select-hidden" data-live-search="true" name="city" id="city" title="City" data-header="Select a City">
                                  <option class="bs-title-option" value="">Select City</option>
                                  <option value="">Select City</option>
                                  <option value="">London</option>
                                  <option value="">Japan</option>
                                  <option value="">US</option>
                                </select>
                                <span class="sf-search-icon"><img src="images/search-bar/city.png" alt=""/></span>
                              </li>
                            </ul>
                          </div>
                          <div class="aon-searchbar-right">
                            <button type="button" class="site-button"><i class="fa fa-search"></i> Find Provider</button>
                          </div>

                        </div>

                      </form>
                    </div>
                    <!-- Search Form End--> 
                  </div>
                </div>

            </section>
            <!-- BANNER SECTION END -->  

            <!-- Services Finder categories -->
            <section class="bg-white aon-categories-area sf-curve-pos">
                <div class="container">

                    <!--Title Section Start-->
                    <div class="section-head">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <span class="aon-sub-title">categories</span>
                                <h2 class="aon-title">Popular Categories</h2>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do usmod tempor incididunt ut labore et dolore magna aliqua.</p>--%>
                            </div>
                        </div>
                    </div>
                    <!--Title Section End-->

                    <div class="section-content">
                        <div class="owl-carousel categories-carousel-owl aon-owl-arrow">
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Category_mstr]"></asp:SqlDataSource>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            
                                <ItemTemplate>
                            <!-- COLUMNS 1 -->
                            <div class="item">
                                <div class="aon-cat-item">
                                    <div class="aon-cat-pic media-bg-animate shine-hover">
                                        <a class="shine-box" href='DispCategory.aspx?cat_Id=<%#Eval("cat_Id") %>'>      
                                        
                                            <%--<img src="images/99-categories/1.jpg" alt="">--%>
                                        <img src='../Admin/CategoryImage/<%# Eval("cat_image") %>' /> </a>
                                    </div>
                                    <h4 class="aon-cat-title"><%# Eval("cat_name") %></h4>
                                </div>
                            </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            <!-- COLUMNS 2 -->
                            <%--<div class="item">
                                <div class="aon-cat-item">
                                    <div class="aon-cat-pic media-bg-animate shine-hover">
                                        <a class="shine-box" href="categories-detail.html"><img src="images/popular-categories/2.jpg" alt=""></a>
                                    </div>
                                    <h4 class="aon-cat-title">Plumber</h4>
                                </div>
                            </div>--%>
                            <!-- COLUMNS 3 -->
                            <%--<div class="item">
                                <div class="aon-cat-item">
                                    <div class="aon-cat-pic media-bg-animate shine-hover">
                                        <a class="shine-box" href="categories-detail.html"><img src="images/popular-categories/3.jpg" alt=""></a>
                                    </div>
                                    <h4 class="aon-cat-title">Cleaning Services</h4>
                                </div>
                            </div>--%>
                            <!-- COLUMNS 4 -->
                           <%-- <div class="item">
                                <div class="aon-cat-item">
                                    <div class="aon-cat-pic media-bg-animate shine-hover">
                                        <a class="figure" href="categories-detail.html"><img src="images/popular-categories/4.jpg" alt=""></a>
                                    </div>
                                    <h4 class="aon-cat-title">Yoga Classes</h4>
                                </div>
                            </div>--%>
                            <!-- COLUMNS 5 -->
                           <%-- <div class="item">
                                <div class="aon-cat-item">
                                    <div class="aon-cat-pic media-bg-animate shine-hover">
                                        <a class="shine-box" href="categories-detail.html"><img src="images/popular-categories/5.jpg" alt=""></a>
                                    </div>
                                    <h4 class="aon-cat-title">Salon & Spa</h4>
                                </div>
                            </div>--%>
                            <!-- COLUMNS 6 -->
                            <%--<div class="item">
                                <div class="aon-cat-item">
                                    <div class="aon-cat-pic media-bg-animate shine-hover">
                                        <a class="shine-box" href="categories-detail.html"><img src="images/popular-categories/6.jpg" alt=""></a>
                                    </div>
                                    <h4 class="aon-cat-title">Gym</h4>
                                </div>
                            </div>--%>
                            <!-- COLUMNS 7 -->
                            <%--<div class="item">
                                <div class="aon-cat-item">
                                    <div class="aon-cat-pic media-bg-animate shine-hover">
                                        <a class="shine-box" href="categories-detail.html"><img src="images/popular-categories/7.jpg" alt=""></a>
                                    </div>
                                    <h4 class="aon-cat-title">Transport</h4>
                                </div>
                            </div>--%>
                        </div>
                    </div>





                </div>
            </section>
            <!-- Services Finder categories END -->

            <!-- How it Work -->
           <%-- <section class="bg-white aon-how-service-area sf-curve-pos">
                <div class="container">

                    <div class="section-content">
                       <div class="row">
                            <!--Title Section Start-->
                            <div class="col-lg-4 col-md-12">
                                <span class="aon-sub-title">Steps</span>
                                <h2 class="sf-title">How Service Finder Works</h2>
                            </div>
                            <!--Title Section End-->

                            <div class="col-lg-8 col-md-12">
                                <!-- Steps Block Start-->
                                <div class="aon-step-blocks">
                                    <div class="row">
                                        <!-- COLUMNS 1 -->
                                        <div class="col-md-4 col-sm-4 m-b30">
                                            <div class="aon-step-section step-position-1 aon-icon-effect">
                                                <div class="aon-step-icon aon-icon-box">
                                                    <span>
                                                        <i class="aon-icon"><img src="images/step-icon/1.png" alt=""></i>
                                                    </span>
                                                </div>
                                                <div class="aon-step-info">
                                                    <h4 class="aon-title">Describe Your Task</h4>
                                                    <p>This helps us determine which Taskers are abest job.</p>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- COLUMNS 2 -->
                                        <div class="col-md-4 col-sm-4 m-b30">
                                            <div class="aon-step-section step-position-2 aon-icon-effect">
                                                <div class="aon-step-icon">
                                                    <span>
                                                        <i class="aon-icon"><img src="images/step-icon/2.png" alt=""></i>
                                                    </span>
                                                </div>
                                                <div class="aon-step-info">
                                                    <h4 class="aon-title">Choose a Tasker</h4>
                                                    <p>This helps us determine which Taskers are abest job.</p>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- COLUMNS 3 -->
                                        <div class="col-md-4 col-sm-4 m-b30">
                                            <div class="aon-step-section  step-position-3  aon-icon-effect">
                                                <div class="aon-step-icon">
                                                    <span>
                                                        <i class="aon-icon"><img src="images/step-icon/3.png" alt=""></i>
                                                    </span>
                                                </div>
                                                <div class="aon-step-info">
                                                    <h4 class="aon-title">Live Smarter</h4>
                                                    <p>This helps us determine which Taskers are abest job.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Steps Block End-->
                            </div>

                        </div>
                    </div>

                </div>
            </section>--%>
            <!-- How it Work END -->            

            <!-- Featued Vender -->
           <%-- <section class="site-bg-gray aon-feature-provider-area sf-curve-pos">
                <div class="container">
                    <!--Title Section Start-->
                    <div class="section-head">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <span class="aon-sub-title">Vendor</span>
                                <h2 class="sf-title">Featured Providers</h2>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do usmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>
                        </div>
                    </div>
                    <!--Title Section End-->

                    <div class="section-content">
                        <div class="row">
                            <div class="owl-carousel aon-featurd-provider-carousel aon-owl-arrow">

                                <!-- COLUMNS 1 -->
                                <div class="item">
                                    <div class="aon-ow-provider-wrap">
                                        <div class="aon-ow-provider shine-hover">

                                            <div class="aon-ow-top">
                                                <div class="aon-pro-check"><span><i class="fa fa-check"></i></span></div>
                                                <div class="aon-pro-favorite"><a href="#"><i class="fa fa-heart-o"></i></a></div>
                                                <div class="aon-ow-info">
                                                    <h4 class="aon-title"><a href="profile-full.html"> Edward Luise</a></h4>
                                                    <span>Queens, United States</span>
                                                </div>
                                            </div>
                                            <div class="aon-ow-mid">
                                                <div class="aon-ow-media media-bg-animate">
                                                    <a href="profile-full.html" class="shine-box"><img src="images/providers/1.jpg" alt=""></a>
                                                </div>
                                                <p>Through our expertise, technological knowledge, global presence and bespoke.</p>
                                                <div class="aon-ow-pro-rating">
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star text-gray"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="aon-ow-bottom">
                                            <a href="profile-full.html">Request A Quote</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- COLUMNS 2 -->
                                <div class="item">
                                    <div class="aon-ow-provider-wrap">
                                        <div class="aon-ow-provider shine-hover">

                                            <div class="aon-ow-top">
                                                <div class="aon-pro-check"><span><i class="fa fa-check"></i></span></div>
                                                <div class="aon-pro-favorite"><a href="#"><i class="fa fa-heart-o"></i></a></div>
                                                <div class="aon-ow-info">
                                                    <h4 class="aon-title"><a href="profile-full.html">Javier Bardem</a></h4>
                                                    <span>Queens, United States</span>
                                                </div>
                                            </div>
                                            <div class="aon-ow-mid">
                                                <div class="aon-ow-media media-bg-animate">
                                                    <a href="profile-full.html" class="shine-box"><img src="images/providers/2.jpg" alt=""></a>
                                                </div>
                                                <p>Through our expertise, technological knowledge, global presence and bespoke.</p>
                                                <div class="aon-ow-pro-rating">
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star text-gray"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="aon-ow-bottom">
                                            <a href="profile-full.html">Request A Quote</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- COLUMNS 3 -->
                                <div class="item">
                                    <div class="aon-ow-provider-wrap">
                                        <div class="aon-ow-provider shine-hover">

                                            <div class="aon-ow-top">
                                                <div class="aon-pro-check"><span><i class="fa fa-check"></i></span></div>
                                                <div class="aon-pro-favorite"><a href="#"><i class="fa fa-heart-o"></i></a></div>
                                                <div class="aon-ow-info">
                                                    <h4 class="aon-title"><a href="profile-full.html">Mila Kunis</a></h4>
                                                    <span>Queens, United States</span>
                                                </div>
                                            </div>
                                            <div class="aon-ow-mid">
                                                <div class="aon-ow-media media-bg-animate">
                                                    <a class="shine-box" href="profile-full.html"><img src="images/providers/3.jpg" alt=""></a>
                                                </div>
                                                <p>Through our expertise, technological knowledge, global presence and bespoke.</p>
                                                <div class="aon-ow-pro-rating">
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star text-gray"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="aon-ow-bottom">
                                            <a href="profile-full.html">Request A Quote</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- COLUMNS 4 -->
                                <div class="item">
                                    <div class="item">
                                        <div class="aon-ow-provider-wrap">
                                            <div class="aon-ow-provider shine-hover">

                                                <div class="aon-ow-top">
                                                    <div class="aon-pro-check"><span><i class="fa fa-check"></i></span></div>
                                                    <div class="aon-pro-favorite"><a href="#"><i class="fa fa-heart-o"></i></a></div>
                                                    <div class="aon-ow-info">
                                                        <h4 class="aon-title"><a href="profile-full.html">Edward Luise</a></h4>
                                                        <span>Queens, United States</span>
                                                    </div>
                                                </div>
                                                <div class="aon-ow-mid">
                                                    <div class="aon-ow-media media-bg-animate">
                                                        <a href="profile-full.html" class="shine-box"><img src="images/providers/4.jpg" alt=""></a>
                                                    </div>
                                                    <p>Through our expertise, technological knowledge, global presence and bespoke.</p>
                                                    <div class="aon-ow-pro-rating">
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star text-gray"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="aon-ow-bottom">
                                                <a href="profile-full.html">Request A Quote</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </section>--%>
            <!-- Featued Vender -->

            <!-- Statics -->
            <%--<div class="site-bg-primary aon-statics-area sf-curve-pos">
                <div class="container">

                    <div class="section-content">
                        <div class="row d-flex flex-wrap align-items-center a-b-none">
                            <div class="col-lg-6 col-md-12">
                                <!--Title Section Start-->
                                <div class="section-head">
                                    <span class="aon-sub-title">Statics</span>
                                    <h2 class="sf-title">Trusted by thousands of people all over the world</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. </p>
                                </div>
                                <!--Title Section End-->
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <!--Statics-blocks Section Start-->
                                <div class="aon-statics-blocks">
                                    <div class="row">
                                        <!--Block 1-->
                                        <div class="col-lg-6 m-b30 aon-static-position-1">
                                            <div class="media-bg-animate media-statics aon-icon-effect">
                                                <div class="aon-static-section aon-t-blue">
                                                    <div class="aon-company-static-num counter aon-icon">36</div>
                                                    <div class="aon-company-static-name">Providers</div>
                                                </div>
                                            </div>
                                            <div class="media-bg-animate media-statics aon-icon-effect">
                                                <div class="aon-static-section aon-t-yellow">
                                                    <div class="aon-company-static-num counter aon-icon">108</div>
                                                    <div class="aon-company-static-name">Jobs</div>
                                                </div>
                                            </div>
                                        </div>

                                        <!--Block 2-->
                                        <div class="col-lg-6 m-b30 aon-static-position-2">
                                            <div class="media-bg-animate media-statics aon-icon-effect">
                                                <div class="aon-static-section aon-t-green">
                                                    <div class="aon-company-static-num counter aon-icon">89</div>
                                                    <div class="aon-company-static-name">Customer</div>
                                                </div>
                                            </div>
                                            <div class="media-bg-animate media-statics aon-icon-effect">
                                                <div class="aon-static-section aon-t-skyblue">
                                                    <div class="aon-company-static-num counter aon-icon">59</div>
                                                    <div class="aon-company-static-name">Categories</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Statics-blocks Section End-->
                            </div>
                        </div>
                    </div>

                </div>
           </div>--%>
            <!-- Provider END -->

            <!-- Latest Blog -->
           <%-- <div class="aon-news-section-wrap sf-curve-pos">--%>
                <div class="container">
                    <!--Title Section Start-->
                    <div class="section-head">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <span class="aon-sub-title">News</span>
                                <h2 class="sf-title">Recent News Articles</h2>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do usmod tempor incididunt ut labore et dolore magna aliqua.</p>--%>
                            </div>
                        </div>
                    </div>
                    <!--Title Section End-->

                    <div class="section-content">
                        <div class="row">
                            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Article_mstr.* FROM Article_mstr"></asp:SqlDataSource>
                            <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
                                <ItemTemplate>
                            <!-- COLUMNS 1 -->
                            
                            <div class="col-md-4">
                                <div class="media-bg-animate">
                                    <div class="aon-blog-section-1 shine-hover">
                                        <div class="aon-post-media shine-box">
                                            <a ><img src='../Vendor/Artical/<%#Eval("image") %>' alt=""></a>
                                        </div>
                                        <div class="aon-post-meta">
                                            <ul>
                                                <li class="aon-post-category">Latest</li>
                                                <li class="aon-post-author"><%--<a href="blog-detail.html">--%>By |<span><%#Eval("postby") %></span> </li>
                                            </ul>
                                        </div>
                                        <div class="aon-post-info">
                                            <h4 class="aon-post-title"><%#Eval("title") %></h4>
                                            <div class="aon-post-text">
                                                <p><%#Eval("adesc") %></p> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                     
                                    </ItemTemplate>
                        </asp:Repeater>
                        </div>
                    </div>
                </div>
            <%--</div>--%>
            <!-- Latest Blog END --> 

        

                        

            <!-- Testimonial Section -->
            <div class="aon-testmonials-area sf-curve-pos">
                <div class="container">
                    <!--Title Section Start-->
                    <div class="section-head">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <span class="sf-sub-title">Testimonial</span>
                                <h2 class="sf-title">What People Say</h2>
                            </div>
                            <div class="col-lg-6 col-md-12">
                               <%-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do usmod tempor incididunt ut labore et dolore magna aliqua.</p>--%>
                            </div>
                        </div>
                    </div>
                    <!--Title Section End-->


                    <div class="section-content">
                        <!--testimonial top-->
                        <div class="slider-vertical-wrap">
                            <!-- THUMBNAILS -->
                            <div class="slick-testimonials-thumbnails">
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Testimonial_mstr.*, User_mstr.uname FROM Testimonial_mstr INNER JOIN User_mstr ON Testimonial_mstr.uid = User_mstr.uid"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                <!-- COLUMNS 1 -->
                                
                                <div class="slick-item">
                                    <div class="sf-testimonial-user">
                                        <%--<div class="sf-testimonial-media"><img src="images/testimonials/pic1.jpg" alt=""></div>--%>
                                        <div class="sf-testimonial-user-detail">
                                            <div class="sf-testi-user-name"><%#Eval("uname") %></div>
                                            <div class="sf-testi-user-position">Title : <%#Eval("title") %></div>
                                        </div>

                                    </div>
                                </div>

                                <!-- COLUMNS 1 -->
                                <%--<div class="slick-item">
                                    <div class="sf-testimonial-user">
                                        <div class="sf-testimonial-media"><img src="images/testimonials/pic1.jpg" alt=""></div>
                                        <div class="sf-testimonial-user-detail">
                                            <div class="sf-testi-user-name">Mark, Homestay </div>
                                            <div class="sf-testi-user-position">Sales Manager</div>
                                        </div>

                                    </div>
                                </div>--%>
                                <!-- COLUMNS 1 -->
                               <%-- <div class="slick-item">
                                    <div class="sf-testimonial-user">
                                        <div class="sf-testimonial-media"><img src="images/testimonials/pic2.jpg" alt=""></div>
                                        <div class="sf-testimonial-user-detail">
                                            <div class="sf-testi-user-name">Mark, Homestay </div>
                                            <div class="sf-testi-user-position">Sales Manager</div>
                                        </div>

                                    </div>
                                </div>--%>
                                <!-- COLUMNS 1 -->
                               <%-- <div class="slick-item">
                                    <div class="sf-testimonial-user">
                                        <div class="sf-testimonial-media"><img src="images/testimonials/pic3.jpg" alt=""></div>
                                        <div class="sf-testimonial-user-detail">
                                            <div class="sf-testi-user-name">Mark, Homestay </div>
                                            <div class="sf-testi-user-position">Sales Manager</div>
                                        </div>

                                    </div>
                                </div>--%>
                                        </ItemTemplate>
                                  </asp:Repeater>
                            </div>                            
                            <!-- MAIN SLIDES -->
                            <div class="slick-testimonials-carousel">
                                   <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Testimonial_mstr.*, User_mstr.uid AS Expr1, User_mstr.uname FROM Testimonial_mstr INNER JOIN User_mstr ON Testimonial_mstr.uid = User_mstr.uid"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>
                                <!-- COLUMNS 1 -->
                             
                                <div class="slick-item">
                                  <div class="sf-testimonial-info text-center">
                                    <div class="sf-testimonial-title"><%#Eval("tdesc") %></div>
                                    <div class="sf-ow-pro-rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star text-gray"></span>
                                    </div>
                                    <div class="sf-testimonial-text">
                                      <%--  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesettin</p>--%>
                                    </div>
                                    <div class="sf-testimonial-quote"><i class="fa fa-quote-left"></i></div>
                                    </div>
                                </div>
                                <!-- COLUMNS 1 -->
                              <%--  <div class="slick-item">
                                  <div class="sf-testimonial-info text-center">
                                    <div class="sf-testimonial-title">It was a great experience</div>
                                    <div class="sf-ow-pro-rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star text-gray"></span>
                                    </div>
                                    <div class="sf-testimonial-text">
                                        <p>  <div class="slick-item"></p>
                                  <div class="sf-testimonial-info text-center">
                                    <div class="sf-testimonial-title">It was a great experience</div>
                                    <div class="sf-ow-pro-rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star text-gray"></span>
                                    </div>
                                    <div class="sf-testimonial-text">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesettin</p>
                                    </div>
                                    <div class="sf-testimonial-quote"><i class="fa fa-quote-left"></i></div>
                                    </div>
                                </div>>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesettin</p>
                                    </div>
                                    <div class="sf-testimonial-quote"><i class="fa fa-quote-left"></i></div>
                                    </div>--%>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!-- COLUMNS 1 -->
                              
                                <!-- COLUMNS 1 -->
                               <%-- <div class="slick-item">
                                  <div class="sf-testimonial-info text-center">
                                    <div class="sf-testimonial-title">It was a great experience</div>
                                    <div class="sf-ow-pro-rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star text-gray"></span>
                                    </div>
                                    <div class="sf-testimonial-text">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesettin</p>
                                    </div>
                                    <div class="sf-testimonial-quote"><i class="fa fa-quote-left"></i></div>
                                    </div>
                                </div>--%>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- Testimonial Section END -->   
        

            
        </div>
        <!-- CONTENT END -->

        <!-- FOOTER START -->
        <footer class="site-footer footer-light" >
            
            <!-- FOOTER NEWSLETTER START -->
            <%--<div class="footer-top-newsletter">
                <div class="container">
                    <div class="sf-news-letter">
                        <span>Subscribe Our Newsletter</span>
                        <form>
                            <div class="form-group sf-news-l-form">
                                <input type="text" class="form-control" placeholder="Enter Your Email">
                                <button type="submit" class="sf-sb-btn">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>--%>
            <!-- FOOTER BLOCKES START -->  
            <%--<div class="footer-top">
                <div class="container">
                    <div class="row">
                        <!-- Footer col 1--> 
                        <div class="col-lg-3 col-md-6 col-sm-6  m-b30">
                            <div class="sf-site-link sf-widget-link">
                                <h4 class="sf-f-title">Site Links</h4>
                                <ul>
                                    <li><a href="blog-grid.html">Blog</a></li>
                                    <li><a href="contact-us.html">Contact Us</a></li>
                                    <li><a href="job-grid.html">Jobs</a></li>
                                    <li><a href="all-categories.html">Categories</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Footer col 2-->
                        <div class="col-lg-3 col-md-6 col-sm-6  m-b30">
                            <div class="sf-site-link sf-widget-cities">
                                <h4 class="sf-f-title">Popular Cities</h4>
                                <ul>
                                    <li><a href="all-categories.html">Ballston Lake</a></li>
                                    <li><a href="all-categories.html">Batumi</a></li>
                                    <li><a href="all-categories.html">Brooklyn</a></li>
                                    <li><a href="all-categories.html">Cambridge</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Footer col 1-->
                        <div class="col-lg-3 col-md-6 col-sm-6  m-b30">
                            <div class="sf-site-link sf-widget-categories">
                                <h4 class="sf-f-title">Categories</h4>
                                <ul>
                                    <li><a href="categories-detail.html">Car Service</a></li>
                                    <li><a href="categories-detail.html">House Cleaning</a></li>
                                    <li><a href="categories-detail.html">Transport</a></li>
                                    <li><a href="categories-detail.html">Yoga Classes</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Footer col 1-->
                        <div class="col-lg-3 col-md-6 col-sm-6  m-b30">
                            <div class="sf-site-link sf-widget-contact">
                                <h4 class="sf-f-title">Contact Info</h4>
                                <ul>
                                    <li>India</li>
                                    <li>+41 232 525 5257</li>
                                    <li>+41 856 525 5369</li>
                                    <li>hello@Servicefinder.com</li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>--%>
            <!-- FOOTER COPYRIGHT -->
            <div class="footer-bottom">
                <div class="container">
                    <div class="sf-footer-bottom-section">
                        <div class="sf-f-logo"><a href="javascript:void(0);"><img src="images/logo-dark.png" alt=""></a></div>
                    	<div class="sf-f-copyright">
                        	<span>Copyright 2023. All Rights Reserved</span>
                        </div>
                       
                        <div class="sf-f-social">
                            <ul class="socila-box">
                                <li><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                        
                    </div>
                </div>   
            </div>   
    
        </footer>
        <!-- FOOTER END -->

        <!-- BUTTON TOP START -->
		<button class="scroltop"><span class="fa fa-angle-up  relative" id="btn-vibrate"></span></button>

 	</div>

    
    
    <!-- Login Sign Up Modal -->
    <%--<div class="modal fade" id="login-signup-model">
      <div class="modal-dialog">
        <div class="modal-content">
            <button type="button" class="close aon-login-close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            <div class="modal-body">

                <div class="sf-custom-tabs sf-custom-new aon-logon-sign-area p-3">

                    <!--Tabs-->
                    <ul class="nav nav-tabs nav-table-cell">
                        <li><a data-toggle="tab" href="#Upcoming" class="active">Login</a></li>
                        <li><a data-toggle="tab" href="#Past">Sign up</a></li>
                    </ul>
                    <!--Tabs Content--> 
                    <div class="tab-content">

                        <!--Login Form-->
                        <div id="Upcoming" class="tab-pane active">
                            <div class="sf-tabs-content">
                                <form class="aon-login-form">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="aon-inputicon-box"> 
                                                    <input class="form-control sf-form-control" name="company_name" type="text" placeholder="User Name">
                                                    <i class="aon-input-icon fa fa-user"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="aon-inputicon-box"> 
                                                    <input class="form-control sf-form-control" name="company_name" type="password" placeholder="Password">
                                                    <i class="aon-input-icon fa fa-lock"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group d-flex aon-login-option justify-content-between">
                                                <div class="aon-login-opleft">
                                                     <div class="checkbox sf-radio-checkbox">
                                                        <input id="td2_2" name="abc" value="five" type="checkbox">
                                                        <label for="td2_2">Keep me logged</label>
                                                    </div>  
                                                </div>
                                                <div class="aon-login-opright">
                                                    <a href="#">Forget Password</a>
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="col-md-12">
                                            <button type="submit" class="site-button w-100">Submit <i class="feather-arrow-right"></i> </button>
                                        </div>                                          
                                        
                                    </div>
                                </form>
                            </div>
                        </div>

                        <!--Sign up Form-->
                        <div id="Past" class="tab-pane">
                            <div class="sf-tabs-content">
                                <form class="aon-login-form">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="aon-inputicon-box"> 
                                                    <input class="form-control sf-form-control" name="First_Name" type="text" placeholder="First Name">
                                                    <i class="aon-input-icon fa fa-user"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="aon-inputicon-box"> 
                                                    <input class="form-control sf-form-control" name="company_name" type="password" placeholder="Last Name">
                                                    <i class="aon-input-icon fa fa-user"></i>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="aon-inputicon-box"> 
                                                    <input class="form-control sf-form-control" name="Phone" type="password" placeholder="Phone">
                                                    <i class="aon-input-icon fa fa-phone"></i>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="aon-inputicon-box"> 
                                                    <input class="form-control sf-form-control" name="email" type="password" placeholder="Email">
                                                    <i class="aon-input-icon fa fa-envelope-o"></i>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="aon-inputicon-box"> 
                                                    <input class="form-control sf-form-control" name="password" type="password" placeholder="Password">
                                                    <i class="aon-input-icon fa fa-lock"></i>
                                                </div>
                                            </div>
                                        </div>
                                        
                                         <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="aon-inputicon-box"> 
                                                    <input class="form-control sf-form-control" name="password" type="password" placeholder="Confirm Password">
                                                    <i class="aon-input-icon fa fa-lock"></i>
                                                </div>
                                            </div>
                                        </div>                                        
                                        
                                        <div class="col-md-12">
                                            <div class="form-group sign-term-con">
                                                <div class="checkbox sf-radio-checkbox">
                                                    <input id="td33" name="abc" value="five" type="checkbox">
                                                    <label for="td33">I've read and agree with your <a href="#">Privacy Policy</a> and <a href="#">Terms & Conditions</a> </label>
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="col-md-12">
                                            <button type="submit" class="site-button w-100">Submit <i class="feather-arrow-right"></i> </button>
                                        </div>                                          
                                        
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
      </div>
    </div>--%>
    <!-- Login Sign Up Modal --> 
    
    
<!-- JAVASCRIPT  FILES ========================================= --> 
<script  src="js/jquery-3.6.0.min.js"></script><!-- JQUERY.MIN JS -->
<script  src="js/popper.min.js"></script><!-- POPPER.MIN JS -->
<script  src="js/bootstrap.min.js"></script><!-- BOOTSTRAP.MIN JS -->
<script  src="js/bootstrap-select.min.js"></script><!-- BOOTSTRAP SELECT -->    
<script  src="js/jquery.bootstrap-touchspin.js"></script><!-- FORM JS -->
<script  src="js/magnific-popup.min.js"></script><!-- MAGNIFIC-POPUP JS -->
<script  src="js/waypoints.min.js"></script><!-- WAYPOINTS JS -->
<script  src="js/counterup.min.js"></script><!-- COUNTERUP JS -->
<script  src="js/waypoints-sticky.min.js"></script><!-- STICKY HEADER -->
<script  src="js/isotope.pkgd.min.js"></script><!-- MASONRY  -->
    
<script  src="js/owl.carousel.min.js"></script><!-- OWL  SLIDER  -->
<script  src="js/slick.min.js"></script><!-- OWL  SLIDER  -->
    
<script  src="js/theia-sticky-sidebar.js"></script><!-- STICKY SIDEBAR  -->
<script src="js/m-custom-scrollbar.min.js"></script><!-- my account left panel scroller -->
<script src="js/dropzone.js"></script><!-- Images upload -->  

<script src="js/bootstrap4-toggle.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>

<script  src="js/custom.js"></script><!-- CUSTOM FUCTIONS  -->
<script src="js/lc_lightbox.lite.js" ></script><!-- IMAGE POPUP -->
<script  src="js/bootstrap-slider.min.js"></script><!-- Form js -->


</body>


<!-- Mirrored from aonetheme.com/sf-html-demo/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 21 Dec 2022 07:07:17 GMT -->
</html>




