<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="AllCategories.aspx.cs" Inherits="As_Your_Need_services.User.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
            
            <!-- Banner Area -->
            <div class="aon-page-benner-area2">
             
                <div class="aon-banner-large2-title">
                    Still not finding what you're looking for? View all Provider categories
                </div>
              
            </div>
            <!-- Banner Area End -->
            
            <!-- All categories Block Section -->
            <div class="aon-all-categories-wrap2">
                <div class="container">
                    <div class="aon-all-categories-block2">
                        <div class="row">
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Category_mstr]"></asp:SqlDataSource>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>                                
                                        <!--block-1-->
                            
                                        <div class="col-lg-4 col-md-6">
                                            <div class="aon-all-cat-block" style='background-image: url(../Admin/CategoryImage/<%# Eval("cat_image") %>);'>
                                                <%--<div class="aon-cat-quantity">
                                                    <span><i>+</i>05</span>
                                                </div>--%>
                                                <div class="aon-cat-name">
                                                    <h3><a href='DispCategory.aspx?cat_Id=<%# Eval("cat_Id")  %>'><%# Eval("cat_name")  %></a></h3>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                            </asp:Repeater>

                            <!--block-2-->
                           <%-- <div class="col-lg-4 col-md-6">
                                <div class="aon-all-cat-block" style="background-image: url(images/all-categories/pic-2.jpg);">
                                    <div class="aon-cat-quantity">
                                        <span><i>+</i>15</span>
                                    </div>
                                    <div class="aon-cat-name">
                                        <h3><a href="categories-detail.html">Electician</a></h3>
                                    </div>
                                </div>
                            </div>

                            <!--block-3-->
                            <div class="col-lg-4 col-md-6">
                                <div class="aon-all-cat-block" style="background-image: url(images/all-categories/pic-3.jpg);">
                                    <div class="aon-cat-quantity">
                                        <span><i>+</i>25</span>
                                    </div>
                                    <div class="aon-cat-name">
                                        <h3><a href="categories-detail.html">Hair salon</a></h3>
                                    </div>
                                </div>
                            </div>

                            <!--block-4-->
                            <div class="col-lg-4 col-md-6">
                                <div class="aon-all-cat-block" style="background-image: url(images/all-categories/pic-4.jpg);">
                                    <div class="aon-cat-quantity">
                                        <span><i>+</i>29</span>
                                    </div>
                                    <div class="aon-cat-name">
                                        <h3><a href="categories-detail.html">Plumber</a></h3>
                                    </div>
                                </div>
                            </div>

                            <!--block-5-->
                            <div class="col-lg-4 col-md-6">
                                <div class="aon-all-cat-block" style="background-image: url(images/all-categories/pic-5.jpg);">
                                    <div class="aon-cat-quantity">
                                        <span><i>+</i>16</span>
                                    </div>
                                    <div class="aon-cat-name">
                                        <h3><a href="categories-detail.html">Gym</a></h3>
                                    </div>
                                </div>
                            </div>

                            <!--block-6-->
                            <div class="col-lg-4 col-md-6">
                                <div class="aon-all-cat-block" style="background-image: url(images/all-categories/pic-6.jpg);">
                                    <div class="aon-cat-quantity">
                                        <span><i>+</i>35</span>
                                    </div>
                                    <div class="aon-cat-name">
                                        <h3><a href="categories-detail.html">Yoga</a></h3>
                                    </div>
                                </div>
                            </div>

                            <!--block-7-->
                            <div class="col-lg-4 col-md-6">
                                <div class="aon-all-cat-block" style="background-image: url(images/all-categories/pic-7.jpg);">
                                    <div class="aon-cat-quantity">
                                        <span><i>+</i>10</span>
                                    </div>
                                    <div class="aon-cat-name">
                                        <h3><a href="categories-detail.html">Gardening</a></h3>
                                    </div>
                                </div>
                            </div>

                            <!--block-8-->
                            <div class="col-lg-4 col-md-6">
                                <div class="aon-all-cat-block" style="background-image: url(images/all-categories/pic-8.jpg);">
                                    <div class="aon-cat-quantity">
                                        <span><i>+</i>05</span>
                                    </div>
                                    <div class="aon-cat-name">
                                        <h3><a href="categories-detail.html">Room Cleaning</a></h3>
                                    </div>
                                </div>
                            </div>

                            <!--block-9-->
                            <div class="col-lg-4 col-md-6">
                                <div class="aon-all-cat-block" style="background-image: url(images/all-categories/pic-9.jpg);">
                                    <div class="aon-cat-quantity">
                                        <span><i>+</i>27</span>
                                    </div>
                                    <div class="aon-cat-name">
                                        <h3><a href="categories-detail.html">Cafe</a></h3>
                                    </div>
                                </div>
                            </div>--%>

                        </div>
                    </div>
                   
                </div>
            </div> 
            <!-- All categories Block Section  END -->

            <%--<!-- all cat list Section -->
            <div class="aon-all-cat-list1-wrap2">
                <div class="container">
                    <div class="aon-all-cat-list1-section">
                        <div class="aon-cat-list1-title">Find Provider in Florida</div>
                        <div class="row">
                            <!--block-1-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-2-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-3-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-4-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    
                </div>
            </div> 
            <!-- all cat list Section  END -->

            <!-- all cat list Section -->
            <div class="aon-all-cat-list1-wrap2">
                <div class="container">
                    <div class="aon-all-cat-list1-section">
                        <div class="aon-cat-list1-title">Find Provider in Australia </div>
                        <div class="row">
                            <!--block-1-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-2-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-3-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-4-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    
                </div>
            </div> 
            <!-- all cat list Section  END -->

            <!-- all cat list Section -->
            <div class="aon-all-cat-list1-wrap2 m-b30">
                <div class="container">
                    <div class="aon-all-cat-list1-section">
                        <div class="aon-cat-list1-title">Find Provider in India</div>
                        <div class="row">
                            <!--block-1-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-2-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-3-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!--block-4-->
                            <div class="col-lg-3 col-md-6">
                                <div class="aon-all-cat-list1">
                                    <ul>
                                        <li><a href="categories-detail.html">Plumber in Montgomery</a></li>
                                        <li><a href="categories-detail.html">Cleaners in Juneau</a></li>
                                        <li><a href="categories-detail.html">Machenic in Hartford</a></li>
                                        <li><a href="categories-detail.html">Yoga Teacher in Bridgeport</a></li>
                                        <li><a href="categories-detail.html">Gym Coach in Jacksonville</a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    
                </div>
            </div> 
            <!-- all cat list Section  END -->--%>
            
            </div>
        <!-- Content END-->

</asp:Content>
