<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Category Form</h4>
                                    <%--<p class="text-muted mb-0">Basic example to demonstrate Bootstrap’s form styles.</p>--%> 
                                </div><!--end card-header-->
                                <div class="card-body">
                                    <form runat="server" id="fcategory">
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Enter Category</label>
                                           <%-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">    --%>
                                          <asp:TextBox ID="txtcname"  placeholder="Enter Category" class="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Category" Text="*" ControlToValidate="txtcname"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Enter Category Description</label>
                                           <%-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">    --%>
                                          <asp:TextBox ID="txtcdesc"  placeholder="Enter Category Description" class="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcdesc" Text="*" ErrorMessage="Please Enter Category description"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Enter Category</label>
                                            <br />
                                            <asp:FileUpload ID="cimage" runat="server"/>
                                           <%-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">    --%>
                                          
                                        </div>
                                                                           
                                        <%--<button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="button" class="btn btn-danger">Cancel</button>--%>
                                        <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" Text="Submit" OnClick="btn_submit_Click" />
                                        <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-warning" Visible="false" OnClick="btn_update_Click" />
                                        <asp:Button ID="btn_clear" runat="server" class="btn btn-danger" Text="Clear" CausesValidation="false"/>
                                        <asp:Label ID="lbldisp" runat="server" Text =" " /><br />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                    </form>                                           
                                </div><!--end card-body-->
                            </div><!--end card-->
                        </div><!--end col-->
               
                    </div><!--end row-->
</asp:Content>
