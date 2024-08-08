<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="DispArtical.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <div class="aon-admin-heading">
                	<h4>My Staff</h4>
                </div>                
                
                <div class="card aon-card">
                    <div class="card-body aon-card-body">

                        <div class="sf-bd-data-tb-head aon-mob-btn-marb">
                            <a href="Artical.aspx">
                            <button class="admin-button m-l10" data-toggle="modal" data-target="#add_services" type="button">
                                <i class="fa fa-plus"></i>
                                Add Article
                            </button>
                             </a>
                        </div> 

                       <div class="sf-bs-data-table">
                           <div class="table-responsive">
                                    <table class="table table-striped table-bordered example-dt-table" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Artical Id</th>
                                                <th>Artical Image</th>
                                                <th>Artical PostBy</th>
                                                <th>Artical Title</th>
                                                <th>Artical Decription</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Article_mstr] WHERE ([postby] = @postby)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="Vendor" Name="postby" Type="String"></asp:Parameter>

                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">                                            
                                           <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("anid") %></td>
                                                     <td><img src='Artical/<%#Eval("image") %>' height="50" width="50"><%--<%#Eval("image") %>--%></td>
                                                     <td><%#Eval("postby") %></td>
                                                     <td><%#Eval("title") %></td>
                                                     <td><%#Eval("adesc") %></td>
                                                      <td>
                                                        <a href='Artical.aspx?anid=<%#Eval("anid")%>&act=edit' class="fa fa-refresh"></a>Edit 
                                                        <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                                        <a href='ArticalDel.aspx?anid=<%#Eval("anid")%>&act=delete' class="fa fa-remove"></a>Delete

                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                              </asp:Repeater>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                               <th>Artical Id</th>
                                                <th>Artical Image</th>
                                                <th>Artical PostBy</th>
                                                <th>Artical Title</th>
                                                <th>Artical Decription</th>                                             
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                           </div>
                       </div>

                    </div>
                </div>

</asp:Content>
