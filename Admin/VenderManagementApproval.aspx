<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="VenderManagementApproval.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Buttons example</h4>
                                    <p class="text-muted mb-0">The Buttons extension for DataTables
                                        provides a common set of options, API methods and styling to display
                                        buttons on a page that will interact with a DataTable. The core library
                                        provides the based framework upon which plug-ins can built.
                                    </p>
                                </div><!--end card-header-->
                                <div class="card-body">  
                                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                        <tr>
                                            <th>VENDER ID</th>
                                            <th>VENDER FIRST NAME</th>
                                            <th>VENDER MAIL</th>
                                            <th>VENDER CONTACT</th>
                                            <th>VENDER PROFILE</th>
                                            <th>VENDER CATEGORY</th>
                                            <th>VENDER STATUS</th>
                                            <th>Details</th>
                                        </tr>
                                        </thead>
    
    
                                        <tbody>
                                           
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Vender_mstr.vid, Vender_mstr.vfname, Vender_mstr.vlname, Vender_mstr.vmail, Vender_mstr.vpass, Vender_mstr.vaddress, Vender_mstr.vcity, Vender_mstr.vstate, Vender_mstr.vcontact, Vender_mstr.vprofile, Vender_mstr.cat_Id, Vender_mstr.vdesc, Vender_mstr.vstatus, Category_mstr.cat_name, Category_mstr.cat_Id AS Expr1 FROM Vender_mstr INNER JOIN Category_mstr ON Vender_mstr.cat_Id = Category_mstr.cat_Id WHERE (Vender_mstr.vstatus = @vstatus)">
                                                 <SelectParameters>
                                                    <asp:Parameter DefaultValue="Approval" Name="vstatus" Type="String"></asp:Parameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                             <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>

                                            
                                            <tr>
                                                <td><%#Eval("vid")%></td>
                                                <td><%#Eval("vfname") %></td>
                                                <td><%#Eval("vmail") %></td>
                                                <td><%#Eval("vcontact") %></td>
                                                <td> <img src='../vendor/Profile/<%#Eval("vprofile") %>' height="50" width="50"/></td>
                                                <td><%#Eval("cat_name") %></td>
                                                <td><%#Eval("vstatus") %></td>
                                                <td><a href='ViewProfile.aspx?vid=<%#Eval("vid") %>'>View Details</a></td>
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
