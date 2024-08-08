<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">City Form</h4>
                                    <%--<p class="text-muted mb-0">Basic example to demonstrate Bootstrap’s form styles.</p>--%> 
                                </div><!--end card-header-->
                                <div class="card-body">
                                    <form runat="server" id="fcity">
                                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                  <div class="form-group">
                                            <label for="exampleInputEmail1">Select State  : </label>
                                            <asp:DropDownList ID="ddlsname" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sid" AppendDataBoundItems="true">
                                                <asp:ListItem text="Select State" Value="0"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
                                            <%--<asp:TextBox ID="txtstate" runat="server" class="form-control" placeholder="Enter State" ></asp:TextBox>--%>
                                           <%-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                                        </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                      
                                      <div class="form-group">
                                            <label for="exampleInputPassword1">Enter City</label>
                                           <%-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">    --%>
                                          <asp:TextBox ID="txtcname"  placeholder="Enter City" class="form-control" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="Required_city" runat="server" ErrorMessage="Please Enter City" ControlToValidate="txtcname" Text="*"></asp:RequiredFieldValidator>
                                        </div>
                                        <%--<div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="InlineCheckbox" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                <label class="custom-control-label" for="InlineCheckbox">Check me out</label>
                                            </div>
                                        </div>--%>
                                        
                                        <%--<button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="button" class="btn btn-danger">Cancel</button>--%>
                                        <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" Text="Submit" OnClick="btn_submit_Click" />
                                        <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-warning" Visible="false" OnClick="btn_update_Click"/>
                                        <asp:Button ID="btn_clear" runat="server" class="btn btn-danger" Text="Clear" OnClick="btn_clear_Click" CausesValidation="false" /><br />
                                        <asp:Label ID="lbldisp" runat="server"  Text =" " /><br />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                    </form>                                           
                                </div><!--end card-body-->
                            </div><!--end card-->
                        </div><!--end col-->
               
                    </div><!--end row-->
</asp:Content>
