<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="DispRequestQuote.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
        <div class="aon-admin-heading">
                	<h4>My Staff</h4>
                </div>                
                
                <div class="card aon-card">
                    <div class="card-body aon-card-body">

                        <div class="sf-bd-data-tb-head aon-mob-btn-marb">
                           <%-- <button class="admin-button" data-toggle="modal" data-target="#exampleModal" type="button">
                                <i class="fa fa-plus"></i>
                                Add/Remove Group  
                            </button>
                            <button class="admin-button m-l10" data-toggle="modal" data-target="#add_services" type="button">
                                <i class="fa fa-plus"></i>
                                Add a Service 
                            </button>--%>
                        </div> 

                       <div class="sf-bs-data-table">
                           <div class="table-responsive">
                                    <table class="table table-striped table-bordered example-dt-table" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Request Id</th>
                                                <th>User Name</th>
                                                <th>Sub cat id</th>
                                                <th>User Message</th>
                                                <th>Response</th>  
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Request_Quote_mstr.rid, Request_Quote_mstr.uid, Request_Quote_mstr.sub_cat_id, Request_Quote_mstr.message, Request_Quote_mstr.vid, Request_Quote_mstr.status, Request_Quote_mstr.Response, User_mstr.uname, Sub_Category.sub_cat_name FROM Request_Quote_mstr INNER JOIN User_mstr ON Request_Quote_mstr.uid = User_mstr.uid INNER JOIN Sub_Category ON Request_Quote_mstr.sub_cat_id = Sub_Category.sub_cat_id WHERE (Request_Quote_mstr.vid = @vid) AND (Request_Quote_mstr.status = @status)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="vid" Name="vid" Type="Int32"></asp:SessionParameter>
                                                    <asp:Parameter DefaultValue="0" Name="status" Type="String"></asp:Parameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">                                            
                                           <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("rid") %></td>
                                                     <td><%#Eval("uname") %></td>
                                                     <td><%#Eval("sub_cat_name") %></td>
                                                     <td><%#Eval("Message") %></td>
                                                      <td>
                                                          <a href='Response.aspx?rid=<%# Eval("rid")  %>&uid=<%# Eval("uid")  %>' >
                                                         <button class="admin-button m-l10" data-toggle="modal" data-target="#add_services" type="button">Response </button>
                                                         </a>
                                                     </td>                                                     
                                                </tr>
                                            </ItemTemplate>
                                              </asp:Repeater>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                               <th>Request Id</th>
                                                <th>User Name</th>
                                                <th>Sub cat id</th>
                                                <th>User Message</th>
                                                <th>Response</th>                                                
                                                
                                            </tr>
                                        </tfoot>
                                    </table>
                           </div>
                       </div>

                    </div>
                </div>
</asp:Content>
