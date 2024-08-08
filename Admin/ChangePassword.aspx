<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm18" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Change Password Details Form</h4>
                    <p class="text-muted mb-0">Basic example to demonstrate Bootstrap’s form styles.</p>
                </div>
                <!--end card-header-->
                <div class="card-body">
                    <form runat="server">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address : </label>
                            <asp:Label ID="lblemail" runat="server"></asp:Label>

                            <%--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                            <%--   <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Old Password</label>
                            <asp:TextBox ID="txtoldpass" runat="server" class="form-control" placeholder="Old Password" TextMode="Password"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="Required_old_pass" runat="server" ErrorMessage="Enter Old Password" Text="*" ControlToValidate="txtoldpass" ></asp:RequiredFieldValidator>
                            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Requiredpass" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtpass" Text="*"></asp:RequiredFieldValidator>
                            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Enter Confirm-Password</label>
                            <asp:TextBox ID="txtcpass" runat="server" class="form-control" placeholder="Confirm-Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Conform Password" ControlToValidate="txtcpass" Text="*"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareCpass" runat="server" ErrorMessage="Enter Conform Password As Password" ControlToCompare="txtpass" ControlToValidate="txtcpass" Text="*"></asp:CompareValidator>
                            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>

                        <%--   <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="InlineCheckbox" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                <label class="custom-control-label" for="InlineCheckbox">Check me out</label>
                                            </div>
                                        </div>--%>
                        <asp:Button ID="btn_submit" runat="server" Text="Update" class="btn btn-primary" OnClick="btn_submit_Click" />
                        <%--  <button type="submit" class="btn btn-primary">Submit</button>--%>
                        <%--<button type="button" class="btn btn-danger">Cancel</button>--%>
                        <div class="form-group">

                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                            <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>

                            <%--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                            <%--   <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                        </div>
                    </form>
                </div>
                <!--end card-body-->
            </div>
            <!--end card-->
        </div>
        <!--end col-->
        <!--end col-->
    </div>
</asp:Content>
