    <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
 <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="page-title-box">
                                <div class="row">
                                    <div class="col">
                                        <h4 class="page-title">Analytics</h4>
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="javascript:void(0);">Dastone</a></li>
                                            <li class="breadcrumb-item active">Dashboard</li>
                                        </ol>
                                    </div><!--end col-->
                                    <div class="col-auto align-self-center">
                                        <a href="#" class="btn btn-sm btn-outline-primary" id="Dash_Date">
                                            <span class="ay-name" id="Day_Name">Today:</span>&nbsp;
                                            <span class="" id="Select_date">Jan 11</span>
                                            <i data-feather="calendar" class="align-self-center icon-xs ml-1"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-outline-primary">
                                            <i data-feather="download" class="align-self-center icon-xs"></i>
                                        </a>
                                    </div><!--end col-->  
                                </div><!--end row-->                                                              
                            </div><!--end page-title-box-->
                        </div><!--end col-->
                    </div><!--end row-->
                    <!-- end page title end breadcrumb -->

                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <%--<div class="card-body p-0">
                                    <div id="user_map" class="pro-map" style="height: 220px"></div>                                     
                                </div>--%><!--end card-body-->                                
                                <div class="card-body">
                                    <div class="dastone-profile">
                                        <div class="row">
                                            <div class="col-lg-4 align-self-center mb-3 mb-lg-0">
                                                <div class="dastone-profile-main">
                                                    <div class="dastone-profile-main-pic">
                                                        <%--<img src="assets/images/users/user-4.jpg" alt="" height="110" class="rounded-circle">--%>
                                                        <asp:Image ID="Image1" runat="server" height="50" class="rounded-circle"/>
                                                       <%-- <span class="dastone-profile_main-pic-change">
                                                            <i class="fas fa-camera"></i>
                                                        </span>--%>
                                                    </div>
                                                    <div class="dastone-profile_user-detail">
                                                        <h5 class="dastone-user-name">
                                                            <asp:Label ID="lblvname" runat="server" ></asp:Label></h5>                                                        
                                                        <p class="mb-0 dastone-user-name-post">
                                                            <asp:Label ID="lbldisp" runat="server" ></asp:Label></p>                                                        
                                                    </div>
                                                </div>                                                
                                            </div><!--end col-->
                                            
                                            <div class="col-lg-4 ml-auto align-self-center">
                                                <ul class="list-unstyled personal-detail mb-0">
                                                    <li class=""><i class="las la-phone mr-2 text-secondary font-22 align-middle"></i> <b> phone </b> :<asp:Label ID="lblphn" runat="server" Text="Label"></asp:Label></li>
                                                    <li class="mt-2"><i class="las la-envelope text-secondary font-22 align-middle mr-2"></i> <b> Email </b> :<asp:Label ID="lblmail" runat="server" Text="Label"></asp:Label></li>
                                                        
                                                </ul>
                                               
                                            </div><!--end col-->
                                            <%--<div class="col-lg-4 align-self-center">
                                                <div class="row">
                                                    <div class="col-auto text-right border-right">
                                                        <button type="button" class="btn btn-soft-primary btn-icon-circle-sm mb-2">
                                                            <i class="fab fa-facebook-f"></i>
                                                        </button>
                                                        <p class="mb-0 font-weight-semibold">Facebook</p>
                                                        <h4 class="m-0 font-weight-bold">25k <span class="text-muted font-12 font-weight-normal">Followers</span></h4>
                                                    </div><!--end col-->
                                                    <div class="col-auto">
                                                        <button type="button" class="btn btn-soft-info btn-icon-circle-sm mb-2">
                                                            <i class="fab fa-twitter"></i>
                                                        </button>
                                                        <p class="mb-0 font-weight-semibold">Twitter</p>
                                                        <h4 class="m-0 font-weight-bold">58k <span class="text-muted font-12 font-weight-normal">Followers</span></h4>
                                                    </div><!--end col-->
                                                </div><!--end row-->                                               
                                            </div>--%><!--end col-->
                                        </div><!--end row-->
                                    </div><!--end f_profile-->                                                                                
                                </div><!--end card-body-->          
                            </div> <!--end card-->    
                        </div><!--end col-->
                    </div><!--end row-->
                   
                    <div class="row">
                        <div class="col-12">
                            
                                    <div class="row">
                                        <div class="col-lg-12 col-xl-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <div class="row align-items-center">
                                                        <div class="col">                      
                                                            <h4 class="card-title">Personal Information</h4>                      
                                                        </div><!--end col-->                                                       
                                                    </div>  <!--end row-->                                  
                                                </div><!--end card-header-->
                                                <form runat="server">
                                                    <div class="card-body">    
                                                    
                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">First Name</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <asp:Label ID="lblvfname" runat="server"  class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center"></asp:Label>
                                                           
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Last Name</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <asp:Label ID="lbllname" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center"></asp:Label>
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                        
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Email Address</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <%--<div class="input-group">--%>
                                                               <%-- <div class="input-group-prepend"><span class="input-group-text"><i class="las la-at"></i></span></div>--%>
                                                                <asp:Label ID="lblvmail" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center"></asp:Label>
                                                                <%--<input type="text" class="form-control" value="rosa.dodson@demo.com" placeholder="Email" aria-describedby="basic-addon1">--%>
                                                            <%--</div>--%>
                                                        </div>
                                                    </div>
                                                    <%--<label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center"> Mail</label>
                                                        <div class="col-lg-9 col-xl-8">

                                                            <asp:TextBox ID="txtvmail" runat="server" class="form-control"></asp:TextBox>
                                                           <%-- <input class="form-control" type="text" value="MannatThemes">--%>
                                                           <%-- <span class="form-text text-muted font-12">We'll never share your email with anyone else.</span>--%>
                                                        
                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Password</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <asp:Label ID="lblvpass" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center" ></asp:Label>
                                                            <%--<asp:TextBox ID="txtvpass" runat="server" class="form-control"></asp:TextBox>--%>
                                                           <%-- <input class="form-control" type="text" value="MannatThemes">--%>
                                                           <%-- <span class="form-text text-muted font-12">We'll never share your email with anyone else.</span>--%>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Addresss</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <asp:Label ID="lblvaddress" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center" ></asp:Label>
                                                           <%-- <asp:TextBox ID="txtvaddress" runat="server" class="form-control"></asp:TextBox>--%>
                                                            <%--<asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>--%>
                                                           <%-- <input class="form-control" type="text" value="Rosa">--%>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Select State</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                          
                                                            <asp:Label ID="lblcity" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center" ></asp:Label>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Select City</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <asp:Label ID="lblcity1" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center" ></asp:Label>
                                                            <%--<asp:DropDownList ID="ddlcity" runat="server" DataSourceID="SqlDataSource2" DataTextField="sid" DataValueField="sid"></asp:DropDownList>--%>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Contact Phone</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <%--<div class="input-group">--%>
                                                                <%--<div class="input-group-prepend"><span class="input-group-text"><i class="las la-phone"></i></span></div>--%>
                                                                <asp:Label ID="lblcontact" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center" ></asp:Label>
                                                                <%--<asp:Label ID="lblcontact" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center" ></asp:Label>--%>
                                                                <%--<asp:TextBox ID="txtvcontact" runat="server" class="form-control"></asp:TextBox>--%>
                                                                <%--<input type="text" class="form-control" value="+123456789" placeholder="Phone" aria-describedby="basic-addon1">--%>
                                                            <%--</div>--%>
                                                        </div>
                                                    </div>
                                                 <%--   <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Email Address</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <div class="input-group">
                                                                <div class="input-group-prepend"><span class="input-group-text"><i class="las la-at"></i></span></div>
                                                                <input type="text" class="form-control" value="rosa.dodson@demo.com" placeholder="Email" aria-describedby="basic-addon1">
                                                            </div>
                                                        </div>
                                                    </div>--%>
                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Vender Profile</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <asp:Image ID="vprofile" runat="server" Height="50" Width="50" />
                                                            <%--<asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>--%>
                                                           
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Vender Description</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <asp:Label ID="lblvdesc" runat="server" class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center"></asp:Label>
                                                            <%--<asp:TextBox ID="txtvdesc" runat="server" class="form-control"></asp:TextBox>--%>
                                                           
                                                        </div>
                                                    </div>

                                                

                                                      
                                                    
                                                   <%-- <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">USA</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <select class="form-control">
                                                                <option>London</option>
                                                                <option>India</option>
                                                                <option>USA</option>
                                                                <option>Canada</option>
                                                                <option>Thailand</option>
                                                            </select>
                                                        </div>
                                                    </div>--%>
                                                         <div class="form-group row">
                                                        <div class="col-lg-9 col-xl-8 offset-lg-3">
                                                            <asp:CheckBox ID="chkapp" runat="server" Text="   Approval" class="form-check-input" OnCheckedChanged="chkapp_CheckedChanged"/>
                                                        </div>
                                                    </div>     
                                                    </div>
                                                        

                                                    <div class="form-group row">
                                                        <div class="col-lg-9 col-xl-8 offset-lg-3">
                                                           <%-- <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                                                            <button type="button" class="btn btn-danger btn-sm">Cancel</button>--%>
                                                            <asp:Button ID="btn_app" runat="server" Text="Confirm" class="btn btn-primary btn-sm" OnClick="btn_app_Click" />
                                                        </div>
                                                    </div>     
                                                    </div>
                           
                                                </form>
                                            </div>
                                        </div> <!--end col--> 
                                      <%--  <div class="col-lg-6 col-xl-6">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 class="card-title">Change Password</h4>
                                                </div><!--end card-header-->
                                                <div class="card-body"> 
                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Current Password</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <input class="form-control" type="password" placeholder="Password">
                                                            <a href="#" class="text-primary font-12">Forgot password ?</a>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">New Password</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <input class="form-control" type="password" placeholder="New Password">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-xl-3 col-lg-3 text-right mb-lg-0 align-self-center">Confirm Password</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <input class="form-control" type="password" placeholder="Re-Password">
                                                            <span class="form-text text-muted font-12">Never share your password.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-lg-9 col-xl-8 offset-lg-3">
                                                            <button type="submit" class="btn btn-primary btn-sm">Change Password</button>
                                                            <button type="button" class="btn btn-danger btn-sm">Cancel</button>
                                                        </div>
                                                    </div>   
                                                </div><!--end card-body-->
                                            </div><!--end card-->
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 class="card-title">Other Settings</h4>
                                                </div><!--end card-header-->
                                                <div class="card-body"> 
                                                    <div class="custom-control custom-switch switch-success mb-2">
                                                        <input type="checkbox" class="custom-control-input" id="customSwitchSuccess" checked>
                                                        <label class="custom-control-label text-dark" for="customSwitchSuccess">Email Notifications</label>
                                                        <span class="form-text text-muted font-12 mt-0">Do you need them?</span>
                                                    </div>
                                                    <div class="custom-control custom-switch switch-success">
                                                        <input type="checkbox" class="custom-control-input" id="customSwitchSuccess">
                                                        <label class="custom-control-label text-dark" for="customSwitchSuccess">API Access</label>
                                                        <span class="form-text text-muted font-12 mt-0">Enable/Disable access</span>
                                                    </div>  
                                                </div><!--end card-body-->
                                            </div><!--end card-->
                                        </div> <!-- end col -->
                                         --%>                                     
                                    </div><!--end row-->
                              </div>
                        </div>
                

              


</asp:Content>
