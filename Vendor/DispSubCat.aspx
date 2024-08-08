<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="DispSubCat.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="aon-admin-heading">
                	<h4>My Services</h4>
                </div>                
                
                <div class="card aon-card">
                    <div class="card-body aon-card-body">

                        <div class="sf-bd-data-tb-head aon-mob-btn-marb">
                            <%--<button class="admin-button" data-toggle="modal" data-target="#exampleModal" type="button">
                                <i class="fa fa-plus"></i>
                                Add/Remove Group  
                            </button>--%>
                            <a href="SubCategory.aspx" >
                                <button class="admin-button m-l10" data-toggle="modal" data-target="#add_services" type="button">
                                <i class="fa fa-plus"></i>
                                Add a Service
                                </button>
                            </a>
                        </div> 

                       <div class="sf-bs-data-table">
                           <div class="table-responsive">
                                    <table class="table table-striped table-bordered example-dt-table" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Sub Category Id</th>
                                                <th>Category Name</th>
                                                <th>Sub Category Name</th>
                                                <th>Sub Category Description</th>
                                                <th>Sub Category Price</th>
                                                <th>Sub Category Image</th>
                                                <th>Vender Name</th>
                                                <th>Vender Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Category_mstr.cat_name, Vender_mstr.vfname, Vender_mstr.vlname, Sub_Category.* FROM Sub_Category INNER JOIN Category_mstr ON Sub_Category.cat_id = Category_mstr.cat_Id INNER JOIN Vender_mstr ON Sub_Category.vid = Vender_mstr.vid WHERE (Sub_Category.vid = @vid)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="vid" Name="vid" Type="String"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                                            
                                           <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("sub_cat_id") %></td>
                                                     <td><%#Eval("cat_name") %></td>
                                                     <td><%#Eval("sub_cat_name") %></td>
                                                     <td><%#Eval("sub_cat_desc") %></td>
                                                     <td><%#Eval("sub_cat_price") %></td>
                                                   <td><img src='SubCategory/<%# Eval("sub_cat_img") %>' height="100" width="100"/> </td>
                                                     <td><%#Eval("vfname") %></td>

                                                    <td>
                                                        <a href='SubCategory.aspx?subcatid=<%#Eval("sub_cat_id")%>&act=edit' class="fa fa-refresh"></a>Edit 
                                                        <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                                        <a href='SubCatDel.aspx?subcatid=<%#Eval("sub_cat_id")%>&act=delete' class="fa fa-remove"></a>Delete

                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                              </asp:Repeater>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                               <th>Sub Category Id</th>
                                                <th>Category Name</th>
                                                <th>Sub Category Name</th>
                                                <th>Sub Category Description</th>
                                                <th>Sub Category Price</th>
                                                <th>Sub Category Image</th>
                                                <th>Vender Name</th>
                                                <th>Vender Delete</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                           </div>
                       </div>

                    </div>
                </div>

                
          
         <%--   </div>
            
    	</div>

 </div>       --%>
</asp:Content>
