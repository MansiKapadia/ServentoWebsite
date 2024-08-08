<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispSubCategory.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">LIST OF SUB CATEGORY</h4>
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
                                            <th>SUB CATEGORY ID</th>
                                            <th>CATEGORY NAME</th>
                                            <th>SUB CATEGORY NAME</th>
                                            <%--<th>SUB CATEGORY DESCRIPTION</th>--%>
                                            <th>SUB CATEGORY PRICE</th>                                            
                                            <th>VENDER NAME</th>                                            
                                            <th>DELETE</th>
                                            
                                        </tr>
                                        </thead>
                                        
                                     

    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Sub_Category.sub_cat_id, Sub_Category.cat_id, Sub_Category.sub_cat_name, Sub_Category.sub_cat_desc, Sub_Category.sub_cat_price, Sub_Category.vid, Category_mstr_1.cat_name, Vender_mstr.vfname, Vender_mstr.vlname FROM Sub_Category INNER JOIN Category_mstr AS Category_mstr_1 ON Sub_Category.cat_id = Category_mstr_1.cat_Id INNER JOIN Vender_mstr ON Sub_Category.vid = Vender_mstr.vid"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                
                                                   <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("sub_cat_id") %></td>
                                                     <td><%#Eval("cat_name") %></td>
                                                     <td><%#Eval("sub_cat_name") %></td>
                                                     <%--<td><%#Eval("sub_cat_desc") %></td>--%>
                                                     <td><%#Eval("sub_cat_price") %></td>
                                                     <td><%#Eval("vfname") %> <%#Eval("vlname") %></td>
                                                    <td><a href='SubCatDel.aspx?subcatid=<%#Eval("sub_cat_id")%>&act=delete' class="dripicons-trash"></a>  </td>
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
