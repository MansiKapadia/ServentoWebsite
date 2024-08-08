<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="DispVideo.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="aon-admin-heading">
                	<h4>My Video</h4>
                </div>                
                
                <div class="card aon-card">
                    <div class="card-body aon-card-body">

                        <div class="sf-bd-data-tb-head aon-mob-btn-marb">
                            <a href="Video.aspx">
                            <button class="admin-button" data-toggle="modal" data-target="#exampleModal" type="button">
                                <i class="fa fa-plus"></i>
                                Add Video  
                            </button>
                            </a>
                            
                        </div> 

                       <div class="sf-bs-data-table">
                           <div class="table-responsive">
                                    <table class="table table-striped table-bordered example-dt-table" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Video Id</th>
                                               <%-- <th>Vid Name</th>--%>
                                                <th>Sub category Name</th>
                                                <th>Url</th>
                                                <th>Image</th>  
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Video_mstr.video_id, Video_mstr.vid, Video_mstr.sub_cat_id, Video_mstr.vurl, Video_mstr.vimage, Sub_Category.sub_cat_name FROM Video_mstr INNER JOIN Sub_Category ON Video_mstr.sub_cat_id = Sub_Category.sub_cat_id WHERE (Video_mstr.vid = @vid)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="vid" Name="vid" Type="Int32"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">                                            
                                           <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("video_id") %></td>
                                                     <%--<td><%#Eval("v") %></td>--%>
                                                     <td><%#Eval("sub_cat_name") %></td>
                                                     <td><%#Eval("vurl") %></td>
                                                     <td><img src='Video/<%# Eval("vimage") %>' height="100" width="100"/></td>
                                                               <td>
                                                        <a href='Video.aspx?video_id=<%#Eval("video_id")%>&act=edit' class="fa fa-refresh"></a>Edit 
                                                        <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                                        <a href='VideoDel.aspx?video_id=<%#Eval("video_id")%>&act=delete' class="fa fa-remove"></a>Delete

                                                    </td>                                             
                                                </tr>
                                            </ItemTemplate>
                                              </asp:Repeater>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                               <th>Video Id</th>
                                               <%-- <th>Vid Name</th>--%>
                                                <th>Sub category Name</th>
                                                <th>Url</th>
                                                <th>Image</th>  
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                           </div>
                       </div>

                    </div>
                </div>

</asp:Content>
