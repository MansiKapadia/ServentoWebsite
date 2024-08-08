<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserDetails.Master" AutoEventWireup="true" CodeBehind="ViewProfileUser.aspx.cs" Inherits="As_Your_Need_services.User.WebForm7" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="aon-admin-heading">
                	<h4>Edit Profile</h4>
                </div>                
                
                <div class="card aon-card">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-user"></i> About me</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                            <%--<div class="col-xl-6">
                                <div class="aon-staff-avtar">
                                	<div class="aon-staff-avtar-header">
                                    	<div class="aon-pro-avtar-pic ">
                                            <img src="images/pic-large.jpg" alt="">
                                            <button class="admin-button has-toltip">
                                                <i class="fa fa-camera"></i>
                                                <span class="header-toltip">Upload Avtar</span>
                                                <input type="file" name="avtar">
                                            </button>
                                        </div>
                                        <div class="aon-pro-cover-wrap">
                                            <div class="aon-pro-cover-pic">
                                                <img src="images/banner/job-banner.jpg" alt="">
                                            </div>
                                            <div class="admin-button-upload">
                                                <span>Upload Cover Image</span>
                                                <input type="file" name="avtar">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="aon-staff-avtar-footer">
                                    	<h4 class="aon-staff-avtar-title">Upload Your Avatar</h4>
                                        <ul>
                                        	<li>Min width and height: <span>600 x 600 px</span></li>
                                            <li>Max Upload Size: <span>512MB</span></li>
                                            <li>Extensions: <span>JPEG,PNG,GIF,PNG</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>--%>
                            <form runat="server">
                            <div class="col-xl-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Username</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Name" Text="*" ControlToValidate="txtuname"></asp:RequiredFieldValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtuname" runat="server" class="form-control sf-form-control" ></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtemail" Text="*"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter Email Properly" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtemail" runat="server"  class="form-control sf-form-control" ></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-building-o"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Contact No</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Contact No" ControlToValidate="txtcontact" Text="*"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Contact no Properly" Text="*" ControlToValidate="txtcontact" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"></asp:RegularExpressionValidator>
                                            <div class="aon-inputicon-box">                                                
                                                <asp:TextBox ID="txtcontact" runat="server"  class="form-control sf-form-control" TextMode="Phone"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-mobile"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div class="col-md-6">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <div class="aon-inputicon-box"> 
                                                <input class="form-control sf-form-control" name="company_name" type="text">
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div>
                                    --%>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                           
                                            <div class="aon-inputicon-box"> 
                                                <asp:Button ID="btnupdate" runat="server" Text="Update" class="admin-button assignButton margin-r-10" OnClick="btnupdate_Click" />
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <asp:Label ID="Lbldisp" runat="server" Text=""></asp:Label>
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                               
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                                </form>
                        </div>
                    </div>
                </div>   
</asp:Content>
