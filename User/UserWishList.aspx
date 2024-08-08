<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserDetails.Master" AutoEventWireup="true" CodeBehind="UserWishList.aspx.cs" Inherits="As_Your_Need_services.User.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="aon-admin-heading">
                	<h4>My WishList</h4>
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
                                                
                                                <th>Category Name</th>
                                                <th>Sub Category Name</th>
                                                <th>Delete Service</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Wish_List_mstr.wid, Wish_List_mstr.uid, Wish_List_mstr.sub_cat_id, Wish_List_mstr.vid, Category_mstr.cat_name, Sub_Category.sub_cat_name FROM Wish_List_mstr INNER JOIN Sub_Category ON Wish_List_mstr.sub_cat_id = Sub_Category.sub_cat_id INNER JOIN Category_mstr ON Sub_Category.cat_id = Category_mstr.cat_Id WHERE (Wish_List_mstr.uid = @uid)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="uid" Name="uid" Type="Int32"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                                            
                                           <ItemTemplate>
                                                <tr>
                                                     <td><%#Eval("cat_name") %></td>
                                                     <td><%#Eval("sub_cat_name") %></td>
                                                    
                                                    <td>                                                        
                                                        <a href='WishListDel.aspx?wid=<%#Eval("wid")%>&act=delete' class="fa fa-remove">Delete</a>

                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                              </asp:Repeater>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                               
                                                <th>Category Name</th>
                                                <th>Sub Category Name</th>
                                                <th>Delete Service</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                           </div>
                       </div>

                    </div>
                </div>

</asp:Content>
