<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="DispCategory.aspx.cs" Inherits="As_Your_Need_services.User.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="page-content">
            
            <div class="section-content sf-allCaty-info-wrap">
                <div class="container">
                    <!--Category Detail Section Start-->
                    <div class="row">
                        <!--Category Detail Left-->
                        <div class="col-md-6">
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Category_mstr] WHERE ([cat_Id] = @cat_Id)">
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="cat_Id" Name="cat_Id" Type="Int32"></asp:QueryStringParameter>

                                </SelectParameters>
                            </asp:SqlDataSource>
                            
                            
                            <div>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                               <%--  <img src='../Admin/CategoryImage/<%# Eval("cat_image") %>' />--%>
                                <img src='../Admin/CategoryImage/<%# Eval("cat_image")%>' height="300" width="600"/>
                                
                            </div>
                                
                                
                           <%-- <div class="sf-caty-pic">
                                <div class="sf-caty-btn">View Providers</div>
                                <div class="sf-caty-cirle"><i class="fa fa-arrow-circle-down"></i></div>
                            </div>--%>
                        </div>
                        <!--Category Detail Right-->
                        <div class="col-md-6">
                            <div class="sf-caty-info">
                                <div class="m-b10"><strong>Category</strong> / <%# Eval("cat_name") %> </div>
                                <h3><%--House Cleaning Services--%> <%# Eval("cat_name") %></h3>
                                <div class="sf-caty-text">
                                    <p>
                                        <asp:Label ID="lbldes" runat="server" Text='<%# Eval("cat_desc") %>'></asp:Label>
                                        <%--Pro house cleaners work with you to assess your home cleaning needs. Whether you need weekly, bi-weekly, or monthly services, 
                                        house cleaning professionals can schedule cleanings, so that your home has routine care They can also deep clean the house in 
                                        between cleaning, before special occasions, or for move-in and move-out cleaning.--%></p>
                                    <%--<p>On average, house cleaners on Zaarly cost $30 - $50 per hour per house cleaner. The price will depend on factors like size of the home, supplies needed, and special cleaning circumstances. A 2000 square foot home will typically cost $250. One-time deep cleanings will 
                                        cost more and signing up for regular cleaning usually will be more cost-effective. </p>--%>
                                </div>
                            </div>
                        </div>
                        </ItemTemplate>
                                        </asp:Repeater>
                    </div>
                    <!--Category Detail Section End-->
                </div>
            </div>
            
           <%-- <div class="section-content sf-allCaty-grid-wrap sf-owl-arrow">
                <div class="container">
                    <!--Title Section Start-->
                    <div class="section-head">
                        <div class="row">
                            <div class="col-md-6">
                                <h2 class="sf-title text-white">All Categories</h2>
                            </div>
                            <div class="col-md-6">
                            </div>
                        </div>
                    </div>
                    <!--Title Section End-->

                    <div class="section-content">
                        <div class="owl-carousel owl-caty-carousel sf-owl-arrow">
                            <!-- COLUMNS 1 -->
                            <div class="item sf-caty-item-col">
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic1.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Car Mechanics</a></h5>
                                </div>
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic2.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">House Cleaning</a></h5>
                                </div>
                            </div>
                            <!-- COLUMNS 2 -->
                            <div class="item sf-caty-item-col">
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic3.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Kitchen Cleaning</a></h5>
                                </div>
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic4.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Cafe</a></h5>
                                </div>
                            </div>
                            <!-- COLUMNS 3 -->
                            <div class="item sf-caty-item-col">
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic5.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Plumber</a></h5>
                                </div>
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic6.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Fitness</a></h5>
                                </div>
                            </div>
                            <!-- COLUMNS 4 -->
                            <div class="item sf-caty-item-col">
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic7.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Hair Salon</a></h5>
                                </div>
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic8.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Gym</a></h5>
                                </div>
                            </div>
                            <!-- COLUMNS 5 -->
                            <div class="item sf-caty-item-col">
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic9.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Gardening</a></h5>
                                </div>
                                <div class="sf-catyitem-box">
                                    <div class="sf-catyitem-pic" style="background-image: url(images/categories/pic10.jpg)">
                                        <span class="sf-caty-num"></span>
                                        <a href="#" class="sf-caty-link"></a>
                                    </div>
                                    <h5 class="sf-catyitem-title"><a href="categories-detail.html">Electrician</a></h5>
                                </div>
                            </div>
                        </div>
                    </div>                       
                    
                </div>
            </div>--%>
            
            <div class="section-content sf-caty-listResult-wrap">
                <div class="container">

                    <div class="section-content">
                        <!--Showing results topbar Start-->
                        <div class="sf-search-result-top flex-wrap d-flex justify-content-between">
                            <%--<div class="sf-search-result-title"> <h5>Showing 1 – 10 of 16 results</h5></div>--%>
                            <%--<div class="sf-search-result-option">
                                <ul class="sf-search-sortby">
                                  <li class="sf-select-sort-by">
                                    <select class="sf-select-box form-control sf-form-control bs-select-hidden" title="SORT BY" name="setorderby" id="setorderby">
                                      <option class="bs-title-option" value="">SORT BY</option>
                                      <option value="rating">Rating</option>
                                      <option value="title">Title</option>
                                      <option value="distance">Distance</option>
                                    </select>
                                  </li>
                                  <li>
                                    <select class="sf-select-box form-control sf-form-control bs-select-hidden" title="DESC" name="setorder" id="setorder">
                                      <option class="bs-title-option" value="">DESC</option>
                                      <option value="asc">ASC</option>
                                      <option value="desc">DESC</option>
                                    </select>
                                  </li>
                                  <li>
                                    <select class="sf-select-box form-control sf-form-control bs-select-hidden" title="9" name="numberofpages" id="numberofpages">
                                      <option class="bs-title-option" value="">9</option>
                                      <option value="9">9</option>
                                      <option value="12">12</option>
                                      <option value="15">15</option>
                                      <option value="20">20</option>
                                      <option value="25">25</option>
                                      <option value="30">30</option>
                                    </select>
                                  </li>
                                </ul>
                                <ul class="sf-search-grid-option" id="viewTypes">
                                  <li data-view="grid-3">
                                    <button type="button" class="btn btn-border btn-icon"><i class="fa fa-th"></i></button>
                                  </li>
                                  <li data-view="listview" class="active">
                                    <button type="button" class="btn btn-border btn-icon"><i class="fa fa-th-list"></i></button>
                                  </li>
                                </ul>
                            </div>--%>
                        </div>
                        <!--Showing results topbar End-->
                        <div class="row">
                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Sub_Category] WHERE ([cat_id] = @cat_id)">
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="cat_Id" Name="cat_id" Type="Int32"></asp:QueryStringParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                            <!--BLock 1-->

                            <div class="col-md-6">
                                <div class="sf-vender-list-wrap">
                                    <div class="sf-vender-list-box d-flex">
                                        <div>
                                            <a class="sf-vender-pic-link" href='RequestQuote.aspx?subid=<%# Eval("sub_cat_id") %>&catid=<%# Eval("cat_id") %>'>
                                            <img src='../Vendor/SubCategory/<%# Eval("sub_cat_img") %>' />
                                            </a>
                                        </div>
                                        <%--<div class="sf-vender-list-pic" style="background-image:url(images/categories/pic1.jpg)">
                                            <a class="sf-vender-pic-link" href="profile-full.html"></a>
                                        </div>--%>
                                        <div class="sf-vender-list-info">
                                            <h4 class="sf-venders-title"><%# Eval("sub_cat_name") %></h4>
                                            <%--<span class="sf-venders-address"><i class="fa fa-map-marker"></i>Queens, United States</span>--%>
                                            <div class="sf-ow-pro-rating">
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star text-gray"></span>
                                            </div>
                                            <p><%# Eval("sub_cat_desc") %></p>
                                            <%--<p>Rs. <%# Eval("sub_cat_price") %></p>--%>
                                            <h6 class="sf-venders-title">RS <%# Eval("sub_cat_price") %></h6> <br />
                                            <a href='CartTemp.aspx?subid=<%# Eval("sub_cat_id") %>'><button class="site-button" type="submit">Add To Cart</button></a>
                                           <%-- <div class="sf-pro-check"><span><i class="fa fa-check"></i></span></div>
                                            <div class="sf-pro-favorite"><a href="#"><i class="fa fa-heart-o"></i></a></div>--%>

                                            <div class="dropdown action-dropdown dropdown-left">
                                                <button class="action-button gray dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-ellipsis-v"></i></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href='WishList.aspx?subid=<%# Eval("sub_cat_id") %>&catid=<%# Eval("cat_id") %>&vid=<%# Eval("vid") %>'"><i class="feather-sliders"></i> Add to Wish List</a></li>
                                                    <li><a href='CartTemp.aspx?subid=<%# Eval("sub_cat_id") %>'><i class="feather-save"></i>Add To Cart</a></li>
                                                    <%--<li><a href="javascript:;"><i class="feather-save"></i> 0 Review Comments</a></li>--%>
                                                    <%--<li><a href="javascript:;"><i class="feather-trash"></i> Request A Quote</a></li>--%>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            </ItemTemplate>
                                </asp:Repeater>





                            <!--Pagination Start-->
                            <%--<div class="site-pagination s-p-center">
                                  <ul class="pagination">
                                    <li class="page-item disabled">
                                      <a class="page-link" href="#" tabindex="-1"><i class="fa fa-chevron-left"></i></a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item active">
                                      <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-ellipsis-h"></i></a></li>
                                    <li class="page-item"><a class="page-link" href="#">11</a></li>
                                    <li class="page-item">
                                      <a class="page-link" href="#"><i class="fa fa-chevron-right"></i></a>
                                    </li>
                                  </ul>
                            </div>  --%>
                            <!--Pagination End-->

                        </div>




                        <div id="aon-provider-Req-quote" class="sf-provi-qoute-box cleafix m-b50 sf-provi-fullBox">
                    <h3 class="sf-provi-title">Review</h3>
                    <div class="sf-divider-line"></div>                
                	<div class="sf-provi-qform">
                        <form runat="server">
                            <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Title</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Title" Text="*" ControlToValidate="txttitle" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txttitle" runat="server" class="form-control"></asp:TextBox>
                                  <%--  <input name="name" type="text" required class="form-control">--%>
                                </div>
                            </div>
                          <%--  <div class="col-md-4">
                            <div class="form-group">
                                <label>Email</label>
                                <input name="email" type="text" required class="form-control">
                            </div>
                            </div>--%>
                         <%--   <div class="col-md-4">
                            <div class="form-group">
                                <label>Phone</label>
                                <input name="phone" type="text" required class="form-control">
                            </div>
                            </div>--%>
                            <div class="col-md-12">
                            <div class="form-group">
                                <label>Description</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Description" Text="*" ControlToValidate="txtdesc" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdesc" runat="server" class="form-control"></asp:TextBox>
                                <%--<textarea name="message" rows="8" class="form-control"></textarea>--%>
                            </div>
                            </div>
                            <div class="col-md-12">
                            <div class="form-group text-center qout-submit-btn">
                                <asp:Button ID="Btn_Submit" runat="server" Text="Submit Review"  class="site-button" OnClick="Btn_Submit_Click"/>
                                <%--<input type="submit" value="Send information" class="site-button">--%>
                            </div>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                            </div>
                            </div>
                        </form>
                    </div>
                    
                    
                </div>

                             
                    </div>                       
                    
                </div>
            </div>
            
            
                
        </div>

                </div>
           </div>
        <!-- Content END-->


</asp:Content>
