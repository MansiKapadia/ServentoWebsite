<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="Response.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="card aon-card" id="aon-category-panel">
        <div class="card-header aon-card-header"><h4><i class="fa fa-list-alt"></i> Category</h4></div>
        <div class="card-body aon-card-body">
            <form runat="server" id="f1">
                    <div class="row">
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Request_Quote_mstr.rid, Request_Quote_mstr.uid, Request_Quote_mstr.sub_cat_id, Request_Quote_mstr.message, Request_Quote_mstr.vid, Request_Quote_mstr.status, User_mstr.uname, Sub_Category.sub_cat_name FROM Request_Quote_mstr INNER JOIN Sub_Category ON Request_Quote_mstr.sub_cat_id = Sub_Category.sub_cat_id INNER JOIN User_mstr ON Request_Quote_mstr.uid = User_mstr.uid WHERE (Request_Quote_mstr.rid = @rid)">
                            <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="rid" Name="rid" Type="Int32"></asp:QueryStringParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>


                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Request id</label> :
                                        <%--<div class="alert alert-info">Currently you can choose categorie. You can increase it by upgrade membership plan</div>--%>
                                        <asp:Label ID="lblcat" runat="server" Text='<%# Eval("rid") %>' ></asp:Label>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>User Name</label> : 
                                       <%-- <div class="aon-inputicon-box">--%>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("uname") %>' ></asp:Label>

                                       <%-- </div>--%>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Sub-Category Name</label> : <asp:Label ID="Label2" runat="server" Text='<%# Eval("sub_cat_name") %>' ></asp:Label> 
                                        <%--<div class="aon-inputicon-box">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("sub_cat_name") %>' ></asp:Label>

                                        </div>--%>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>User Message</label>
                                        <div class="aon-inputicon-box">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("message") %>' class="form-control sf-form-control"></asp:Label>
                                            <%--<asp:TextBox ID="txtsubprice" runat="server" class="form-control sf-form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>--%>
                                            <%-- <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                        </div>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                        
                    </div>

                <div class="col-md-12">
                            <div class="form-group">
                                <label>Your Response</label> 
                                <div class="aon-inputicon-box"> 
                                    <asp:TextBox ID="txtresponse" runat="server" class="form-control sf-form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                    <%-- <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                       
                                </div>
                            </div>
                        </div>

                <div class="aon-ow-bottom">
                    <p>    </p> <asp:Button ID="btn_submit" runat="server" Text="Submit" class="site-button" OnClick="btn_submit_Click"  />
                </div>
                
                
                <p>                                
                    <asp:Label ID="lbldisp" runat="server" Text="" ForeColor="Red"></asp:Label></p>
            </form>
        </div>
    </div>
</asp:Content>
