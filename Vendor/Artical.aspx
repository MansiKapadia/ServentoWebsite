<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="Artical.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     	  <div class="card aon-card" id="aon-socialMedia-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-user"></i> Artical </h4></div>
                    <div class="card-body aon-card-body">
                        <form runat="server" id="f1">
                    	<div class="row">
                        	<div class="col-md-12">
                                <div class="form-group">
                                    <label>Image</label>
                                    <div class="aon-inputicon-box">
                                        <asp:FileUpload ID="Fileupload1" runat="server" class="form-control sf-form-control"></asp:FileUpload>
                                      
                                        <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                       <%-- <i class="aon-input-icon fa fa-facebook"></i>--%>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Title</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Title" Text="*" ControlToValidate="txttitle" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <div class="aon-inputicon-box">
                                        <asp:TextBox ID="txttitle" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                        <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                        <i class="aon-input-icon fa fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label> Artical Descripition</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Description" Text="*" ControlToValidate="txtadesc" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <div class="aon-inputicon-box">
                                        <asp:TextBox ID="txtadesc" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                        <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                         <i class="aon-input-icon fa fa-tags"></i>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-6">
                                        <div class="form-group">
                                           
                                            <div class="aon-inputicon-box"> 
                                                <asp:Button ID="btnsubmit" runat="server" Text="Submit Artical" class="admin-button assignButton margin-r-10" OnClick="btnsubmit_Click" />

                                                <asp:Button ID="btn_update" runat="server" Text="Update Artical" class="admin-button assignButton margin-r-10" OnClick="btn_update_Click"  Visible="false" />
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <asp:Label ID="Lbldisp" runat="server" Text=""></asp:Label>
                                               
                                            </div>
                                        </div>
                                    </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                                </div>
                            </div>
                          <%--  <div class="col-md-6">
                                <div class="form-group">
                                    <label> Pinterest</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-pinterest"></i>
                                    </div>
                                </div>
                            </div>--%>
                           <%-- <div class="col-md-6">
                                <div class="form-group">
                                    <label>Digg</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-digg"></i>
                                    </div>
                                </div>
                            </div>--%>
                           <%-- <div class="col-md-6">
                                <div class="form-group">
                                    <label>Instagram</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-instagram"></i>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                            </form>
                    </div>
                </div>  
                
                
            
</asp:Content>
