<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispArticalAdmin.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                   
                                    <h4 class="card-title">Admin Artical</h4>                                     
                                   
                                </div><!--end card-header-->
                                <div class="card-body">  
                                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                        <tr>
                                            <th>ARTICAL ID</th>
                                            <th>ARTICAL IMAGE</th>
                                            <th>ARTICAL POSTBY</th>
                                            <th>ARTICAL TITLE</th>
                                            <%--<th>ARTICAL DESCRIPTION</th>   --%>                                         
                                           <th>ACTION</th>
                                        </tr>
                                        </thead>
    
    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Article_mstr] WHERE ([postby] = @postby)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="Admin" Name="postby" Type="String"></asp:Parameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                            
                                            <tr>
                                                        <td><%#Eval("anid") %></td>
                                                        <td><img src='../Vendor/Artical/<%#Eval("image") %>' height="100" width="100"/></td>
                                                        <td><%#Eval("postby") %></td>
                                                        <td><%#Eval("title") %></td>
                                                       <%-- <td><%#Eval("adesc") %></td>--%>
                                                       
                                                         <td colspan="2"><a href='Artical.aspx?anid=<%#Eval("anid")%>&act=edit'  class="fas fa-edit"></a>  |  
                                                        <a href='ArticalDel.aspx?anid=<%#Eval("anid")%>&act=delete' class="dripicons-trash"></a>  </td>
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
