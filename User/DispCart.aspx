<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterSerivece.Master" AutoEventWireup="true" CodeBehind="DispCart.aspx.cs" Inherits="As_Your_Need_services.User.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
         <div id="aon-provider-services" class="sf-provi-service-box m-b50 sf-provi-fullBox">
                    <h3 class="sf-provi-title">My Cart</h3>
                    <div class="sf-divider-line"></div>
                    <ul class="sf-provi-service-list">
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Cart_mstr.cartId, Cart_mstr.uid, Cart_mstr.sub_cat_id AS Expr1, Sub_Category.sub_cat_id, Sub_Category.cat_id, Sub_Category.sub_cat_name, Sub_Category.sub_cat_desc, Sub_Category.sub_cat_price, Sub_Category.sub_cat_img, Sub_Category.vid, User_mstr.* FROM Cart_mstr INNER JOIN Sub_Category ON Cart_mstr.sub_cat_id = Sub_Category.sub_cat_id INNER JOIN User_mstr ON Cart_mstr.uid = User_mstr.uid WHERE (Cart_mstr.uid = @uid)">
                                <SelectParameters>
                                    <asp:SessionParameter SessionField="uid" Name="uid" Type="Int32"></asp:SessionParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                        <li class="sf-provi-service-box">                   

                            <div class="sf-provi-service-top">
                                <table>
                                    <tr>
                                <td width="80%">
                                <div class="sf-provi-service-left">
                                    <h4 class="sf-provi-service-ttle"><%--<span class="sf-provi-toggle-btn">+</span>--%> <%# Eval("sub_cat_name") %>  <%--<span>Offer</span>--%></h4>                                    
                                </div>
                                    </td>

                                <td width="10%">
                                    <div class="sf-provi-service-ttle"><b>
                                        <div class="sf-provi-service-price">Rate <%# Eval("sub_cat_price") %></div></b>
                                    </div>
                                    </td>
                                
                                        <td width="10%">
                                <%--<div class="sf-provi-service-right">
                                    <button class="site-button btn-schedules">Schedule</button>
                                </div>--%>
                                    </td>

                                <td width="10%">
                                <div class="sf-provi-service-right">
                                    <a href='CartDel.aspx?cid=<%# Eval("cartid") %>'>
                                    <button class="site-button btn-schedules">Remove</button>
                                        </a>
                                </div>
                                    </td>
                                
                                </tr>
                                    
                                </table>
                            </div>
                           
                            <div class="sf-provi-service-bottom">
                                <div class="sf-provi-descriptio">Many serives have a wide spectrum of expertise in web solutions within these industries, giving us the necessary skills and knowledge.</div>

                            </div>
                                
                        </li>
                         </ItemTemplate>
                           </asp:Repeater>                        
                        
                       
                    </ul>
             
               <div class="servi-leRi-btn d-flex flex-wrap justify-content-between">
                        <div class="servi-le-btn">                             
                            <%--<button class="btn btn-custom"><i class="feather-chevron-up"></i></button>
                            <button class="btn btn-custom"><i class="feather-chevron-down"></i></button>--%>
                        </div>                         
                        <div class="servi-Ri-btn">
                            
                            <%--<asp:Button ID="btnbook" runat="server" Text="Book Now" class="btn btn-custom aon-sm-btn-dark" />--%>
                            <a href="AllCategories.aspx">
                            <button class="btn btn-custom aon-sm-btn-dark">Continue Shopping</button>
                            </a>    
                        </div>
                    </div>
                </div>

        <div id="aon-provider-services" class="sf-provi-service-box m-b50 sf-provi-fullBox">
                    <%--<h3 class="sf-provi-title">Service</h3>--%>
            <form runat="server">
                    <div class="sf-divider-line"></div>
                    <ul class="sf-provi-service-list">
                        <li class="sf-provi-service-box">

                            <div class="sf-provi-service-top">
                                <div class="sf-provi-service-left">
                                    <h4 class="sf-provi-service-ttle">Sub Total <span>Offer</span></h4>
                                    <%--<div class="sf-provi-service-price">$124.00</div>
                                    <div class="sf-provi-service-hour"><i class="fa fa-clock-o"></i>Hour</div>--%>
                                </div>
                                <div class="sf-provi-service-right">
                                    <div class="sf-provi-service-price">Rs <asp:Label ID="lblsubtotal" runat="server" Text="0"></asp:Label></div>
                                    <%--<button class="site-button btn-schedules">Schedule</button>--%>
                                </div>

                            </div>
                            
                        </li>
                        <li class="sf-provi-service-box">

                            <div class="sf-provi-service-top">
                                <div class="sf-provi-service-left">
                                    <h4 class="sf-provi-service-ttle">Discount </h4>
                                    <%--<div class="sf-provi-service-price">$124.00</div>
                                    <div class="sf-provi-service-hour"><i class="fa fa-clock-o"></i>Hour</div>--%>
                                </div>
                                <div class="sf-provi-service-right">
                                    <%--<div class="sf-provi-service-price">Rs <asp:Label ID="lbldiscount" runat="server" Text="Label"></asp:Label> </div>--%>
                                    <%--<button class="site-button btn-schedules">Schedule</button>--%>
                                </div>
                                <div class="aon-bnr2-search-bar">
                                  <%--  <form runat="server">--%>
                                        <div class="aon-bnr2-search-box">
                                            <!-- COLUMNS 1 -->
                                            <div class="aon-search-input keywords-input">
                                                <asp:TextBox ID="txtcoupen" runat="server" placeholder="Coupen " class="form-control"></asp:TextBox>
                                                <%--<input type="text" placeholder="Coupen " class="form-control">--%>
                                            </div>
                                            <div class="aon-search-btn-wrap">
                                                <asp:Button ID="btnapply" runat="server" Text="Apply" class="aon-search-btn" OnClick="btnapply_Click" />
                                                <%--<button class="aon-search-btn" type="submit"> Apply </button>--%>
                                                <asp:Label ID="lblinvalid" runat="server" ></asp:Label>
                                            </div>
                                        </div>
                                    <%--</form>--%>
                                </div>

                            </div>
                            
                        </li>
                     
                        <li class="sf-provi-service-box">

                            <div class="sf-provi-service-top">
                                <div class="sf-provi-service-left">
                                    <h4 class="sf-provi-service-ttle"> Grand Total </h4>
                                    <%--<div class="sf-provi-service-price">$ 10.00/Hour</div>--%>
                                </div>
                                <div class="sf-provi-service-right">
                                    <%--<div class="sf-provi-service-count">
                                        <input id="demo2" type="text" value="55" name="demo1">
                                    </div>--%>
                                    <div class="sf-provi-service-price">Rs <asp:Label ID="lblgrandtotal" runat="server" ></asp:Label></div>
                                    <%--<button class="site-button btn-schedules">Schedule</button>--%>
                                </div>

                            </div>
                            
                        </li>
                           <li class="sf-provi-service-box">

                            <div class="sf-provi-service-top">
                                <div class="sf-provi-service-left">
                                    <h4 class="sf-provi-service-ttle"> Payment Mode </h4>
                                  <%--  <div class="sf-provi-service-price">$ 12.00/Hour</div>--%>
                                </div>
                                <div class="sf-provi-service-right">


                                   <p> <asp:RadioButton ID="radcod" GroupName="z" runat="server" Text="Cash On Dively"/>

                                     <p> <asp:RadioButton ID="radonline" GroupName="z" runat="server" Text="Razor Payment"/>
                                    <%--<div class="sf-provi-service-count">
                                        <input id="demo1" type="text" value="55" name="demo1">
                                    </div>
                                    <button class="site-button btn-schedules">Schedule</button>--%>
                                </div>

                            </div>
                           
                        </li>

                          <li class="sf-provi-service-box">

                            <div class="sf-provi-service-top">
                                <div class="sf-provi-service-left">
                                    <h4 class="sf-provi-service-ttle"> Book Now </h4>
                                  <%--  <div class="sf-provi-service-price">$ 12.00/Hour</div>--%>
                                </div>
                                <div class="sf-provi-service-right">
                                    <asp:Button ID="btnbook" runat="server" Text="Book Now"  class="btn btn-custom" OnClick="btnbook_Click"  />
                                    
                                <%--   <p> <asp:RadioButton ID="RadioButton1" runat="server" Text="Cash On Dively"/>

                                     <p> <asp:RadioButton ID="RadioButton2" runat="server" Text="Razor Payment"/>--%>
                                    <%--<div class="sf-provi-service-count">
                                        <input id="demo1" type="text" value="55" name="demo1">
                                    </div>
                                    <button class="site-button btn-schedules">Schedule</button>--%>
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                                </div>

                            </div>
                           
                        </li>



                    </ul>
                    <div class="servi-leRi-btn d-flex flex-wrap justify-content-between">
                        <div class="servi-le-btn">                             
                            <%--<button class="btn btn-custom"><i class="feather-chevron-up"></i></button>
                            <button class="btn btn-custom"><i class="feather-chevron-down"></i></button>--%>
                        </div>                         
                        <div class="servi-Ri-btn">
                            
                            <%--<asp:Button ID="btnbook" runat="server" Text="Book Now" class="btn btn-custom aon-sm-btn-dark" />--%>
                          <%--  <button class="btn btn-custom aon-sm-btn-dark">Book Now</button>--%>
                                
                        </div>
                    </div>
                </form>
                </div>
                <!--Service List End-->
                

    </div>
</asp:Content>
