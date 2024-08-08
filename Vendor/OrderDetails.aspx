<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="aon-admin-heading">
                	<h4>My Services</h4>
                </div>                
                
                <div class="card aon-card">
                    <div class="card-body aon-card-body">

                        <div class="sf-bd-data-tb-head aon-mob-btn-marb">
                            <%--<button class="admin-button" data-toggle="modal" data-target="#exampleModal" type="button">
                                <i class="fa fa-plus"></i>
                                Add/Remove Group  
                            </button>--%>
                            
                        </div> 

                       <div class="sf-bs-data-table">
                           <div class="table-responsive">
                                    <table class="table table-striped table-bordered example-dt-table" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Ordid</th>
                                                <th>Order_Id</th>
                                                <th>User Name</th>
                                                <th>Sub Category Name</th>
                                                <th>Sub Category price</th>
                                                <th>User Mail</th>
                                                <th>Assign Staff</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Sub_Category.sub_cat_id, Sub_Category.sub_cat_name, Sub_Category.sub_cat_img, Sub_Category.vid, Order_details_mstr.ordid, Order_details_mstr.order_id, Order_details_mstr.uid, Order_details_mstr.sub_cat_id AS Expr1, Order_details_mstr.sub_cat_price, Order_details_mstr.ordid AS Expr2, User_mstr.uname, User_mstr.umail, User_mstr.ucontact, User_mstr.address, User_mstr.state, User_mstr.city FROM Sub_Category INNER JOIN Order_details_mstr ON Sub_Category.sub_cat_id = Order_details_mstr.sub_cat_id INNER JOIN User_mstr ON Order_details_mstr.uid = User_mstr.uid WHERE (Sub_Category.vid = @vid)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="vid" Name="vid" Type="String"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                                            
                                           <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("ordid") %></td>
                                                    <td><%#Eval("order_id") %></td>
                                                    <td><%#Eval("uname") %></td>
                                                     <td><%#Eval("sub_cat_name") %></td>
                                                     <td><%#Eval("sub_cat_price") %></td>
                                                    <td><%#Eval("umail") %></td>
                                                     <td>
                                                         <a href='AssignStaff.aspx?ordid=<%# Eval("ordid")  %>&umail=<%# Eval("umail")  %>&uname=<%# Eval("uname") %>&uid=<%# Eval("uid") %>&sid=<%# Eval("sub_cat_id") %>' >
                                                         <button class="admin-button m-l10" data-toggle="modal" data-target="#add_services" type="button">Assign Staff </button>
                                                         </a>
                                                     </td>
                                                     <%--<td><%#Eval("sub_cat_price") %></td>
                                                   <td><img src='SubCategory/<%# Eval("sub_cat_img") %>' height="100" width="100"/> </td>
                                                     <td><%#Eval("vfname") %></td>--%>                                                    
                                                </tr>
                                            </ItemTemplate>
                                              </asp:Repeater>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                                <th>Ordid</th>
                                                <th>Order_Id</th>
                                                <th>User Name</th>
                                                <th>Sub Category Name</th>
                                                <th>Sub Category price</th>
                                                <th>User Mail</th>
                                                <th>Assign Staff</th>
                                                
                                            </tr>
                                        </tfoot>
                                    </table>
                           </div>
                       </div>

                    </div>
                </div>
</asp:Content>
