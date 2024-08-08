<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="StaffReg.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
           <div class="card aon-card">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-user"></i> Add Staff Details </h4></div>
                    <div class="card-body aon-card-body">
                        <form runat="server" id="f1">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    	<div class="row">
                            <div class="col-xl-6">
                                <div class="aon-staff-avtar">
                                	<div class="aon-staff-avtar-header">
                                    	<div class="aon-pro-avtar-pic ">
                                            <asp:Image ID="Image1" runat="server" />
                                           <%-- <img src="images/pic-large.jpg" alt="">--%>
                                          
                                            <%--<button class="admin-button has-toltip">
                                                <i class="fa fa-camera"></i>
                                                <span class="header-toltip">Upload Avtar</span>
                                                <input type="file" name="avtar">
                                            </button>--%>
                                        </div>
                                        <div class="aon-pro-cover-wrap">
                                            <div class="aon-pro-cover-pic">
                                                <img src="images/banner/job-banner.jpg" alt="">
                                            </div>
                                            <div class="admin-button-upload">
                                                <span>Upload Staff Photo</span>
                                                  <asp:FileUpload ID="profile" runat="server"  /><%--FileUpload--%>
                                                <%--<input type="file" name="avtar">--%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="aon-staff-avtar-footer">
                                    	<h4 class="aon-staff-avtar-title">Upload Staff Image</h4>
                                        <ul>
                                        	<li>Min width and height: <span>600 x 600 px</span></li>
                                            <li>Max Upload Size: <span>5 MB</span></li>
                                            <li>Extensions: <span>JPEG,PNG</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Staff Full Name</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Staff Name" Text="*" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtname" runat="server" class="form-control sf-form-control" ></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div><%--name--%>
                                   <%-- <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Staff Last Name</label>
                                            <div class="aon-inputicon-box"> 
                                                <asp:TextBox ID="txtlname" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                              <input class="form-control sf-form-control" name="company_name" type="text">
                                                <i class="aon-input-icon fa fa-building-o"></i>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Staff Adharcard</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Adharcard Number" ControlToValidate="txtadharcard" Text="*" ForeColor="Red"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Adharcard Properly" ValidationExpression="^[0-9]+$" Text="*" ControlToValidate="txtadharcard" ForeColor="Red"></asp:RegularExpressionValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtadharcard" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div><%--Adharcard--%>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact Number</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Contact No. " ControlToValidate="txtcontact" ForeColor="Red">*</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Mobile No. Properly" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" Text="*" ControlToValidate="txtcontact" ForeColor="Red"></asp:RegularExpressionValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtcontact" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div><%--Contact No--%>
                                    <div class="col-md-6 breck-w1400">
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <div class="aon-inputicon-box"> 

                                                <div class="radio-inline-box sf-radio-check-row">

                                                    <div class="checkbox sf-radio-checkbox sf-radio-check-2 sf-raChe-6">
                                                        <asp:RadioButton ID="Radmale" runat="server" Text="Male" GroupName="gender" />
                                                       <%-- <input id="any111" name="abc" value="five" type="radio">--%>
                                                      <%--  <label for="any111">Male</label>--%>
                                                    </div>
                                                    <div class="checkbox sf-radio-checkbox sf-radio-check-2 sf-raChe-6">
                                                         <asp:RadioButton ID="Radfemale" runat="server" Text="female"  GroupName="gender" />
                                                        <%--<input id="body111" name="abc" value="five" type="radio">
                                                        <label for="body111">Female</label>--%>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div><%--Gender--%>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Staff D.O.B</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Date OF Birth" Text="*" ControlToValidate="txtdob" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <div class="aon-inputicon-box">
                                                <%--<asp:Calendar ID="dob" runat="server" class="form-control sf-form-control"></asp:Calendar>--%>
                                                <asp:TextBox ID="txtdob" runat="server" class="form-control sf-form-control" TextMode="Date" ></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div><%--Dob--%>

                                    <div class="col-md-12 breck-w1400">
                                        <div class="form-group">
                                            <label>Address</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="txtadd" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtadd" runat="server"  class="form-control sf-form-control"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-tags"></i>
                                            </div>
                                        </div>
                                    </div><%--Address--%>

                                      <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="col-xl-12">
                                        <ContentTemplate>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>State</label>
                                            <div class="aon-inputicon-box">                                                  
                                                <asp:DropDownList ID="ddlstate" class="form-control" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sid" ></asp:DropDownList>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>  <%--State--%>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>City</label>
                                            <div class="aon-inputicon-box">                                       
                                                <asp:DropDownList ID="ddlcity" runat="server" class="form-control" AutoPostBack="true" DataSourceID="SqlDataSource2" DataTextField="city_name" DataValueField="city_id"></asp:DropDownList>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [City_mstr] WHERE ([sid] = @sid)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddlstate" PropertyName="SelectedValue" Name="sid" Type="String"></asp:ControlParameter>
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div> <%--City--%>

                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                                                        
                                    <div class="col-md-6">
                                        <div class="form-group">
                                           
                                            <div class="aon-inputicon-box"> 
                                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="admin-button assignButton margin-r-10" OnClick="btnsubmit_Click" />
                                                <asp:Button ID="btnupdate" runat="server" Text="Update" Visible="false" class="admin-button assignButton margin-r-10" OnClick="btnupdate_Click" />
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <asp:Label ID="lbldisp" runat="server" ></asp:Label>
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
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
