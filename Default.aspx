<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SAEED.WebPL.Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
    <link rel="stylesheet" href="js/morris-chart/morris.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <div class="row">
       
        <div class="col-md-3">
            <section class="panel">
                <div class="panel-body">
                    <div class="top-stats-panel">
                        <div class="gauge-canvas">
                            <h4 class="widget-h">الإيرادات الشهرية</h4>
                            <canvas width="160" height="100" id="gauge"></canvas>
                        </div>
                        <ul class="gauge-meta clearfix">
                            <li id="gauge-textfield" class="pull-left gauge-value"></li>
                            <li class="pull-right gauge-title">درهم</li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-3">
            <section class="panel">
                <div class="panel-body">
                    <div class="top-stats-panel">
                        <div class="daily-visit">
                            <h4 class="widget-h">عدد المتعاملين</h4>
                            <div id="daily-visit-chart" style="width: 100%; height: 100px; display: block">
                            </div>
                            <ul class="chart-meta clearfix">
                                <li class="pull-left visit-chart-value"></li>
                                <li class="pull-right visit-chart-title"><i class="fa fa-arrow-up"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-3">
            <section class="panel">
                <div class="panel-body">
                    <div class="top-stats-panel">
                        <h4 class="widget-h">أعلى 3 تصنيفات </h4>
                        <div class="sm-pie">
                        </div>
                        <asp:HiddenField ID="pie1" ClientIDMode="Static" Value="كاتب العدل" runat="server" />
                        <asp:HiddenField ClientIDMode="Static" ID="pie2" Value=" التنمية الإقتصادية" runat="server" />
                        <asp:HiddenField ClientIDMode="Static" ID="pie3" Value="الهوية والجوازات " runat="server" />
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-3">
            <section class="panel">
                <div class="panel-body">
                    <div class="top-stats-panel">
                        <h4 class="widget-h">المعاملات الشهرية</h4>
                        <div class="bar-stats">
                            <ul class="progress-stat-bar clearfix">
                                <li data-percent="50%"><span class="progress-stat-percent pink"></span></li>
                                <li data-percent="90%"><span class="progress-stat-percent"></span></li>
                                <li data-percent="70%"><span class="progress-stat-percent yellow-b"></span></li>
                                <li data-percent="50%"><span class="progress-stat-percent "></span></li>
                                <li data-percent="90%"><span class="progress-stat-percent orange"></span></li>
                            </ul>
                            <ul class="bar-legend">
                                <li><span class="bar-legend-pointer pink"></span>وكالة خاصة</li>
                                <li><span class="bar-legend-pointer green"></span>تأشيرة دخول </li>
                                <li><span class="bar-legend-pointer yellow-b"></span>تجديد اسم تجاري</li>
                                <li><span class="bar-legend-pointer green"></span>تجديد هوية مواطن</li>
                                <li><span class="bar-legend-pointer orange"></span>خدمة سريعة  </li>
                            </ul>
                            <div class="daily-sales-info">
                                <span class="sales-count">200 </span><span class="sales-label">معاملة</span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>--%>

      <div class="row" >
                 <div class="col-sm-4"   style="  display:<%= ((SAEED.BLL.AccessRoleList)Session["role"]) != SAEED.BLL.AccessRoleList.مدير_المركز ? "none" : "inline" %>" >
                      
                        <h4 class="widget-h" style="  background-color:#1fb5ac; "  >
                        <a > مؤشر السعادة </a>
                     <span style="float:left; color:white "> <asp:Label ID="LabelBudget" runat="server"  ></asp:Label>  معاملة     </span> </h4>
                    <section class="panel">
                       
                        <div class="panel-body" style="padding:0px">
                          
                            <div id="graph-donut" style="padding:0px"></div>
                        </div>
                    </section>
                </div>
    <div class="col-md-4" >
         <h4 class="widget-h" style="background-color:#1fb5ac">
 <a >  الدخل اليومي النقدي</a>
               <span style="float:left ">    <asp:Label ID="LabelCash" runat="server"  ></asp:Label> 
                   </span></h4>
        <section class="panel">
            <div class="panel-body" >
                <div class="top-stats-panel" style="padding:0px">
                    <div class="gauge-canvas" style="padding:0px">
                        
                        <canvas width=450 height=284 id="gauge2"></canvas>
                    </div>
                    <ul class="gauge-meta clearfix">
                        <li id="gauge-textfield2" class="pull-left gauge-value"></li>
                        <li class="pull-right gauge-title">         
                          <asp:label id="LabelCashAmount" runat="server"></asp:label>درهم
