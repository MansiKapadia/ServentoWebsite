<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="VProfile.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm3" %>
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
                        
                          
                            <div class="col-xl-6">
                                <div class="aon-staff-avtar">
                                	<div class="aon-staff-avtar-header">
                                    	<div class="aon-pro-avtar-pic ">
                                            <asp:Image ID="ProfileImage" runat="server" />
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
                                                <span>Update Your Image</span>
                                                <asp:FileUpload ID="updateprofile" runat="server"  />
                                                <%--<input type="file" name="avtar">--%>
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
                            </div>
                            <div class="col-xl-6">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>First Name</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter First Name" ControlToValidate="txtvfname" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <div class="aon-inputicon-box"> 
                                                <asp:TextBox ID="txtvfname" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Last Name</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter last Name" Text="*" ControlToValidate="txtvlname" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtvlname" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-building-o"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Mail</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtvmail" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtvmail" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact Number</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Contact Details" ControlToValidate="txtvcontact" Text="*" ForeColor="Red"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Contact No Properly" ControlToValidate="txtvcontact" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$">*</asp:RegularExpressionValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtvcontact" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-user"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 breck-w1400">
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <div class="aon-inputicon-box"> 

                                                <div class="radio-inline-box sf-radio-check-row">

                                                    <div class="checkbox sf-radio-checkbox sf-radio-check-2 sf-raChe-4">
                                                        <asp:RadioButton ID="Radmale" runat="server" Text="Male" GroupName="Gender" />
                                                        <%--<input id="any111" name="abc" value="five" type="radio">--%>
                                                        <%--<label for="any111">Male</label>--%>
                                                    </div>
                                                    <div class="checkbox sf-radio-checkbox sf-radio-check-2 sf-raChe-4">
                                                         <asp:RadioButton ID="Radfemale" runat="server" Text="Female" GroupName="Gender" />
                                                        <%--<input id="body111" name="abc" value="five" type="radio">
                                                        <label for="body111">Female</label>--%>
                                                    </div>
                                                      <%--<div class="checkbox sf-radio-checkbox sf-radio-check-2 sf-raChe-4">
                                                         <asp:RadioButton ID="Radother" runat="server" Text="Other"  GroupName="Gender" />
                                                    </div>--%>
                                                </div>

                                            </div>
                                        </div>
                                    </div><%--Gender--%>

                                    <div class="col-md-12 breck-w1400">
                                        <div class="form-group">
                                            <label>Address</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Neter Address" ForeColor="Red" Text="*" ControlToValidate="txtvaddress"></asp:RequiredFieldValidator>
                                            <div class="aon-inputicon-box">
                                                <asp:TextBox ID="txtvaddress" runat="server" class="form-control sf-form-control"></asp:TextBox>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <i class="aon-input-icon fa fa-tags"></i>
                                            </div>
                                        </div>
                                    </div>

                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="col-xl-12">
                                        <ContentTemplate>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>State</label>
                                            <div class="aon-inputicon-box">                                                  
                                                <asp:DropDownList ID="ddlstate" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" ></asp:DropDownList>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>                                             
                                            </div>
                                        </div>
                                    </div>  <%--State--%>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>City</label>
                                            <div class="aon-inputicon-box">                                       
                                                <asp:DropDownList ID="ddlcity" runat="server" class="form-control" AutoPostBack="true" ></asp:DropDownList>
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>                                                
                                            </div>
                                        </div>
                                    </div> <%--City--%>

                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>My Discription</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Description" Text="*" ControlToValidate="txtvdesc" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <div class="editer-wrap">
                                                <div class="editer-textarea">
                                                    <asp:TextBox ID="txtvdesc"  class="form-control" runat="server"></asp:TextBox>
                                                   <%-- <textarea class="form-control" rows="4"></textarea>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                           
                                            <div class="aon-inputicon-box"> 
                                                <asp:Button ID="btnupdate" runat="server" Text="Update" class="admin-button assignButton margin-r-10" OnClick="btnupdate_Click"/>
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                <%--<input class="form-control sf-form-control" name="company_name" type="text">--%>
                                                <asp:Label ID="Lbldisp" runat="server" Text=""></asp:Label>
                                               
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        </div>
                              </form>
                    </div>
                </div>   

              <%--  <div class="card aon-card" id="aon-contact-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-envelope"></i> Contact Detail</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                        	<div class="col-md-6">
                                <div class="form-group">
                                    <label>Mobile</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-phone"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Alt. Mobile</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-mobile"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-envelope"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Skype</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-skype"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Website</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-globe"></i>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>  
          
                <div class="card aon-card" id="aon-adress-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-address-card"></i> Address</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                        	<div class="col-md-12">
                                <div class="form-group">
                                    <label>Location</label>
                                    <div class="grayscle-area address-area-map">
                                        <iframe height="460" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3304.8534521658976!2d-118.2533646842856!3d34.073270780600225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c6fd9829c6f3%3A0x6ecd11bcf4b0c23a!2s1363%20Sunset%20Blvd%2C%20Los%20Angeles%2C%20CA%2090026%2C%20USA!5e0!3m2!1sen!2sin!4v1620815366832!5m2!1sen!2sin"></iframe>
                                    </div>
                                    
                                    <button class="button rwmb-map-goto-address-button btn btn-primary m-t20" value="address"> Find Address on Map </button>
                                    <p>Note: This will load your address on map and fillup latitude and longitude</p>
                                    
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Address</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-globe"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Apt/Suite #</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-map-marker"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>City</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-map-marker"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>State</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-map-marker"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Postal Code</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-map-marker"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Country</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-map-marker"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Latitude</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-street-view"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Longitude</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-street-view"></i>
                                    </div>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                </div> 

                <div class="card aon-card" id="aon-serviceArea-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-building-o"></i> Radius for Service Area</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                        	

                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="sf-range-slider sf-range-w250">
                                        <div class="sf-range-slider-control">Radius: <span>45Km</span></div>
                                        <input id="ex1" data-slider-id='ex1Slider' type="text" data-slider-min="0" data-slider-max="20" data-slider-step="1" data-slider-value="14"/>
                                    </div>
                                </div>
                            </div>
                                                       
                            
                        </div>
                    </div>
                </div> 

                <div class="card aon-card" id="aon-servicePer-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-building-o"></i> Service to Perform At</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                        	

                            <div class="col-md-12">
                                <div class="aon-inputicon-box"> 

                                    <div class="radio-inline-box service-perform-list">

                                        <div class="checkbox sf-radio-checkbox sf-radio-check-2">
                                            <input id="loc11" name="abc" value="five" type="radio">
                                            <label for="loc11">My Location</label>
                                        </div>
                                        <div class="checkbox sf-radio-checkbox sf-radio-check-2">
                                            <input id="loc22" name="abc" value="five" type="radio">
                                            <label for="loc22">Customer Location</label>
                                        </div>
                                        <div class="checkbox sf-radio-checkbox sf-radio-check-2">
                                            <input id="loc33" name="abc" value="five" type="radio">
                                            <label for="loc33">Both</label>
                                        </div>

                                    </div>

                                </div>
                            </div>
                                                       
                            
                        </div>
                    </div>
                </div>
                
                <div class="card aon-card" id="aon-socialMedia-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-share-alt"></i> Social Media</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                        	<div class="col-md-6">
                                <div class="form-group">
                                    <label>Facebook</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-facebook"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Twitter</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-twitter"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Linkedin</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-linkedin"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Pinterest</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-pinterest"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Digg</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-digg"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Instagram</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-instagram"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <div class="card aon-card" id="aon-passUpdate-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-lock"></i> Password Update</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                        	<div class="col-md-6">
                                <div class="form-group">
                                    <label>New Password</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-lock"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Repeat Password</label>
                                    <div class="aon-inputicon-box"> 
                                        <input class="form-control sf-form-control" name="company_name" type="text">
                                        <i class="aon-input-icon fa fa-lock"></i>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <p>Enter same password in both fields. Use an uppercase letter and a number for stronger password.</p>
                    </div>
                </div>

                <div class="card aon-card" id="aon-category-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-list-alt"></i> Category</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                        	<div class="col-md-12">
                                <div class="form-group">
                                    <label>Category</label>
                                    <div class="alert alert-info">Currently you can choose 10 categories. You can increase it by upgrade membership plan</div>
                                    <select class="selectpicker" multiple data-live-search="true">
                                        <option>Laoundry</option>
                                        <option>Cab Services</option>
                                        <option>Car Dealer</option>
                                        <option>Event Organizer</option>
                                      </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Primary Category</label>
                                    <div class="radio-inline-box">
    
                                        <div class="checkbox sf-radio-checkbox">
                                            <input id="lau1" name="abc" value="five" type="radio">
                                            <label for="lau1">Laundry</label>
                                        </div>
                                       

                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <p>Enter same password in both fields. Use an uppercase letter and a number for stronger password.</p>
                    </div>
                </div>

                <div class="card aon-card" id="aon-amenities-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-shield"></i> Amenities</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Amenities</label>
                                    <select class="selectpicker" multiple data-live-search="true">
                                        <option>Laoundry</option>
                                        <option>Cab Services</option>
                                        <option>Car Dealer</option>
                                        <option>Event Organizer</option>
                                      </select>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>

                <div class="card aon-card" id="aon-languages-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-language"></i> Languages</h4></div>
                    <div class="card-body aon-card-body">
                    	<div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Languages</label>
                                    <select class="selectpicker" multiple data-live-search="true">
                                        <option>Laoundry</option>
                                        <option>Cab Services</option>
                                        <option>Car Dealer</option>
                                        <option>Event Organizer</option>
                                      </select>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>

                <div class="card aon-card" id="aon-gallery-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-image"></i> Gallery Images</h4>
                    </div>
                    
                    <div class="card-body aon-card-body">
                    	<form action="https://aonetheme.com/sf-html-demo/upload.php" class="dropzone dropzone-custom"></form>
                    </div>
                </div>
                
                <div class="card aon-card" id="aon-video-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-video-camera"></i> Video Upload</h4>
                    </div>
                    
                    <div class="card-body aon-card-body">
                    	<div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="Insert YouTube or Vimeo or Facebook Vedio Url" aria-label="Recipient's username">
                          <div class="input-group-append">
                            <button class="btn admin-button" type="button">Priview</button>
                          </div>
                        </div>
                    </div>
                </div>
            --%>
 
 
 
</asp:Content>
