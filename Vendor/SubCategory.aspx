<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
      <div class="card aon-card" id="aon-category-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-list-alt"></i> Category</h4></div>
                    <div class="card-body aon-card-body">
                        <form runat="server" id="f1">
                    	     <div class="row">
                        	<div class="col-md-12">
                                <div class="form-group">
                                    <label>Category</label>
                                    <div class="alert alert-info">Currently you can choose categorie. You can increase it by upgrade membership plan</div>
                                    <asp:Label ID="lblcat" runat="server" Text="" class="form-control sf-form-control"></asp:Label>
                                    <%--<select class="selectpicker" multiple data-live-search="true">
                                        <option>Laoundry</option>
                                        <option>Cab Services</option>
                                        <option>Car Dealer</option>
                                        <option>Event Organizer</option>
                                      </select>--%>
                                </div>
                            </div>
                            <%--<div class="col-md-12">
                                <div class="form-group">
                                    <label>Primary Category</label>
                                    <div class="radio-inline-box">
    
                                        <div class="checkbox sf-radio-checkbox">
                                            <input id="lau1" name="abc" value="five" type="radio">
                                            <label for="lau1">Laundry</label>
                                        </div>
                                       

                                    </div>
                                </div>
                            </div>--%>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label> Enter Sub-Category Name</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Sub Category Name" Text="*" ControlToValidate="txtsubcatname" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <div class="aon-inputicon-box"> 
                                        <asp:TextBox ID="txtsubcatname" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                       <%-- <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                       
                                    </div>
                                </div>
                            </div>
                                 <div class="col-md-12">
                                     <div class="form-group">
                                        <label> Enter Sub-Category Description</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Category Description" Text="*" ControlToValidate="txtsubdesc" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <div class="aon-inputicon-box"> 
                                        <asp:TextBox ID="txtsubdesc" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                       <%-- <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                     </div>
                                </div>
                            </div>


                              <div class="col-md-12">
                                <div class="form-group">
                                    <label> Enter Sub-Category Price</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Price" Text="*" ControlToValidate="txtsubprice" ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Price Properly" ValidationExpression="^[0-9]+$" ControlToValidate="txtsubprice" ForeColor="Red">*</asp:RegularExpressionValidator>
                                    <div class="aon-inputicon-box"> 
                                        <asp:TextBox ID="txtsubprice" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                       <%-- <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                       
                                    </div>
                                </div>
                            </div>
                                 

                                     <div class="col-md-12">
                                <div class="form-group">
                                    <label> Select Photo</label>
                                    <div class="aon-inputicon-box"> 
                                        <asp:FileUpload ID="fupsubimage"  runat="server" class=" sf-form-control"/>
                                       <%-- <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                       
                                    </div>
                                </div>
                            </div>

                                  

                                  <div class="aon-ow-bottom">
                                     <p>    </p> <asp:Button ID="btn_submit" runat="server" Text="Submit" class="site-button" OnClick="btn_submit_Click" />

                                          <%--  <a href="profile-full.html" class="site-button">Request A Quote</a>--%>
                                  </div>

                                 <div class="aon-ow-bottom">
                                      <asp:Button ID="btn_update" runat="server" Text="Update" Visible="false" class="site-button" OnClick="btn_update_Click"  />
                                          <%--  <a href="profile-full.html" class="site-button">Request A Quote</a>--%>
                                  </div>
                        
                            
                        </div>

                             
                            <p>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                <asp:Label ID="lbldisp" runat="server" Text="" ForeColor="Red"></asp:Label></p>
                        </form>
                    </div>
                </div>
</asp:Content>
