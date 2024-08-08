<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VHome.Master" AutoEventWireup="true" CodeBehind="VDashBoard.aspx.cs" Inherits="As_Your_Need_services.Vendor.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
       <div class="row">
                    <div class="col-xl-12 col-lg-12 m-b30 break-1300">
                        <div class="card aon-card">
                            <div class="card-body aon-card-body">


                                 <div class="row">
                                    <div class="col-lg-4 m-b30">
                                        <h2>Hello <br /><asp:Label ID="lblvname" runat="server"  ></asp:Label></h2>
                                        <%--<div class="panel panel-default ser-card-default">
                                            <div class="panel-body ser-card-body ser-puple p-a30">
                                                <div class="ser-card-title">Staff</div>
                                                <div class="ser-card-icons"><img src="images/wallet.png" alt=""/></div>
                                                <div class="ser-card-amount">
                                                    <asp:Label ID="Label1" runat="server"  ></asp:Label>
                                                </div>
                                                <div class="ser-card-table">
                                                    <div class="ser-card-left">
                                                        <div class="ser-card-total">
                                                            <div class="ser-total-table">
                                                                <div class="ser-total-cell1">Total</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ser-card-right">
                                                        <div class="ser-card-icon"><i class="glyph-icon flaticon-money-3"></i></div>
                                                    </div>
                                                </div>
                                                <span class="ser-card-circle-bg"></span>
                                            </div>
                                        </div>--%>
                                    </div>
                                    
                                </div>


                                <div class="row">
                                    <div class="col-lg-4 m-b30">
                                        <div class="panel panel-default ser-card-default">
                                            <div class="panel-body ser-card-body ser-puple p-a30">
                                                <div class="ser-card-title">Staff</div>
                                                <div class="ser-card-icons"><img src="images/wallet.png" alt=""/></div>
                                                <div class="ser-card-amount">
                                                    <asp:Label ID="lbltstaff" runat="server"  ></asp:Label>
                                                </div>
                                                <div class="ser-card-table">
                                                    <div class="ser-card-left">
                                                        <div class="ser-card-total">
                                                            <div class="ser-total-table">
                                                                <div class="ser-total-cell1">Total</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ser-card-right">
                                                        <div class="ser-card-icon"><i class="glyph-icon flaticon-money-3"></i></div>
                                                    </div>
                                                </div>
                                                <span class="ser-card-circle-bg"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 m-b30">
                                        <div class="panel panel-default ser-card-default">
                                            <div class="panel-body ser-card-body ser-orange p-a30">
                                                <div class="ser-card-title">Booking</div>
                                                <div class="ser-card-icons"><img src="images/booking.png" alt=""/></div>
                                                <div class="ser-card-amount">
                                                    <asp:Label ID="lblbooking" runat="server"></asp:Label>
                                                </div>
                                                <div class="ser-card-table">
                                                    <div class="ser-card-left">
                                                        <div class="ser-card-total">
                                                            <div class="ser-total-table">
                                                                <div class="ser-total-cell1">Current Booking</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ser-card-right">
                                                        <div class="ser-card-icon"><i class="glyph-icon flaticon-wallet"></i></div>
                                                    </div>
                                                </div>
                                                <span class="ser-card-circle-bg"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 m-b30">
                                        <div class="panel panel-default ser-card-default">
                                            <div class="panel-body ser-card-body ser-blue p-a30">
                                                <div class="ser-card-title">Sub Category</div>
                                                <div class="ser-card-icons"><img src="images/earning.png" alt=""/></div>
                                                <div class="ser-card-amount">
                                                     <asp:Label ID="lbltsub" runat="server"  ></asp:Label>
                                                </div>
                                                <div class="ser-card-table">
                                                    <div class="ser-card-left">
                                                        <div class="ser-card-total">
                                                            <div class="ser-total-table">
                                                                <div class="ser-total-cell1">Total</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ser-card-right">
                                                        <div class="ser-card-icon"><i class="glyph-icon flaticon-calendar"></i></div>
                                                    </div>
                                                </div>
                                                <span class="ser-card-circle-bg"></span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    
                    <%--<div class="col-xl-4 col-lg-12 m-b30 break-1300">
                        <div class="card aon-card">
                            <div class="card-header aon-card-header aon-card-header2"><h4><i class="feather-bell"></i> Notifications</h4></div>
                            <div class="card-body aon-card-body">
                                
                                <div class="tab-content">
                                    <div id="accepted11" class="tab-pane active">
                                        <div class="ws-poptab-list-wrap notification-scroll">
                                            <!--list One-->
                                            <div class="ws-poptab-list">
                                                <div class="ws-poptab-media">
                                                    <img src="images/testimonials2/pic1.jpg" alt="">
                                                </div>
                                                <div class="ws-poptab-info">
                                                    <strong>Maria Smith</strong>
                                                    <p>David wood requested to change.</p>
                                                    <span class="ws-time-duration">8 mins ago</span>
                                                </div>
                                            </div>

                                            <!--list Two-->
                                            <div class="ws-poptab-list">
                                                <div class="ws-poptab-media">
                                                    <img src="images/testimonials2/pic2.jpg" alt="">
                                                </div>
                                                <div class="ws-poptab-info">
                                                    <strong>Zonsan Wood</strong>
                                                    <p>David wood requested to change.</p>
                                                    <span class="ws-time-duration">4 mins ago</span>
                                                </div>
                                            </div>

                                            <!--list three-->
                                            <div class="ws-poptab-list">
                                                <div class="ws-poptab-media">
                                                    <img src="images/testimonials2/pic3.jpg" alt="">
                                                </div>
                                                <div class="ws-poptab-info">
                                                    <strong>Denisa Wood</strong>
                                                    <p>David wood requested to change.</p>
                                                    <span class="ws-time-duration">2 mins ago</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="ws-poptab-all text-center">
                                            <a href="#" class="btn-link-type">View All</a>
                                        </div>                                                    

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            <ul class="job_listings job_listings-two">
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Staff_mstr] WHERE ([vid] = @vid)">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="vid" Name="vid" Type="Int32"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <li class="job_listing type-job_listing job-type-hourly">
                           <%-- <a class="job-clickable-box" href="job-detail.html"></a>--%>
                            <div class="job-comapny-logo"><img class="company_logo" src='Staff Profile/<%# Eval("profile") %>' alt=""></div>
                            <div class="job-comapny-info">
                              <div class="position">
                                <h3> <%# Eval("Staffname") %> </h3>
                                
                              </div>

                              <%--<ul class="meta">
                                <li class="job-type hourly"><i class="fa fa-circle"></i>Hourly</li>
                                <li class="date">
                                  <span>3 years ago</span>
                                </li>
                              </ul>--%>

                              <%--<div class="job-location"><i class="fa fa-map-marker"></i> Brooklyn </div>--%>
                              <div class="job-amount"><i class="fa fa-phone"></i> <span><%# Eval("mobno") %></span> </div>

                              <%--<div class="job-label"><img src="images/label.html" alt=""></div>--%>

                            </div>
                          </li>

                    </ItemTemplate>
                </asp:Repeater>
                <!-- COLUMNS 1 -->
                
                
                          <%--<!-- COLUMNS 2 -->
                          <li class="job_listing type-job_listing job-type-hourly">
                            <a class="job-clickable-box" href="job-detail.html"></a>
                            <div class="job-comapny-logo"><img class="company_logo" src="images/jobs/2.jpg" alt=""></div>
                            <div class="job-comapny-info">
                              <div class="position">
                                <h3>Dog Trainer Required in Brooklyn</h3>
                                <div class="company"> <strong>Blue Hills Pvt. Ltd.</strong> </div>
                              </div>

                              <ul class="meta">
                                <li class="job-type hourly"><i class="fa fa-circle"></i>Hourly</li>
                                <li class="date">
                                  <span>3 years ago</span>
                                </li>
                              </ul>

                              <div class="job-location"><i class="fa fa-map-marker"></i> Brooklyn </div>
                              <div class="job-amount"><i class="fa fa-money"></i> <span>$1,200 - $1,500</span> </div>

                              <div class="job-label"><img src="images/label.html" alt=""></div>

                            </div>
                          </li>
                          <!-- COLUMNS 3 -->
                          <li class="job_listing type-job_listing job-type-hourly">
                            <a class="job-clickable-box" href="job-detail.html"></a>
                            <div class="job-comapny-logo"><img class="company_logo" src="images/jobs/3.jpg" alt=""></div>
                            <div class="job-comapny-info">
                              <div class="position">
                                <h3>Nursing Assistant Required in Brooklyn</h3>
                                <div class="company"> <strong>Blue Hills Pvt. Ltd.</strong> </div>
                              </div>

                              <ul class="meta">
                                <li class="job-type hourly"><i class="fa fa-circle"></i>Hourly</li>
                                <li class="date">
                                  <span>3 years ago</span>
                                </li>
                              </ul>

                              <div class="job-location"><i class="fa fa-map-marker"></i> Brooklyn </div>
                              <div class="job-amount"><i class="fa fa-money"></i> <span>$1,200 - $1,500</span> </div>

                              <div class="job-label"><img src="images/label.html" alt=""></div>

                            </div>
                          </li>
                          <!-- COLUMNS 4 -->
                          <li class="job_listing type-job_listing job-type-hourly">
                            <a class="job-clickable-box" href="job-detail.html"></a>
                            <div class="job-comapny-logo"><img class="company_logo" src="images/jobs/4.jpg" alt=""></div>
                            <div class="job-comapny-info">
                              <div class="position">
                                <h3>Project Manager Required in Brooklyn</h3>
                                <div class="company"> <strong>Blue Hills Pvt. Ltd.</strong> </div>
                              </div>

                              <ul class="meta">
                                <li class="job-type hourly"><i class="fa fa-circle"></i>Hourly</li>
                                <li class="date">
                                  <span>3 years ago</span>
                                </li>
                              </ul>

                              <div class="job-location"><i class="fa fa-map-marker"></i> Brooklyn </div>
                              <div class="job-amount"><i class="fa fa-money"></i> <span>$1,200 - $1,500</span> </div>

                              <div class="job-label"><img src="images/label.html" alt=""></div>

                            </div>
                          </li>
                          <!-- COLUMNS 5 -->
                          <li class="job_listing type-job_listing job-type-hourly">
                            <a class="job-clickable-box" href="job-detail.html"></a>
                            <div class="job-comapny-logo"><img class="company_logo" src="images/jobs/5.jpg" alt=""></div>
                            <div class="job-comapny-info">
                              <div class="position">
                                <h3>Librarian Required in Brooklyn</h3>
                                <div class="company"> <strong>Blue Hills Pvt. Ltd.</strong> </div>
                              </div>

                              <ul class="meta">
                                <li class="job-type hourly"><i class="fa fa-circle"></i>Hourly</li>
                                <li class="date">
                                  <span>3 years ago</span>
                                </li>
                              </ul>

                              <div class="job-location"><i class="fa fa-map-marker"></i> Brooklyn </div>
                              <div class="job-amount"><i class="fa fa-money"></i> <span>$1,200 - $1,500</span> </div>

                              <div class="job-label"><img src="images/label.html" alt=""></div>

                            </div>
                          </li>
                          <!-- COLUMNS 6 -->
                          <li class="job_listing type-job_listing job-type-hourly">
                            <a class="job-clickable-box" href="job-detail.html"></a>
                            <div class="job-comapny-logo"><img class="company_logo" src="images/jobs/6.jpg" alt=""></div>
                            <div class="job-comapny-info">
                              <div class="position">
                                <h3>Account Executive Required in Brooklyn</h3>
                                <div class="company"> <strong>Blue Hills Pvt. Ltd.</strong> </div>
                              </div>

                              <ul class="meta">
                                <li class="job-type hourly"><i class="fa fa-circle"></i>Hourly</li>
                                <li class="date">
                                  <span>3 years ago</span>
                                </li>
                              </ul>

                              <div class="job-location"><i class="fa fa-map-marker"></i> Brooklyn </div>
                              <div class="job-amount"><i class="fa fa-money"></i> <span>$1,200 - $1,500</span> </div>

                              <div class="job-label"><img src="images/label.html" alt=""></div>

                            </div>
                          </li>--%>
                        </ul>

            
               <%-- <div class="row">
                    <div class="col-xl-8 m-b30">
                        <div class="card aon-card">
                            <div class="card-header aon-card-header aon-card-header2"><h4><i class="feather-pie-chart"></i> Booking</h4></div>
                            <div class="card-body aon-card-body">
                                <div class="dx-viewport demo-container">
                                  <div id="chart-demo">
                                    <div id="chart"></div>
                                    <div class="action">
                                      <div class="label">Choose a temperature threshold, &deg;C: </div>
                                      <div id="choose-temperature"></div>
                                    </div>
                                  </div>
                                </div>
  
  
                            </div>
                        </div>
                        
                    </div>
                    
                    <div class="col-xl-4">
                        <div class="card aon-card">
                                <div class="card-header aon-card-header aon-card-header2"><h4><i class="feather-pie-chart"></i> Booking Stats</h4></div>
                                <div class="card-body aon-card-body">
                                    <div>
                                        <ul class="list-unstyled">
                                            <li class="py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar-xs rounded-circle m-r10">
                                                        <i class="feather-check-circle"></i>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-2">Completed</p>
                                                        <div class="progress progress-sm animated-progess">
                                                            <div class="progress-bar bg-success" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar-xs rounded-circle m-r10">
                                                        <i class="feather-calendar"></i>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-2">Pending</p>
                                                        <div class="progress progress-sm animated-progess">
                                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar-xs align-self-center me-3">
                                                        <div class="avatar-xs rounded-circle m-r10">
                                                        <i class="feather-x-circle"></i>
                                                    </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-2">Cancel</p>
                                                        <div class="progress progress-sm animated-progess">
                                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 19%" aria-valuenow="19" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <hr>
                                    <div class="text-center">
                                        <div class="row aon-states-row">
                                            <div class="col-4">
                                                <div class="mt-2">
                                                    <p class="text-muted mb-2">Completed</p>
                                                    <h5 class="font-size-16 mb-0">70</h5>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="mt-2">
                                                    <p class="text-muted mb-2">Pending</p>
                                                    <h5 class="font-size-16 mb-0">45</h5>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="mt-2">
                                                    <p class="text-muted mb-2">Cancel</p>
                                                    <h5 class="font-size-16 mb-0">19</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>--%>
                
                



                
       
     
</asp:Content>
