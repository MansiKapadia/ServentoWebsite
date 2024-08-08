<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispWishList.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">WishList</h4>
                                    <%--<p class="text-muted mb-0">The Buttons extension for DataTables
                                        provides a common set of options, API methods and styling to display
                                        buttons on a page that will interact with a DataTable. The core library
                                        provides the based framework upon which plug-ins can built.
                                    </p>--%>
                                </div><!--end card-header-->
                                <div class="card-body">  
                                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                        <tr>
                                            <th>WISHLIST ID</th>
                                            <th>USER NAME</th>
                                            <th>SUB CATEGORY</th>
                                            <th>VENDOR ID</th>
                                            
                                            
                                        </tr>
                                        </thead>
                                        
                                     

    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Wish_List_mstr.wid, Wish_List_mstr.uid, Wish_List_mstr.sub_cat_id, Wish_List_mstr.vid, Sub_Category.sub_cat_name, User_mstr.uname FROM Wish_List_mstr INNER JOIN User_mstr ON Wish_List_mstr.uid = User_mstr.uid INNER JOIN Sub_Category ON Wish_List_mstr.sub_cat_id = Sub_Category.sub_cat_id"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                
                                                   <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("wid") %></td>
                                                    <td><%#Eval("uname") %> </td>
                                                    <td><%#Eval("sub_cat_name") %></td>
                                                    <td><%#Eval("vid") %></td>
                                                     
                                                </tr>
                                            </ItemTemplate>
                                            </asp:Repeater>
                                            
                                        </tbody>
                                        
                                    </table>        
                                </div>
                            </div>
                        </div> <!-- end col -->
                    </div> <!-- end row -->
</asp:Content>
