<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispStaff.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Staff Details</h4>
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
                                            <th>STAFF ID</th>
                                            <th>STAFF NAME</th>
                                            <th>VENDER NAME</th>
                                            <th>CATEGPRY</th>
                                            <th>PHOTO</th>
                                            <th>CONTACT NO</th>
                                             <th>DELETE</th>
                                            
                                        </tr>
                                        </thead>
                                        
                                     

    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Category_mstr.cat_name, Staff_mstr.*, Vender_mstr.vfname, Vender_mstr.vlname FROM Vender_mstr INNER JOIN Category_mstr ON Vender_mstr.cat_Id = Category_mstr.cat_Id INNER JOIN Staff_mstr ON Vender_mstr.vid = Staff_mstr.vid"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                
                                                   <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("staffid") %></td>
                                                    <td><%#Eval("staffname") %></td>
                                                    <td><%#Eval("vfname") %> <%#Eval("vlname") %></td>

                                                   
                                                    <td><%#Eval("cat_name") %></td>
                                                     <td> <img src='../Vendor/Staff Profile/<%# Eval("profile") %>' height="50" width="50"/> </td>
                                                    <td><%#Eval("mobno") %></td>
                                                  
                                                     <td><%--<a href='State.aspx?sid=<%#Eval("vid")%>&act=edit' class="fas fa-edit"></a>   | --%>   
                                                    <a href='VenderDel.aspx?vid=<%#Eval("vid")%>&act=delete' class="dripicons-trash"></a>  </td>
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
