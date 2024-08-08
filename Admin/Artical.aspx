<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="Artical.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

                       <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Artical form</h4>
                                    <%--<p class="text-muted mb-0">Be sure to use <code class="highlighter-rouge">.col-form-label-sm</code> 
                                        or <code class="highlighter-rouge">.col-form-label-lg</code> to your <code class="highlighter-rouge">&lt;label&gt;</code>s 
                                        or <code class="highlighter-rouge">&lt;legend&gt;</code>s 
                                        to correctly follow the size of <code class="highlighter-rouge">.form-control-lg</code> and 
                                        <code class="highlighter-rouge">.form-control-sm</code>.
                                    </p>--%>
                                </div><!--end card-header-->
                                <div class="card-body">                                    
                                    <div class="general-label">
                                        <form runat="server" id="f1">
                                            <div class="form-group row">
                                                <label for="horizontalInput1" class="col-sm-2 col-form-label">Upload Artical Image : </label>
                                                <div class="col-sm-10">
                                                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control form-control-lg" />
                                                   <%-- <input type="email" class="form-control" id="horizontalInput1" placeholder="Enter Email">--%>
                                                </div>
                                            </div>
                                                
                                            <div class="form-group row">
                                                <label for="horizontalInput2" class="col-sm-2 col-form-label">Artical Title : </label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtatitle" runat="server" class="form-control" placeholder="Enter Article title"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="Required_A_title" runat="server" ErrorMessage="Enter Article Title " ControlToValidate="txtatitle" Text="*"></asp:RequiredFieldValidator>
                                                   <%-- <input type="password" class="form-control" id="horizontalInput2" placeholder="Password">--%>
                                                </div>
                                            </div>


                                              <div class="form-group row">
                                                <label for="horizontalInput2" class="col-sm-2 col-form-label">Artical Description : </label> 
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtadesc" runat="server" class="form-control" placeholder="Enter Artical Description"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="Required_A_Desc" runat="server" ErrorMessage="Enter Article Description" Text="*" ControlToValidate="txtadesc"></asp:RequiredFieldValidator>
                                                   <%-- <input type="password" class="form-control" id="horizontalInput2" placeholder="Password">--%>
                                                </div>
                                            </div>
                                          <%--  <div class="form-group row">
                                                <div class="col-sm-10 ml-auto">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" class="custom-control-input" id="horizontalCheckbox" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                        <label class="custom-control-label" for="horizontalCheckbox">Remember me</label>
                                                    </div>
                                                </div>
                                            </div>--%>  


                                            <div class="row">
                                                <div class="col-sm-10 ml-auto">
                                                    <asp:Button ID="Btn_submit" runat="server" Text="Submit Artical" class="btn btn-primary" OnClick="Btn_submit_Click" />
                                                    <asp:Button ID="Btn_update" runat="server" Text="Update Artical" class="btn btn-danger" OnClick="Btn_update_Click"  />
                                                   <%-- <button type="submit" class="btn btn-primary">Submit</button>
                                                    <button type="button" class="btn btn-danger">Cancel</button>--%>
                                                </div>
                                            </div> 

                                             <div class="form-group row">
                                                <%--<label for="horizontalInput2" class="col-sm-2 col-form-label">Artical Description : </label>--%>
                                                <div class="col-sm-10">
                                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                   <%-- <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Artical Description"></asp:TextBox>--%>
                                                   <%-- <input type="password" class="form-control" id="horizontalInput2" placeholder="Password">--%>
                                                </div>
                                            </div>
                                        </form>           
                                    </div>
                                </div><!--end card-body-->
                            </div><!--end card-->
                        </div><!--end col-->
                  
                   
                       
                
</asp:Content>
