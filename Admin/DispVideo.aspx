<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispVideo.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                   
                                    <h4 class="card-title">Video</h4>                                     
                                   
                                </div><!--end card-header-->
                                <div class="card-body">  
                                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                        <tr>
                                            <th>VIDEO ID</th>
                                            <th>VENDOR NAME</th>
                                            <th>SUB CATEGORY NAME</th>
                                            <th>VIDEO URL</th>
                                            <th>VIDEO IMAGE</th>                                            
                                           <th>ACTION</th>
                                        </tr>
                                        </thead>
    
    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Video_mstr.*, Video_mstr.vid AS Expr1, Sub_Category.sub_cat_name, Sub_Category.cat_id, Vender_mstr.vid AS Expr2, Vender_mstr.vfname FROM Sub_Category INNER JOIN Video_mstr ON Sub_Category.sub_cat_id = Video_mstr.sub_cat_id INNER JOIN Vender_mstr ON Video_mstr.vid = Vender_mstr.vid">
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                            
                                            <tr>
                                                        <td><%#Eval("video_id")%></td>
                                                        <td><%#Eval("vfname") %></td>
                                                        <td><%#Eval("sub_cat_name") %></td>
                                                        <td><%#Eval("vurl") %></td>
                                                        <td><img src='../Vendor/Video/<%#Eval("vimage") %>' height="100" width="100" /></td>
                                                       
                                                         <td colspan="2"><%--<a href='Artical.aspx?anid=<%#Eval("anid")%>&act=edit'  class="fas fa-edit"></a>--%>  |  
                                                        <a href='VideoDel.aspx?video_id=<%#Eval("video_id")%>&act=delete' class="dripicons-trash"></a>  </td>
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
