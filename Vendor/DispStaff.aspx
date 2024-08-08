<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="DispStaff.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <div class="aon-admin-heading">
                	<h4>My Staff</h4>
                </div>                
                
                <div class="card aon-card">
                    <div class="card-body aon-card-body">

                        <div class="sf-bd-data-tb-head aon-mob-btn-marb">
                            <a href="StaffReg.aspx">
                            <button class="admin-button m-l10" data-toggle="modal" data-target="#add_services" type="button">
                                <i class="fa fa-plus"></i>
                                Add Staff
                            </button>
                                </a>
                        </div> 

                       <div class="sf-bs-data-table">
                           <div class="table-responsive">
                                    <table class="table table-striped table-bordered example-dt-table" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Staff Id</th>
                                                <th>Staff Name</th>
                                                <%--<th>Staff last Name</th>--%>
                                                <th>Staff Image</th>
                                                <th>Staff Contact No</th>                                                
                                                <th>Update/Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Staff_mstr] WHERE ([vid] = @vid)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="vid" Name="vid" Type="Int32"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                                            
                                           <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("staffid") %></td>
                                                     <td><%#Eval("staffname") %></td>
                                                     
                                                     <td> <img src='Staff Profile/<%#Eval("profile") %>' height="50" width="50"/></td>
                                                     <td><%#Eval("mobno") %></td>

                                                    <td>
                                                        <a href='StaffReg.aspx?staffid=<%#Eval("staffid")%>&act=edit' class="fa fa-refresh"></a>Edit 
                                                        <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                                        <a href='Staffdel.aspx?staffid=<%#Eval("staffid")%>&act=delete' class="fa fa-remove"></a>Delete

                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                              </asp:Repeater>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                               <th>Staff Id</th>
                                                <th>Staff Name</th>
                                                <%--<th>Staff last Name</th>--%>
                                                <th>Staff Image</th>
                                                <th>Staff Contact No</th>                                                
                                                <th>Update/Delete</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                           </div>
                       </div>

                    </div>
                </div>
</asp:Content>
