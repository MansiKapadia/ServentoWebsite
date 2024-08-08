<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserDetails.Master" AutoEventWireup="true" CodeBehind="MyBooking.aspx.cs" Inherits="As_Your_Need_services.User.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="aon-admin-heading">
                	<h4>My Booking</h4>
                </div>                
                
                <div class="card aon-card">
                    <div class="card-body aon-card-body">

                       <%-- <div class="sf-bd-data-tb-head">
                            <button class="admin-button" data-toggle="modal" data-target="#downloadreport" type="button">
                                <i class="fa fa-plus"></i>
                                Download Report 
                            </button>
                            
                        </div> --%>

                        <!-- Week Tabs-->
                        <div class="sf-availability-times-tab m-b50">
                            <div class="sf-custom-tabs sf-custom-new">
                                <!--Tabs-->
                              <%--  <ul class="nav nav-tabs nav-table-cell">
                                    <li><a data-toggle="tab" href="#Upcoming" class="active">Upcoming</a></li>
                                    <li><a data-toggle="tab" href="#Past">Past</a></li>
                                </ul>--%>
                                <!--Tabs Content--> 
                                <div class="tab-content">

                                    <!--Upcoming-->
                                    <div id="Upcoming" class="tab-pane active">
                                        <div class="sf-tabs-content">
                                            <div class="sf-bs-data-table">
                                                <div class="table-responsive">
                                                    <table  class="table table-striped table-bordered example-dt-table aon-booking-table" style="width:100%">
                                                        <thead>
                                                            <tr>
                                                                <th>
                                                                    <div class="checkbox sf-radio-checkbox">
                                                                    <%--    <input id="th1_1" name="abc" value="five" type="radio">--%>
                                                                        <label for="th1_1">
                                                                            <%--<span class="btn btn-danger btn-xs">
                                                                                <i class="fa fa-trash-o"></i>
                                                                            </span>--%>
                                                                        </label>
                                                                    </div>
                                                                </th>
                                                                <th>Booking Info</th>
                                                                <th>Payment Info</th>
                                                              <%--  <th>Action</th>--%>

                                                            </tr>
                                                        </thead>

                                                        <tbody>
                                                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Order_mstr.order_id AS Expr1, Order_mstr.tamt AS Expr2, Order_mstr.tdate AS Expr3, Order_mstr.status AS Expr4, User_mstr.uname, Order_mstr.order_id, Order_mstr.user_id, Order_mstr.tamt, Order_mstr.tdate, Order_mstr.status, Order_mstr.user_id AS Expr5, User_mstr.ucontact FROM Order_mstr INNER JOIN User_mstr ON Order_mstr.user_id = User_mstr.uid WHERE (Order_mstr.user_id = @user_id)">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter SessionField="uid" Name="user_id" Type="String"></asp:SessionParameter>
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                                                                <ItemTemplate>

                                                                    <tr>
                                                                        <td>
                                                                            <span class="sf-booking-refid"><%#Eval("order_id") %></span>
                                                                            <%--<div class="checkbox sf-radio-checkbox">
                                                                                <input id="td2_2" name="abc" value="five" type="radio">
                                                                                <label for="td2_2"></label>
                                                                            </div>--%>
                                                                        </td>
                                                                        <td>
                                                                            <div class="sf-booking-info-col">
                                                                                
                                                                                <%-- <span class="booking-status sf-booking-incomplete">Incomplete</span>--%>
                                                                               <%-- <div class="sf-booking-upcoming">
                                                                                    
                                                                                </div>--%>
                                                                                <div class="sf-booking-customer">
                                                                                    <ul class="customer-info">
                                                                                       <%-- <li><strong><i class="fa fa-user"></i>Agent Name</strong> Heima Agency</li>--%>
                                                                                        <li><strong><i class="fa fa-user"></i>Customer Name</strong><%#Eval("uname") %></li>
                                                                                        <li><strong><i class="fa fa-phone"></i>Customer Phone</strong><%#Eval("ucontact") %></li>
                                                                                        <li><strong><i class="fa fa-calendar-o"></i>Date</strong> <%#Eval("tdate") %></li>
                                                                                        <%--<li><strong><i class="fa fa-clock-o"></i>Time</strong> 13:25:00</li>--%>
                                                                                    </ul>
                                                                                </div>
                                                                               <%-- <button type="button" class="admin-button assignButton margin-r-10">
                                                                                    <i class="fa fa-user"></i>
                                                                                    Assign Now
                                                                                </button>--%>
                                                                            </div>
                                                                        </td>
                                                                        <%-- <td>
                                                                    <div class="inner">
                                                                        <h3>
                                                                            <span class="sf-booking-payment-info" data-toggle="popover" data-container="body" data-placement="top" data-html="true" id="payinfo-1115" data-trigger="hover" data-original-title="" title="">85.00€ </span>
                                                                            <span class="sf-payment-status">Paid</span>
                                                                        </h3>
                                                                        <div id="popover-content-payinfo-1115" class="hide sf-pop-hide">
                                                                            <ul class="list-unstyled margin-0 booking-payment-data">
                                                                                <li><strong>Total Amount:</strong> 85.00€</li>
                                                                                <li><strong>Providers Fee:</strong> 57.00€</li>
                                                                                <li><strong>Admin Fee:</strong> 28.00€</li>
                                                                                <li><strong>Payment Method:</strong> </li>
                                                                                <li><strong>Admin pay to providers:</strong> Pending</li>
                                                                                <li><strong>Transaction ID:</strong> NA</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </td>--%>
                                                                        <td>
                                                                            <button type="button" class="admin-button btn-sm viewBookings" title="View Booking">
                                                                                <a href='MyBookingDeatil.aspx?order_id=<%#Eval("order_id")%>'><i class="fa fa-eye"></i></a> 
                                                                            </button>
                                                                           <button type="button" class="admin-button btn-sm viewBookings" title="View Booking">
                                                                                <a href='Invoice/Invoice.aspx?order_id=<%#Eval("order_id")%>'><i class="fa fa-print"></i></a> 
                                                                            </button>
                                                                            <button type="button" class="admin-button btn-sm addInvoice margin-r-5" title="Add Invoice">
                                                                                <a href='MyBookingDel.aspx?order_id=<%#Eval("order_id") %>'><i class="fa fa-trash"></i></a>
                                                                            </button>
                                                                        </td>

                                                                    </tr>
                                                                </ItemTemplate>

                                                            </asp:Repeater>
                                                         
                                                        </tbody>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


</asp:Content>
