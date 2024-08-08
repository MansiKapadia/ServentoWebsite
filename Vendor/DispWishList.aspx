<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="DispWishList.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm11" %>
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
                                                <%--<th>Sub Category Id</th>--%>
                                                <th>User Name</th>
                                                <%--<th>Category Name</th>--%>
                                                <th>Sub Category Name</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Wish_List_mstr.wid, Wish_List_mstr.uid, Wish_List_mstr.sub_cat_id, Wish_List_mstr.vid, Category_mstr.cat_name, Sub_Category.sub_cat_name, User_mstr.uname FROM Wish_List_mstr INNER JOIN User_mstr ON Wish_List_mstr.uid = User_mstr.uid INNER JOIN Sub_Category ON Wish_List_mstr.sub_cat_id = Sub_Category.sub_cat_id INNER JOIN Category_mstr ON Sub_Category.cat_id = Category_mstr.cat_Id WHERE (Wish_List_mstr.vid = @vid)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="vid" Name="vid" Type="Int32"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                                            
                                           <ItemTemplate>
                                                <tr>
                                                    <%--<td><%#Eval("wid") %></td>--%>
                                                     <td><%#Eval("uname") %></td>
                                                     <td><%#Eval("sub_cat_name") %></td>
                                                    
                                                                                                     
                                                </tr>
                                            </ItemTemplate>
                                              </asp:Repeater>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                               <th>User Name</th>
                                                
                                                <th>Sub Category Name</th>
                                                
                                            </tr>
                                        </tfoot>
                                    </table>
                           </div>
                       </div>

                    </div>
                </div>
</asp:Content>
