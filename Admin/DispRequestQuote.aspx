<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispRequestQuote.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                   
                                    <h4 class="card-title">Our Customer Request Quote</h4>
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
                                            <th>REQUEST QOUTE ID</th>
                                            <th>USER NAME</th>
                                            <th>SUB CATEGORY NAME</th>
                                            <th>MESSAGE</th>
                                            <th>VENDER NAME</th>
                                        </tr>
                                        </thead>
    
    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Request_Quote_mstr.rid, Request_Quote_mstr.uid, Request_Quote_mstr.sub_cat_id, Request_Quote_mstr.message, Request_Quote_mstr.vid, Vender_mstr.vfname, Vender_mstr.vlname, Sub_Category.sub_cat_name, User_mstr.uname FROM Request_Quote_mstr INNER JOIN User_mstr ON Request_Quote_mstr.uid = User_mstr.uid INNER JOIN Sub_Category ON Request_Quote_mstr.sub_cat_id = Sub_Category.sub_cat_id INNER JOIN Vender_mstr ON Request_Quote_mstr.vid = Vender_mstr.vid"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("rid") %></td>
                                                        <td><%#Eval("uname") %></td>
                                                        <td><%#Eval("sub_cat_name") %></td>
                                                        <td><%#Eval("message") %></td>
                                                        <td><%#Eval("vfname") %> <%# Eval("vlname")  %></td>
                                                        
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
