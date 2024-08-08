<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispCategory.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">OUR CATRGORY LIST</h4>
                                    <%--<p class="text-muted mb-0">The Buttons extension for DataTables
                                        provides a common set of options, API methods and styling to display
                                        buttons on a page that will interact with a DataTable. The core library
                                        provides the based framework upon which plug-ins can built.
                                    </p>--%>
                                </div><!--end card-header-->
                                <div class="card-body"> 
                                    <div style="overflow-x: auto;">
                                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                        <tr>
                                            <th>CATEGORY ID</th>
                                            <th>CATEGORY NAME</th>
                                            <%--<th>CATEGORY DESCRIPTION</th>--%>
                                            <th>CATEGORY IMAGE</th>
                                             <th>ACTION</th>
                                            
                                        </tr>
                                        </thead>
                                        
                                     

    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Category_mstr]"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                
                                                   <ItemTemplate>
                                                <tr>
                                                    <td width="10%"><%#Eval("cat_id") %></td>
                                                    <td width="20%"><%#Eval("cat_name") %></td>
                                                    <%--<td width="20%"> <%#Eval("cat_desc") %></td>--%>
                                                    <td width="20%"><img src='CategoryImage/<%#Eval("cat_image") %>' height="50" width="50"/></td>
                                                    <td width="10%"><a href='Category.aspx?catid=<%#Eval("cat_id")%>&act=edit' class="fas fa-edit"></a>   |    
                                                    <a href='CategoryDel.aspx?catid=<%#Eval("cat_id")%>&act=delete' class="dripicons-trash"></a>  </td>
                                                </tr>
                                            </ItemTemplate>
                                            </asp:Repeater>
                                            
                                        </tbody>
                                        
                                    </table>        
                                
                                    </div>
                                    </div>
                            </div>
                        </div> <!-- end col -->
                    </div> <!-- end row -->
</asp:Content>
