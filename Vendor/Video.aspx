<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="Video.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%-- <div class="card aon-card" id="aon-gallery-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-image"></i> Gallery Images</h4>
                    </div>
                    
                    <div class="card-body aon-card-body">
                    	<form action="https://aonetheme.com/sf-html-demo/upload.php" class="dropzone dropzone-custom"></form>
                    </div>
                </div>--%>
                
                <div class="card aon-card" id="aon-video-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-video-camera"></i> Video Upload</h4>
                    </div>
                    
                    <div class="card-body aon-card-body">
                    	<%--<div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="Insert YouTube or Vimeo or Facebook Vedio Url" aria-label="Recipient's username">
                          <div class="input-group-append">
                            <button class="btn admin-button" type="button">Priview</button>
                          </div>--%>
                        </div>
                        <div class="col-md-12">
                            <form runat="server" id="f1">
                            <div class="row">
                        	<div class="col-md-12">
                                <div class="form-group">
                                    <label>Category</label>
                                   <%-- <div class="alert alert-info">Currently you can choose 10 categories. You can increase it by upgrade membership plan</div>--%>
                                   <%-- <select class="selectpicker" multiple data-live-search="true">
                                        <option>Laoundry</option>
                                        <option>Cab Services</option>
                                        <option>Car Dealer</option>
                                        <option>Event Organizer</option>
                                      </select>--%>
                                    <asp:DropDownList ID="ddlcate" runat="server" class="selectpicker" DataSourceID="SqlDataSource1" DataTextField="sub_cat_name" DataValueField="sub_cat_id"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Sub_Category] WHERE ([vid] = @vid)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="vid" Name="vid" Type="String"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                                </div>


<%--                                <div class="form-group">
                                       <label>Video URL</label>
                                         <div class="aon-inputicon-box">
                                             <asp:TextBox ID="txturl" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                            <input class="form-control sf-form-control" name="company_name" type="text">
                                              
                                            </div>
                                        </div>--%>
                                <div class="form-group">
                                       <label>Video Url</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter URL" Text="*" ControlToValidate="txturl" ForeColor="Red"></asp:RequiredFieldValidator>
                                         <div class="aon-inputicon-box">
                                             <asp:TextBox ID="txturl" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                            <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                   
                                  </div>
                           </div>

                             <div class="form-group">
                                       <label>Video Image</label>
                                         <div class="aon-inputicon-box">
                                             <asp:FileUpload ID="FileUpload1" runat="server" class="form-control sf-form-control" />
                                            <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                   
                                  </div>
                           </div>

                                 <div class="col-md-6">
                                        <div class="form-group">
                                           
                                            <div class="aon-inputicon-box"> 
                                                <asp:Button ID="btnsubmit" runat="server" Text="Submit Video" class="admin-button assignButton margin-r-10" OnClick="btnsubmit_Click"  />
                                                <asp:Button ID="btnupdate" runat="server" Text="Update Video" class="admin-button assignButton margin-r-10" OnClick="btnupdate_Click" Visible="false"  />
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <asp:Label ID="Lbldisp" runat="server" Text=""></asp:Label>
                                               <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                <div class="form-group">
                                      
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                                            <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                   
                                  </div>
                         
                                </form>

                      </div>
                    </div>


                
            
 
            
</asp:Content>
