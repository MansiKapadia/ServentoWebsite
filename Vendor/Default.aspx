<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm1" %>

<html lang="en">


<!-- Mirrored from mannatthemes.com/dastone-1/default/auth-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Apr 2021 04:16:50 GMT -->
<head>
    <meta charset="utf-8" />
    <title>Servento - Vendor</title>
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

    <!-- Log In page -->
    <div class="container">
        <div class="row vh-100 d-flex justify-content-center">
            <div class="col-12 align-self-center">
                <div class="row">
                    <div class="col-lg-5 mx-auto">
                        <div class="card">
                            <div class="card-body p-0 auth-header-box">
                                <div class="text-center p-3">                                    
                                        <img src="../Servento/Servento-logos_transparent.png" height="200" width="200" alt="logo" class="auth-logo">                                   
                                    <%--<h4 class="mt-3 mb-1 font-weight-semibold text-white font-18">Let's Get Started Servento</h4>--%>
                                    <%--<p class="text-muted  mb-0">Sign in to continue to Servento.</p>--%>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active p-3" id="LogIn_Tab" role="tabpanel">
                                        <form class="form-horizontal auth-form" runat="server">

                                            <div class="form-group mb-2">
                                                <label for="username">Username</label>
                                                <div class="input-group">
                                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtemail" Text="*"></asp:RequiredFieldValidator>
                                                    <%--<input type="text" class="form-control" name="username" id="username" placeholder="Enter username">--%>
                                                </div>
                                            </div>
                                            <!--end form-group-->

                                            <div class="form-group mb-2">
                                                <label for="userpassword">Password</label>
                                                <div class="input-group">
                                                    <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Enter password" TextMode="Password"> </asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" Text="*" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                                                    <%--<input type="password" class="form-control" name="password" id="userpassword" placeholder="Enter password">--%>
                                                </div>
                                            </div>
                                            <!--end form-group-->

                                            <div class="form-group row my-3">
                                                <%--<div class="col-sm-6">
                                                        <div class="custom-control custom-switch switch-success">
                                                            <input type="checkbox" class="custom-control-input" id="customSwitchSuccess">
                                                            <label class="custom-control-label text-muted" for="customSwitchSuccess">Remember me</label>
                                                        </div>
                                                    </div>--%><!--end col-->
                                                <div class="col-sm-12 text-right">
                                                    <a href="ForgotPass.aspx" class="text-muted font-13"><i class="dripicons-lock"></i>Forgot password?</a>
                                                </div>
                                                <!--end col-->
                                            </div>
                                            <!--end form-group-->

                                            <div class="form-group mb-0 row">
                                                <div class="col-12">
                                                    <asp:Button ID="Button1" runat="server" Text="Log In" class="btn btn-primary btn-block waves-effect waves-light" OnClick="Button1_Click" />
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                    <%--<button class="btn btn-primary btn-block waves-effect waves-light" type="button">Log In <i class="fas fa-sign-in-alt ml-1"></i></button>--%>
                                                </div>
                                                <!--end col-->
                                            </div>
                                            <!--end form-group-->
                                            <asp:Label ID="lblerror" runat="server" Text=" " ForeColor="Red"></asp:Label>


                                        </form>
                                        <!--end form-->
                                        <div class="m-3 text-center text-muted">
                                            <p class="mb-0">Don't have an account ?  <a href="SignUp.aspx" class="text-primary ml-2">Free Register</a></p>
                                        </div>
                                        <%--<div class="account-social">
                                                <h6 class="mb-3">Or Login With</h6>
                                            </div>
                                            <div class="btn-group btn-block">
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Facebook</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Twitter</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Google</button>
                                            </div>--%>
                                    </div>
                                </div>


                            </div>
                            <!--end card-body-->
                           
                        </div>
                        <!--end card-->
                    </div>
                    <!--end col-->
                </div>
                <!--end row-->
            </div>
            <!--end col-->
        </div>
        <!--end row-->
    </div>
    <!--end container-->
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
