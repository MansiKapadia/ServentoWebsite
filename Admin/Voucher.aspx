<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="Voucher.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Voucher </h4>
                                    <%--<p class="text-muted mb-0">Basic example to demonstrate Bootstrap’s form styles.</p>--%> 
                                </div><!--end card-header-->
                                <div class="card-body">
                                    <form id="f1" runat="server">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Enter Voucher Name </label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Voucher" Text="*" ControlToValidate="txtvname"></asp:RequiredFieldValidator>                                           
                                            <asp:TextBox ID="txtvname" runat="server" class="form-control" placeholder="Enter Voucher name" ></asp:TextBox>                                           
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Enter Min Amount </label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Min Amount" ControlToValidate="txtminamt" Text="*"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtminamt" ErrorMessage="Please Enter Proper number" ValidationExpression="^[0-9]+$">*</asp:RegularExpressionValidator>
                                            <asp:TextBox ID="txtminamt" runat="server" class="form-control" placeholder="Enter Minimum Amount" ></asp:TextBox>                                           
                                        </div>

                                         <div class="form-group">
                                            <label for="exampleInputEmail1">Discount Rate </label>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Discount" ControlToValidate="txtdiscount" Text="*"></asp:RequiredFieldValidator> <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Discount" ControlToValidate="txtdiscount" MaximumValue="50" MinimumValue="1" Text="*"></asp:RangeValidator>                                          
                                            <asp:TextBox ID="txtdiscount" runat="server" class="form-control" placeholder="Enter Discount Rate" ></asp:TextBox>                                           
                                        </div>
                                       
                                        <%--<div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="InlineCheckbox" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                <label class="custom-control-label" for="InlineCheckbox">Check me out</label>
                                            </div>
                                        </div>--%>
                                        
                                        <%--<button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="button" class="btn btn-danger">Cancel</button>--%>
                                        <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn_submit_Click"  />
                                        <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-warning" Visible="false" OnClick="btn_update_Click" />
                                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btn_cancel_Click"  CausesValidation="false" /> <br />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

                                       
                                    </form>
                                    <div><br/><asp:Label ID="Label1" runat="server" Text="" ForeColor="DarkBlue"></asp:Label><br/></div> 
                                </div><!--end card-body-->
                            </div><!--end card-->
                        </div><!--end col-->
               
                    </div><!--end row-->
</asp:Content>
