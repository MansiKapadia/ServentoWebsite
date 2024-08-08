<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Processing.aspx.cs" Inherits="As_Your_Need_services.Vendor.Processing" %>

<!DOCTYPE html>

<html class="no-js" lang="zxx">

<!-- Mirrored from aonetheme.com/sf-html-demo/error-404.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 21 Dec 2022 07:07:47 GMT -->
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
    <title>Service Finder Template |  Error 404</title>
    
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
       <%-- <header class="site-header header-style-2 mobile-sider-drawer-menu header-full-width">
          <div class="sticky-header main-bar-wraper  navbar-expand-lg">
            <div class="main-bar">  

            <div class="container clearfix"> 
                <!--Logo section start-->
                <div class="logo-header">
                    <div class="logo-header-inner logo-header-one">
                      <a href="index.html">
                      <img src="images/logo-dark.png" alt="">
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
                      <li class="has-child current-menu-item"><a href="javascript:;">Home</a>
                          <ul class="sub-menu">
                              <li><a href="index.html">Home 1</a></li>
                              <li><a href="index-2.html">Home 2</a></li>
                          </ul>
                      </li>

                      <li class="has-child">
                          <a href="javascript:;">Pages</a>
                          <ul class="sub-menu">
                              <li><a href="about-us.html">About us</a></li>
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
                      </li>
                      <li><a href="contact-us.html">Contact</a></li>  
                    </ul>

                </div>

                <!-- Header Right Section-->
                <div class="extra-nav header-2-nav">
                            <div class="extra-cell">
                                <!--Login-->
                                <button type="button" class="site-button aon-btn-login" data-toggle="modal" data-target="#login-signup-model">
                                    <i class="fa fa-user"></i> Login
                                </button>
                                <!--Sign up-->
                                <a href="mc-profile.html" class="site-button aon-btn-signup m-l20">
                                    <i class="fa fa-plus"></i> Add Listing
                                </a>
                            </div>
                                
                            </div>                             
            </div>    

            </div>
          </div>
        </header>--%>
        <!-- HEADER END -->
    
        <!-- Content -->
        <div class="page-content">
            
            <!-- Banner Area -->
            <div class="aon-page-benner-area">
              <div class="aon-page-banner-row" style="background-image: url(images/banner/job-banner.jpg)">
                <div class="sf-overlay-main" style="opacity:0.8; background-color:#022279;"></div>
                <div class="sf-banner-heading-wrap">
                  <div class="sf-banner-heading-area">
                    <div class="sf-banner-heading-large">Thank You For Registering</div>
                    <div class="sf-banner-breadcrumbs-nav">
                      <%--<ul class="list-inline">
                        <li><a href="index.html"> Home </a></li>
                        <li>Error 404</li>
                      </ul>--%>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Banner Area End -->
            
            <div class="section-full page-notfound-outer p-t120 p-b90">
                <div class="container">
					<div class="section-content">

                        <div class="page-notfound">
                           <%-- <div class="page-notfound-media">
                                <img src="images/ERROR.png" alt="">
                            </div>--%>
                            <div class="page-notfound-content m-b30">
                                <h3 class="error-comment">Your Account Is In Varification Process. Please Wait </h3>
                                <p>Our Seniors will check your details .Please Wiat For their Approval.</p>
                                <a href="../User/Default.aspx" class="site-button">Back to Home</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            
            </div>
        <!-- Content END-->

        <!-- FOOTER START -->
        <footer class="site-footer footer-light" >
            
            <!-- FOOTER NEWSLETTER START -->
            <div class="footer-top-newsletter">
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
            </div>
            <!-- FOOTER BLOCKES START -->  
            <div class="footer-top">
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
            </div>
            <!-- FOOTER COPYRIGHT -->
            <div class="footer-bottom">
                <div class="container">
                    <div class="sf-footer-bottom-section">
                        <div class="sf-f-logo"><a href="javascript:void(0);"><img src="images/logo-dark.png" alt=""></a></div>
                    	<div class="sf-f-copyright">
                        	<span>Copyright 2022 | Aone Theme. All Rights Reserved</span>
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
    <div class="modal fade" id="login-signup-model">
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
    </div>
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


<!-- Mirrored from aonetheme.com/sf-html-demo/error-404.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 21 Dec 2022 07:07:47 GMT -->
</html>
