<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="DispUser.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                   
                                    <h4 class="card-title">Our Customer</h4>                                     
                                   
                                </div><!--end card-header-->
                                <div class="card-body">  
                                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>NAME</th>
                                            <th>MAIL</th>
                                            <th>CONTACT</th>
                                            <th>CITY</th>                                            
                                            <th>STATE</th>
                                        </tr>
                                        </thead>
    
    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT User_mstr.uid, User_mstr.uname, User_mstr.umail, User_mstr.ucontact, User_mstr.upass, User_mstr.address, User_mstr.state, User_mstr.city, User_mstr.otp, User_mstr.status, State_mstr.sname, City_mstr.city_name FROM User_mstr INNER JOIN City_mstr ON User_mstr.city = City_mstr.city_id INNER JOIN State_mstr ON User_mstr.state = State_mstr.sid"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("uid") %></td>
                                                        <td><%#Eval("uname") %></td>
                                                        <td><%#Eval("umail") %></td>
                                                        <td><%#Eval("ucontact") %></td>
                                                        <td><%#Eval("city_name") %></td>
                                                        <td><%#Eval("sname") %></td>
                                                        
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
