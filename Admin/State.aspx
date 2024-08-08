<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="State.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">State Form</h4>
                                    <%--<p class="text-muted mb-0">Basic example to demonstrate Bootstrap’s form styles.</p>--%> 
                                </div><!--end card-header-->
                                <div class="card-body">
                                    <form id="f1" runat="server">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Enter State Name : </label>
                                           <%-- <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                                            <asp:TextBox ID="txtstate" runat="server" class="form-control" placeholder="Enter State" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Required_State" runat="server" ErrorMessage="Please Enter State" Text="*" ControlToValidate="txtstate"></asp:RequiredFieldValidator>
                                           <%-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                                        </div>
                                       <%-- <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">    
                                        </div>
                                     <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="InlineCheckbox" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                <label class="custom-control-label" for="InlineCheckbox">Check me out</label>
                                            </div>
                                        </div>--%>
                                        
                                        <%--<button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="button" class="btn btn-danger">Cancel</button>--%>
                                        <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn_submit_Click" />
                                        <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-warning" OnClick="btn_update_Click" Visible="False" />
                                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btn_cancel_Click" />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                    </form>
                                    <div><br/><asp:Label ID="Label1" runat="server" Text="" ForeColor="DarkBlue"></asp:Label><br/></div> 
                                </div><!--end card-body-->
                            </div><!--end card-->
                        </div><!--end col-->
               
                    </div><!--end row-->

</asp:Content>