</li>
                    </ul>
                </div>
            </div>
        </section>
    </div>


            <div class="col-sm-4">
                        <h4 class="widget-h" style="background-color:#1fb5ac">
                        <a > المعاملات اليومية  </a>
                     <span style="float:left; color:white "> <asp:Label ID="LabelTotal" runat="server"  ></asp:Label>  معاملة     </span> </h4>
                    <section class="panel">
                       
                        <div class="panel-body" style="padding:0px">
                          
                            <div id="graph-donut2" style="padding:0px"></div>
                        </div>
                    </section>
                </div>
                                                   
   
  </div>

    
     <asp:Panel ID="PanelHidden" runat="server" ClientIDMode="Static"></asp:Panel>


    <div class="row">
         <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon green"><i class="fa fa-money"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelyearlyIncome" runat="server" Text="0"></asp:Label>
                    </span>
                    الإيرادات السنوية
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon blue-color"><i class="fa fa-dollar"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelYearlyCenter" runat="server" Text="0"></asp:Label>
                    </span>
                    دخل المركز السنوي
                </div>
            </div>
        </div>
       
              <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon pink"><i class="fa fa-archive"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelYearlyCount" runat="server" Text="0"></asp:Label></span>
                    إجمالي المعاملات المنجزة 
                </div>
            </div>
        </div>
      <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon tar"><i class="fa fa-users"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelClients" runat="server" Text="0"></asp:Label></span>
                    إجمالي المتعاملين
                </div>
            </div>
              </div>
        </div>
         <div class="row">
        <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon green"><i class="fa fa-money"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelMonthlyIncome" runat="server" Text="0"></asp:Label>
                    </span>
                    الإيرادات الشهرية
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon blue-color"><i class="fa fa-dollar"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelMonthlyCenter" runat="server" Text="0"></asp:Label>
                    </span>
                   دخل المركز الشهري
                </div>
            </div>
        </div>
               <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon pink"><i class="fa fa-archive"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelMonthlyCount" runat="server" Text="0"></asp:Label></span>
                    المعاملات المنجزة الشهرية
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon tar"><i class="fa fa-users"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelMonthlyClients" runat="server" Text="0"></asp:Label></span>
                   متعاملين الشهر
                </div>
            </div>
        </div>
       
      
    </div>

   <div class="row">
        <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon green"><i class="fa fa-money"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelIncomDay" runat="server" Text="0"></asp:Label>
                    </span>
                    الإيرادات اليومية
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon blue-color"><i class="fa fa-dollar"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelCenterDay" runat="server" Text="0"></asp:Label>
                    </span>
                   دخل المركز اليومي
                </div>
            </div>
        </div>
               <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon pink"><i class="fa fa-archive"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelTraDay" runat="server" Text="0"></asp:Label></span>
                    معاملات اليوم
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon tar"><i class="fa fa-users"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelClientsDay" runat="server" Text="0"></asp:Label></span>
                   متعاملين اليوم
                </div>
            </div>
        </div>
       
      
    </div>

      <div class="row">
        <div class="col-md-3">
            
        </div>
        <div class="col-md-3">
         
        </div>
               <div class="col-md-3"   style="  display:<%= ((SAEED.BLL.AccessRoleList)Session["role"]) == SAEED.BLL.AccessRoleList.الإدارة ? "none" : "inline" %>">
            <div class="mini-stat clearfix">
                <span class="mini-stat-icon pink"><i class="fa fa-archive"></i></span>
                <div class="mini-stat-info">
                    <span>
                        <asp:Label ID="LabelUnpaid" runat="server" Text="0"></asp:Label></span>
                    المعاملات الغير مدفوعة 
                </div>
            </div>
        </div>
        <div class="col-md-3">
           
        </div>
       
      
    </div>
    <div class="row" runat="server" id="divemp">
        <div class="col-md-12">
            <!--notification start-->
            <section class="panel">
                <header class="panel-heading">
                    الموظفين
            <span class="badge bg-red" id="homeicon"></span>
                    <span class="tools pull-left">
                        <a href="javascript:;" class="fa fa-chevron-up"></a>

                    </span>
                </header>
                <div class="panel-body">
                    <asp:Repeater ID="RepeaterEmp" runat="server">
                        <ItemTemplate>

                            <div class="col-md-6">

                                <div class="alert alert-<%# Convert.ToInt32( Eval("AvailabilityStatusID"))== (int)SAEED.BLL.AvailabilityStatusList.متاح?"info":Convert.ToInt32( Eval("AvailabilityStatusID"))== (int)SAEED.BLL.AvailabilityStatusList.غير_متاح?"danger":"warning" %> clearfix">
                                    <span class="alert-icon"><img alt="" style="width:100%" src="PicHandler.ashx?t=employee&amp;id=<%# Eval("ID") %>"></span>

                                    <div class="notification-info">
                                        <ul class="clearfix notification-meta">
                                            <li class="pull-right notification-sender"><span><a href="EmployeeProfile.aspx?id=<%# Eval("ID") %>"><%# Eval("Name") %></a> </span></li>
                                            <li class="pull-left notification-time">منذ <b><%# Eval("Duration") %></b> </li>
                                        </ul>
                                        <p>
                                            <%# Eval("AvailabilityStatus") %>
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </section>
            <!--notification end-->
        </div>

    </div>

    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
    <script type="text/javascript">
        $(function () {
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(0)').addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('ul:eq(0)').css("display", "block")
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(1)').find("a").addClass("active");
        });
    </script>
   <!--Core js-->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
<script src="bs3/js/bootstrap.min.js"></script>
    
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/skycons/skycons.js"></script>
        <script src="js/scripts.js"></script>


  <script src="js/gauge/gauge.js"></script>
            <script src="js/notifi.js" type="text/javascript"></script>

<!--Morris Chart-->
   
<script src="js/morris-chart/morris.js"></script>
<script src="js/morris-chart/raphael-min.js"></script>

    


   <script src="js/current.js"></script>
</asp:Content>
