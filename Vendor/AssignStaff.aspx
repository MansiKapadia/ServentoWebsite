<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="AssignStaff.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="aon-admin-heading">
                	<h4>Edit Profile</h4>
                </div>                
                
                <div class="card aon-card">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-user"></i> About me</h4></div>
                    <div class="card-body aon-card-body">
                          <form runat="server">
                              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    	<div class="row">
                           <%-- <div class="col-xl-6">
                                <div class="aon-staff-avtar">
                                	<div class="aon-staff-avtar-header">
                                    	<div class="aon-pro-avtar-pic ">
                                            <asp:Image ID="ProfileImage" runat="server" />
                                          
                                        </div>
                                        <div class="aon-pro-cover-wrap">
                                            <div class="aon-pro-cover-pic">
                                                <img src="images/banner/job-banner.jpg" alt="">
                                            </div>
                                            <div class="admin-button-upload">
                                                <span>Update Your Image</span>
                                                <asp:FileUpload ID="updateprofile" runat="server"  />
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div class="aon-staff-avtar-footer">
                                    	<h4 class="aon-staff-avtar-title">Update Your Image</h4>
                                        <ul>
                                        	<li>Min width and height: <span>600 x 600 px</span></li>
                                            <li>Max Upload Size: <span>5 MB</span></li>
                                            <li>Extensions: <span>JPEG,PNG</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>--%>
                            <div class="col-xl-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Order Id</label>   :   
                                            <%--<div class="aon-inputicon-box"> --%>
                                                <asp:Label ID="lblordid" runat="server" Text=""></asp:Label>
                                                <%--<label>First Name</label>
                                                <asp:TextBox ID="txtvfname" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <input class="form-control sf-form-control" name="company_name" type="text">
                                                <i class="aon-input-icon fa fa-user"></i>--%>
                                            <%--</div>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>User Name</label> : 
                                            <%--<div class="aon-inputicon-box">--%>
                                                <asp:Label ID="lbluname" runat="server" ></asp:Label>
                                                
                                              
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Staff</label>
                                            <div class="aon-inputicon-box"> 
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Staff_mstr] WHERE ([vid] = @vid)">
                                                    <SelectParameters>
                                                        <asp:SessionParameter SessionField="vid" Name="vid" Type="Int32"></asp:SessionParameter>
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:DropDownList ID="ddlstate" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="staffname" DataValueField="staffid"></asp:DropDownList>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                
                                            </div>
                                        </div>
                                    </div>  <%--Staff--%>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Date</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Date" ForeColor="Red" Text="*" ControlToValidate="txtdate"></asp:RequiredFieldValidator> 
                                            <div class="aon-inputicon-box">
                                            <%--    <asp:Label ID="Label1" runat="server" ></asp:Label>--%>
                                                
                                                <asp:TextBox ID="txtdate" runat="server" class="form-control sf-form-control" TextMode="Date" />
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">
                                                <i class="aon-input-icon fa fa-building-o"></i>--%>
                                            </div>
                                        </div>
                                    </div>

                                   <%-- <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact</label>
                                            <div class="aon-inputicon-box">
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact Number</label>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtvcontact" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <input class="form-control sf-form-control" name="company_name" type="text">
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="col-md-12 breck-w1400">
                                        <div class="form-group">
                                            <label>Address</label>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtvaddress" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <input class="form-control sf-form-control" name="company_name" type="text">
                                                <i class="aon-input-icon fa fa-tags"></i>
                                            </div>
                                        </div>
                                    </div>                                   

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>My Discription</label>
                                            <div class="editer-wrap">
                                                <div class="editer-textarea">
                                                    <asp:TextBox ID="txtvdesc"  class="form-control" runat="server"></asp:TextBox>
                                                    <textarea class="form-control" rows="4"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                           
                                            <div class="aon-inputicon-box"> 
                                                <asp:Button ID="btnassign" runat="server" Text="Assign" class="admin-button assignButton margin-r-10" OnClick="btnassign_Click" />
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <asp:Label ID="Lbldisp" runat="server" ></asp:Label>
                                               
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        </div>
                              </form>
                    </div>
                </div>   

</asp:Content>
