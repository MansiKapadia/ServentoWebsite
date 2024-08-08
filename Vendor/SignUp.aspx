<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="As_Your_Need_services.Vendor.SignUp" %>

<!DOCTYPE html>
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
                                        
                                            <img src="../Servento/Servento-logos_transparent.png" height="200" alt="logo" class="auth-logo">
                                        
                                        <%--<h4 class="mt-3 mb-1 font-weight-semibold text-white font-18">Let's Get Started Dastone</h4>   --%>
                                        <p class="text-muted  mb-0">Register with Servento.</p>  
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                     <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane active p-3" id="LogIn_Tab" role="tabpanel">                                        
                                            
                                             <form class="form-horizontal auth-form" id ="f1" runat="server">
                                                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                                <div class="form-group mb-2">
                                                    <label for="username">First Name</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter First Name" ControlToValidate="txtfname" Text="*"></asp:RequiredFieldValidator>
                                                    <div class="input-group"> 
                                                        <asp:TextBox ID="txtfname" runat="server" class="form-control" placeholder="Enter First Name"></asp:TextBox>
                                                        <%--<input type="text" class="form-control" name="username" id="username" placeholder="Enter username">--%>
                                                    </div>                                    
                                                </div><!--end form-group--> 
            
                                                <div class="form-group mb-2">
                                                    <label>Last Name</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Last Name" Text="*" ControlToValidate="txtlname"></asp:RequiredFieldValidator>
                                                    <div class="input-group">  
                                                        <asp:TextBox ID="txtlname" runat="server" class="form-control" placeholder="Enter Last Name"></asp:TextBox>
                                                        <%--<input type="email" class="form-control" name="email" id="useremail" placeholder="Enter Email">--%>
                                                    </div>                                    
                                                </div><!--end form-group-->

                                                  <div class="form-group mb-2">
                                                    <label>Email</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Email" Text="*" ControlToValidate="txtemail"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Email Properly" ControlToValidate="txtemail" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                    <div class="input-group"> 
                                                        <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                                                        <%--<input type="password" class="form-control" name="password" id="userpassword" placeholder="Enter password">--%>
                                                    </div>                               
                                                </div><!--end form-group-->
                    
                                                <div class="form-group mb-2">
                                                    <label for="userpassword">Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Password" Text="*" ControlToValidate="txtpass"></asp:RequiredFieldValidator> 
                                                    <div class="input-group">
                                                        <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Enter password" TextMode="Password" ></asp:TextBox><%--<i class ="dripicons-preview"></i>--%>
                                                        <%--<input type="password" class="form-control" name="password" id="userpassword" placeholder="Enter password">--%>
                                                    </div>                               
                                                </div><!--end form-group--> 
            
                                                <div class="form-group mb-2">
                                                    <label for="conf_password">Confirm Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Conform Password" ControlToValidate="txtcpass">*</asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Enter Confirm Password As Password">*</asp:CompareValidator>
                                                    <div class="input-group"> 
                                                        <asp:TextBox ID="txtcpass" runat="server" class="form-control" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
                                                        <%--<input type="password" class="form-control" name="conf-password" id="conf_password" placeholder="Enter Confirm Password">--%>
                                                    </div>
                                                </div><!--end form-group-->

                                               <%-- <div class="form-group mb-0 row">
                                                    <label class="col-md-3 my-1 control-label">Gender</label>
                                                    <div class="col-md-9">
                                                        <div class="form-check-inline my-1">
                                                            <div class="custom-control custom-radio">
                                                                
                                                                <input type="radio" id="customRadio7" name="customRadio" class="form-control">
                                                                <label class="custom-control-label" for="customRadio7">Male</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-check-inline my-1">
                                                            <div class="custom-control custom-radio">
                                                                
                                                                <input type="radio" id="customRadio8" name="customRadio" class="form-control">
                                                                <label class="custom-control-label" for="customRadio8">Female</label>
                                                            </div>
                                                        </div>
                                                    
                                                    </div>
                                                </div> <!--end row-->
                                               --%>  
                                                 <div class="form-group mb-2">
                                                    <label for="conf_password">Gender</label>                                            
                                                    <div class="input-group"> 
                                                        <asp:RadioButton ID="radmale" runat="server" Text=". Male"  class="form-control" TextAlign="Right" GroupName="Gender" />
                                                        <asp:RadioButton ID="radfemale" runat="server" Text=". Female" class="form-control" TextAlign="Right" GroupName="Gender"/>
                                                    </div>
                                                </div><!--end form-group-->
                                                

                                                  <div class="form-group mb-2">
                                                    <label for="conf_password">Address</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="txtadd">*</asp:RequiredFieldValidator>                                           
                                                    <div class="input-group"> 
                                                        <asp:TextBox ID="txtadd" class="form-control" runat="server" placeholder="Enter Address"></asp:TextBox>
                                                        <%--<input type="password" class="form-control" name="conf-password" id="conf_password" placeholder="Enter Confirm Password">--%>
                                                    </div>
                                                </div><!--end form-group-->
                                                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                     <ContentTemplate>

                                                       <div class="form-group mb-2">
                                                        <label for="conf_password">State</label>                                            
                                                        <div class="input-group">
                                                            <asp:DropDownList ID="ddlstate" runat="server" class="form-control"  AutoPostBack="True" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                                                                <asp:ListItem text="Select State" Value="0"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <%--<input type="password" class="form-control" name="conf-password" id="conf_password" placeholder="Enter Confirm Password">--%>
                                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
                                                        </div>
                                                    </div><!--end form-group-->

                                                       <div class="form-group mb-2">
                                                        <label for="conf_password">City</label>                                            
                                                        <div class="input-group">  
                                                            <asp:DropDownList ID="ddlcity" runat="server" class="form-control" >
                                                                
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [City_mstr] WHERE ([sid] = @sid)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlstate" PropertyName="SelectedValue" Name="sid" Type="String"></asp:ControlParameter>
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </div>
                                                    </div><!--end form-group-->
                                                 
                                                 

                                                     </ContentTemplate>
                                                 </asp:UpdatePanel>
                                                 
                                                
                                                <div class="form-group mb-2">
                                                    <label for="mo_number">Mobile Number<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobno" ErrorMessage="Enter Mobile Number Properly" ValidationExpression="^[0-9]+$">*</asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtmobno" ErrorMessage="Please Enter Mobile Number">*</asp:RequiredFieldValidator>
                                                    </label>                                            
                                                    &nbsp;<div class="input-group">
                                                        <asp:TextBox ID="txtmobno" runat="server" class="form-control" placeholder="Enter Mobile Number" TextMode="Phone" ></asp:TextBox>
                                                        <%--<input type="txtcontact" class="form-control" name="mobile number" id="mo_number" placeholder="Enter Mobile Number">--%>
                                                    </div>                               
                                                </div><!--end form-group-->

                                                  <div class="form-group mb-2">
                                                    <label for="mo_number">Upload Your Photo</label>                                            
                                                    <div class="input-group">
                                                        <asp:FileUpload ID="profile" runat="server"   />
                                                        <%--<input type="txtcontact" class="form-control" name="mobile number" id="mo_number" placeholder="Enter Mobile Number">--%>
                                                    </div>                               
                                                </div><!--end form-group-->

                                                 <div class="form-group mb-2">
                                                    <label for="conf_password">Category</label>                                            
                                                    <div class="input-group">
                                                        <asp:DropDownList ID="ddlcatogary" runat="server" class="form-control" DataSourceID="SqlDataSource3" DataTextField="cat_name" DataValueField="cat_Id" AppendDataBoundItems="true">
                                                            <asp:ListItem text="Select Category" Value="0"></asp:ListItem>
                                                        </asp:DropDownList>

                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Category_mstr]"></asp:SqlDataSource>
                                                    </div>
                                                </div><!--end form-group-->
                                                

                                                 
                                                 <div class="form-group mb-2">
                                                    <label for="userpassword">Description<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtdesc" ErrorMessage="Please Enter Description">*</asp:RequiredFieldValidator>
                                                     </label>                                            
                                                    &nbsp;<div class="input-group">
                                                        <asp:TextBox ID="txtdesc" runat="server" class="form-control" placeholder="Enter Description"></asp:TextBox>
                                                        <%--<input type="password" class="form-control" name="password" id="userpassword" placeholder="Enter password">--%>
                                                    </div>                               
                                                </div><!--end form-group-->
                    
                                                <div class="form-group mb-0 row">
                                                    <div class="col-12">
                                                        <asp:Button ID="btn_register" runat="server" Text="Register" class="btn btn-primary btn-block waves-effect waves-light" OnClick="btn_register_Click" />
                                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                        <%--<button class="btn btn-primary btn-block waves-effect waves-light" type="button">Register <i class="fas fa-sign-in-alt ml-1"></i></button>--%>
                                                    </div><!--end col--> 
                                                </div> <!--end form-group-->  
                                                 
                                                 <div class="form-group mb-2">
                                                     <asp:Label ID="lbldisp" runat="server" Text=""></asp:Label>
                                                    <%--<label for="userpassword">Description</label>--%>                                            
                                                </div><!--end form-group-->
                                            </form><!--end form-->
                                            <div class="m-3 text-center text-muted">
                                                <p>
                                                    <%--<asp:HyperLink ID="HyperLink1" runat="server" href="Default.aspx" class="text-primary ml-2">Login</asp:HyperLink>--%></p>
                                                <p class="mb-0">Already have an account ?  <a href="Default.aspx" class="text-primary ml-2">Login</a></p>
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
                                       
                                    
                                </div><!--end card-body-->
                                <%--<div class="card-body bg-light-alt text-center">
                                    <span class="text-muted d-none d-sm-inline-block">Mannatthemes © 2020</span>                                            
                                </div>--%>
                            </div><!--end card-->
                        </div><!--end col-->
                    </div><!--end row-->
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end container-->
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
