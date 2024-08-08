<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="As_Your_Need_services.Admin.assets.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <title>Servento - Admin </title>
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
</head>

<body class="account-body accountbg">

        <!-- Log In page -->
        <div class="container">
            <div class="row vh-100 d-flex justify-content-center">
                <div class="col-12 align-self-center">
                    <div class="row">
                        <div class="col-lg-5 mx-auto">
                            <div class="card">
                                <div class="card-body p-0 auth-header-box">
                                    <div class="text-center p-3">
                                        <%--<a href="index.html" class="logo logo-admin">--%>
                                            <img src="../Servento/Servento-logos_white.png" height="200" width="200" alt="logo" class="auth-logo" />
                                        <%--</a>--%>
                                        <%--<h4 class="mt-3 mb-1 font-weight-semibold text-white font-18">Let's Get Started Servento</h4>--%>   
                                        <p class="text-muted  mb-0">Sign in to continue to Servento</p>  
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <ul class="nav-border nav nav-pills" role="tablist">
                                        <%--<li class="nav-item">
                                            <a class="nav-link active font-weight-semibold" data-toggle="tab" href="#LogIn_Tab" role="tab">Log In</a>
                                        </li>--%>
                                       <%-- <li class="nav-item">
                                            <a class="nav-link font-weight-semibold" data-toggle="tab" href="#Register_Tab" role="tab">Register</a>
                                        </li>--%>
                                    </ul>
                                     <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane active p-3" id="LogIn_Tab" role="tabpanel">                                        
                                            <form class="form-horizontal auth-form" runat="server">
                
                                                <div class="form-group mb-2">
                                                    <label for="username">Enter Mail -Id : </label>
                                                    <div class="input-group">    
                                                        <asp:TextBox ID="txtamail" class="form-control"  placeholder="Enter Admin Mail-Id" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="mailvalidation" runat="server" ErrorMessage="Please Enter Mail-Id" ControlToValidate="txtamail" Text="*"></asp:RequiredFieldValidator>
                                                      <%--  <input type="text" class="form-control" name="username" id="username" placeholder="Enter username">--%>
                                                    </div>                                    
                                                </div><!--end form-group--> 
                    
                                                <div class="form-group mb-2">
                                                    <label for="userpassword">Enter Password</label>                                            
                                                    <div class="input-group">  
                                                        <asp:TextBox ID="txtapass" runat="server" class="form-control" placeholder="Enter  Admin Password" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="passwordvalidation" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtapass" Text="*"></asp:RequiredFieldValidator>
                                                        <%-- <input type="password" class="form-control" name="password" id="userpassword" placeholder="Enter password">--%>
                                                    </div>                               
                                                </div><!--end form-group--> 
                    
                                                <div class="form-group row my-3">
                                                    <div class="col-sm-6">
                                                        <div class="custom-control custom-switch switch-success">
                                                            <%--<input type="checkbox" class="custom-control-input" id="customSwitchSuccess">
                                                            <label class="custom-control-label text-muted" for="customSwitchSuccess">Remember me</label>--%>
                                                        </div>
                                                    </div><!--end col--> 
                                                    <div class="col-sm-6 text-right">
                                                        <asp:HyperLink ID="forgotpass" runat="server" class="text-muted font-13" href="Forgotpass.aspx">Forgot password?</asp:HyperLink>
                                                       <%-- <a href="auth-recover-pw.html" class="text-muted font-13"><i class="dripicons-lock"></i> Forgot password?</a>      --%>                              
                                                    </div><!--end col--> 
                                                </div><!--end form-group--> 
                    
                                                <div class="form-group mb-0 row">
                                                    <div class="col-12">
                                                        <asp:Button ID="btn_login" runat="server" Text="LOG IN"  class="btn btn-primary btn-block waves-effect waves-light" OnClick="btn_login_Click"/>
                                                        <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
                                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                        <%--<button class="btn btn-primary btn-block waves-effect waves-light" type="button">Log In <i class="fas fa-sign-in-alt ml-1"></i></button>--%>
                                                    </div><!--end col--> 
                                                </div> <!--end form-group-->                           
                                            </form><!--end form-->
                                           <%-- <div class="m-3 text-center text-muted">
                                                <p class="mb-0">Don't have an account ?  <a href="auth-register.html" class="text-primary ml-2">Free Resister</a></p>
                                            </div>--%>
                                            <%--<div class="account-social">
                                                <h6 class="mb-3">Or Login With</h6>
                                            </div>--%>
                                           <%-- <div class="btn-group btn-block">
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Facebook</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Twitter</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Google</button>
                                            </div>--%>
                                        </div>
                                   <%--     <div class="tab-pane px-3 pt-3" id="Register_Tab" role="tabpanel">--%>
                                          <%--  <form class="form-horizontal auth-form" action="https://mannatthemes.com/dastone-1/default/index.html">
            
                                                <div class="form-group mb-2">
                                                    <label for="username">Username</label>
                                                    <div class="input-group">                                                                                         
                                                        <input type="text" class="form-control" name="username" id="username" placeholder="Enter username">
                                                    </div>                                    
                                                </div><!--end form-group--> 
            
                                                <div class="form-group mb-2">
                                                    <label for="useremail">Email</label>
                                                    <div class="input-group">                                                                                         
                                                        <input type="email" class="form-control" name="email" id="useremail" placeholder="Enter Email">
                                                    </div>                                    
                                                </div><!--end form-group-->
                    
                                                <div class="form-group mb-2">
                                                    <label for="userpassword">Password</label>                                            
                                                    <div class="input-group">                                  
                                                        <input type="password" class="form-control" name="password" id="userpassword" placeholder="Enter password">
                                                    </div>                               
                                                </div><!--end form-group--> 
            
                                                <div class="form-group mb-2">
                                                    <label for="conf_password">Confirm Password</label>                                            
                                                    <div class="input-group">                                   
                                                        <input type="password" class="form-control" name="conf-password" id="conf_password" placeholder="Enter Confirm Password">
                                                    </div>
                                                </div><!--end form-group-->
                                                
                                                <div class="form-group mb-2">
                                                    <label for="mo_number">Mobile Number</label>                                            
                                                    <div class="input-group">                                 
                                                        <input type="text" class="form-control" name="mobile number" id="mo_number" placeholder="Enter Mobile Number">
                                                    </div>                               
                                                </div><!--end form-group-->  
                    
                                                <div class="form-group row my-3">
                                                    <div class="col-sm-12">
                                                        <div class="custom-control custom-switch switch-success">
                                                            <input type="checkbox" class="custom-control-input" id="customSwitchSuccess2">
                                                            <label class="custom-control-label text-muted" for="customSwitchSuccess2">You agree to the Metrica <a href="#" class="text-primary">Terms of Use</a></label>
                                                        </div>
                                                    </div><!--end col-->                                             
                                                </div><!--end form-group--> 
                    
                                                <div class="form-group mb-0 row">
                                                    <div class="col-12">
                                                        <button class="btn btn-primary btn-block waves-effect waves-light" type="button">Register <i class="fas fa-sign-in-alt ml-1"></i></button>
                                                    </div><!--end col--> 
                                                </div> <!--end form-group-->                           
                                            </form>--%><!--end form-->
                                           <%-- <p class="my-3 text-muted">Already have an account ?<a href="auth-login.html" class="text-primary ml-2">Log in</a></p>   --%>                                                 
                                        </div>
                                    </div>
                                </div><!--end card-body-->
                             <%--   <div class="card-body bg-light-alt text-center">
                                    <span class="text-muted d-none d-sm-inline-block">Mannatthemes © 2020</span>                                            
                                </div>--%>
                            </div><!--end card-->
                        </div><!--end col-->
                    </div><!--end row-->
                </div><!--end col-->
            </div><!--end row-->
        <%--</div>--%><!--end container-->
        <!-- End Log In page -->

        


        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/feather.min.js"></script>
        <script src="assets/js/simplebar.min.js"></script>

        
    </body>


<!-- Mirrored from mannatthemes.com/dastone-1/default/auth-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Apr 2021 04:16:50 GMT -->
</html>
