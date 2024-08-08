<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster1.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="As_Your_Need_services.Admin.WebForm27" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="col-lg-12">
        <div class="card">
            <%--   <div class="card-header">
                                    <h4 class="card-title">Horizontal form</h4>
                                    <p class="text-muted mb-0">Be sure to use <code class="highlighter-rouge">.col-form-label-sm</code> 
                                        or <code class="highlighter-rouge">.col-form-label-lg</code> to your <code class="highlighter-rouge">&lt;label&gt;</code>s 
                                        or <code class="highlighter-rouge">&lt;legend&gt;</code>s 
                                        to correctly follow the size of <code class="highlighter-rouge">.form-control-lg</code> and 
                                        <code class="highlighter-rouge">.form-control-sm</code>.
                                    </p>
                                </div><!--end card-header-->--%>
            <%-- <div class="card-body">                                    
                                    <div class="general-label">--%>
            <div class="card-header">
                <h4 class="card-title">Search form</h4>
                <form runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <div class="form-group row">
                        <label for="horizontalInput1" class="col-sm-2 col-form-label">Search Date From</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"  ></asp:TextBox>
                           <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox1" Format="dd-MM-yyyy" ></asp:CalendarExtender>
                            <%--<input type="email" class="form-control" id="horizontalInput1" placeholder="Enter Email">--%>
                           
                        </div>
                                            </div>

                    <div class="form-group row">
                        <label for="horizontalInput1" class="col-sm-2 col-form-label">Upto Date</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control"  ></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox2" Format="dd-MM-yyyy" ></asp:CalendarExtender>
                            <%--<input type="email" class="form-control" id="horizontalInput1" placeholder="Enter Email">--%>
                           
                        </div>
                                            </div>
                                              
                                            

                                       <%--     <div class="form-group row">
                                                <div class="col-sm-10 ml-auto">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" class="custom-control-input" id="horizontalCheckbox" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                                        <label class="custom-control-label" for="horizontalCheckbox">Remember me</label>
                                                    </div>
                                                </div>
                                            </div>  --%>
                                            <div class="row">
                                                <div class="col-sm-10 ml-auto">
                                                   <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                                                    <asp:Button ID="Btn_submit" runat="server" Text="Search" class="btn btn-primary" OnClick="Btn_submit_Click" />
                                                </div>
                                            </div> 
                                        </form>           
                                  <%--  </div>
                                </div><!--end--%> 
                            </div><!--end card-->
                        </div><!--end col-->
                    </div>
    
    
    
    
    
    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                   
                                    <h4 class="card-title">THE SUCCESS REPORT</h4>
                                    <%--<p class="text-muted mb-0">The Buttons extension for DataTables
                                        provides a common set of options, API methods and styling to display
                                        buttons on a page that will interact with a DataTable. The core library
                                        provides the based framework upon which plug-ins can built.
                                    </p>--%>
                                
                                   
                                </div><!--end card-header-->
                                <div class="card-body">  
                                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                        <tr>
                                            <th>ORDER ID</th>
                                            <th>USER NAME</th>
                                            <th>CATEGORY</th>
                                             <th>DATE</th>
                                            <th>AMOUNT</th>
                                            <th>PAYMENT STATUS</th>
                                             <th>VENDOR NAME</th>
                                            <%--<th>DELETE</th>--%>
                                        </tr>
                                        </thead>
    
    
                                        <tbody>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Order_details_mstr.order_id AS Expr1, Order_mstr.*, User_mstr.*, Sub_Category.*, Vender_mstr.* FROM Order_details_mstr INNER JOIN Order_mstr ON Order_details_mstr.order_id = Order_mstr.order_id INNER JOIN User_mstr ON Order_details_mstr.uid = User_mstr.uid INNER JOIN Sub_Category ON Order_details_mstr.sub_cat_id = Sub_Category.sub_cat_id CROSS JOIN Vender_mstr"></asp:SqlDataSource>
                                            <asp:Repeater ID="Repeater1" runat="server" >
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("order_id") %></td>
                                                        <td><%#Eval("uname") %></td>
                                                        <td><%#Eval("sub_cat_name") %></td>
                                                        <td><%#Eval("tdate") %></td>
                                                         <td><%#Eval("tamt") %></td>
                                                        <td><%#Eval("status") %></td>
                                                         <td><%#Eval("vfname") %></td>
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
