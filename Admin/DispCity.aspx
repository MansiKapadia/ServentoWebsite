<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispCity.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                   
                                    <h4 class="card-title">THE CITY WE SERVED</h4>
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
                                            <th>STATE NAME</th>
                                            <th>CITY NAME</th>
                                            <th>CITY ID</th>
                                            <th>ACTION</th>
                                            <%--<th>DELETE</th>--%>
                                        </tr>
                                        </thead>
    
    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT City_mstr.city_id, State_mstr.sname, City_mstr.city_name FROM City_mstr INNER JOIN State_mstr ON City_mstr.sid = State_mstr.sid"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("sname") %></td>
                                                        <td><%#Eval("city_name") %></td>
                                                        <td><%#Eval("city_id") %></td>
                                                        <td colspan="2"><a href='City.aspx?cid=<%#Eval("city_id")%>&act=edit'  class="fas fa-edit"></a>  |  
                                                        <a href='CityDel.aspx?cid=<%#Eval("city_id")%>&act=delete' class="dripicons-trash"></a>  </td>
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
