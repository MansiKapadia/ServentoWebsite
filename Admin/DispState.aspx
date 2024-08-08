<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispState.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">STATE LIST</h4>
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
                                            <th>STATE ID</th>
                                            <th>STATE NAME</th>
                                            <th>ACTION</th>
                                            <%-- <th>DELETE</th>--%>
                                            
                                        </tr>
                                        </thead>
                                        
                                     

    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                
                                                   <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("sid") %></td>
                                                     <td><%#Eval("sname") %></td>
                                                    <td colspan="2"><a href='State.aspx?sid=<%#Eval("sid")%>&act=edit' class="fas fa-edit"></a>   |    
                                                    <a href='StateDel.aspx?sid=<%#Eval("sid")%>&act=delete' class="dripicons-trash"></a>  </td>
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
