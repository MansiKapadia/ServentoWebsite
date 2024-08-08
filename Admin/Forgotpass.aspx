<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgotpass.aspx.cs" Inherits="As_Your_Need_services.Admin.Forgotpass" %>

<!DOCTYPE html>
<html lang="en">

    
<!-- Mirrored from mannatthemes.com/dastone-1/default/auth-recover-pw.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Apr 2021 04:16:50 GMT -->
<head>
        <meta charset="utf-8" />
        <title>Dastone - Admin & Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

        <!-- Recover-pw page -->
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
                                        <p class="text-muted  mb-0">Forgot Password?</p>  
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form class="form-horizontal auth-form" runat="server">                
                                        <div class="form-group mb-2">
                                            <label for="username">Email</label>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                                                <%--<input type="email" class="form-control"  id="email" placeholder="Enter Email">--%>
                                            </div>                                    
                                        </div><!--end form-group--> 
            
                                        <div class="form-group mb-0 row">
                                            <div class="col-12 mt-2">
                                                <asp:Button ID="Button1" runat="server" Text="Reset" class="btn btn-primary btn-block waves-effect waves-light" OnClick="Button1_Click" /> 
                                                <%--<button class="btn btn-primary btn-block waves-effect waves-light" type="button">Reset <i class="fas fa-sign-in-alt ml-1"></i></button>--%>
                                            </div><!--end col--> 
                                        </div> <!--end form-group-->

                                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                                    </form><!--end form-->
                                    <p class="text-muted mb-0 mt-3">Remember It ?  <a href="Default.aspx" class="text-primary ml-2">Sign in here</a></p>
                                </div>
                               <%-- <div class="card-body bg-light-alt text-center">
                                    <span class="text-muted d-none d-sm-inline-block">Servento © 2023</span>                                            
                                </div>--%>
                            </div><!--end card-->
                        </div><!--end col-->
                    </div><!--end row-->
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end container-->
        <!-- End Recover-pw page -->

        


        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/feather.min.js"></script>
        <script src="assets/js/simplebar.min.js"></script>

        
    </body>


<!-- Mirrored from mannatthemes.com/dastone-1/default/auth-recover-pw.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Apr 2021 04:16:50 GMT -->
</html>
