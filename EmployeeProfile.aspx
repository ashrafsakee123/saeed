<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeProfile.aspx.cs" Inherits="SAEED.WebPL.EmployeeProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="col-md-12">
            <section class="panel">
                <div class="panel-body profile-information">
                   <%-- <div class="col-md-3">
                        <div class="profile-pic text-center">
                            <img src='<%= "PicHandler.ashx?t=employee&id="+ ((SAEED.BLL.AccessRoleList)Session["role"]).ToString() == SAEED.BLL.AccessRoleList.مدير_المركز.ToString()?  Request.QueryString["id"] :((SAEED.BLL.Mapper.UserData)Session["user"]).EmpID.ToString()%>' alt="" />
                        </div>
                    </div>--%>
                    <div class="col-md-3">
                        <div class="profile-desk">
                            <h1>
                                <asp:Label ID="LabelName" runat="server" Text=""></asp:Label></h1>
                            <span class="text-muted">
                                <asp:Label ID="LabelMobile" runat="server" Text=""></asp:Label></span>
                            <div>
                                <asp:Label ID="LabelEmail" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                   <div class="col-md-3" >
                        <div class="profile-statistics">
                           <%-- <h1>
                                <asp:Label ID="LabelCount" runat="server" Text="0"></asp:Label></h1>
                            <p>إجمالي المعاملات الشهرية </p>--%>
                            <h1>
                                <asp:Label ID="LabelCenter" runat="server" Text="0"></asp:Label></h1>
                            <p>رسوم المركز الشهرية  </p>
                           <h1>
                                <asp:Label ID="LabelFees" runat="server" Text="0"></asp:Label></h1>
                            <p>  رسوم المركز اليومية</p>
                             
                        </div>
                    </div>
                     <div class="col-md-3">
                        <div class="profile-statistics">
                            <h1>
                                <asp:Label ID="LabelTotalDaily" runat="server" Text="0"></asp:Label></h1>
                            <p> المعاملات اليومية </p>
                            <h1>
                                <asp:Label ID="LabelDailyCenter" runat="server" Text="0"></asp:Label></h1>
                            <p>  معاملات المركز</p>
                             <h1>
                                <asp:Label ID="LabelDailyOnline" runat="server" Text="0"></asp:Label></h1>
                            <p> معاملات البلدية   </p>
                        </div>
                    </div>
                     <div class="col-md-3">
                        <div class="profile-statistics">
                            <h1>
                                <asp:Label ID="LabelTotalMonthly" runat="server" Text="0"></asp:Label></h1>
                            <p> المعاملات الشهرية </p>
                            <h1>
                                <asp:Label ID="LabelMonthlyCenter" runat="server" Text="0"></asp:Label></h1>
                            <p>معاملات المركز  </p>
                             <h1>
                                <asp:Label ID="LabelMonthlyOnline" runat="server" Text="0"></asp:Label></h1>
                            <p> معاملات الأونلين  </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading tab-bg-dark-navy-blue">
                    <ul class="nav nav-tabs nav-justified ">
                        <li class="active">
                            <a data-toggle="tab" href="#overview">المعاملات
                            </a>
                        </li>
                    </ul>
                </header>
                <div class="panel-body">
                    <div class="tab-content tasi-tab">
                        <div id="overview" class="tab-pane active">
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="display table table-bordered table-striped" id="dynamic-table">
                                        <thead>
                                            <tr>
                                                <th>رقم المعاملة</th>
                                                <th>نوع الخدمة</th>
                                                <th >التاريخ</th>
                                                <th >المبلغ</th>
                                                <th >حالة المعاملة</th>
                                                <th >الإجراء</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="RepeaterTran" runat="server">
                                                <ItemTemplate>
                                                    <tr class="gradeA">
                                                        <td><%# Eval("TNo") %></td>
                                                        <td><%# Eval("TransType") %></td>
                                                        <td><%# Eval("TDate") %></td>
                                                        <td><%# Eval("Amount") %></td>
                                                        <td><span class="label label-<%#Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.بالانتظار ? "danger" : (Convert.ToInt32(Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.مخصصة ||Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.جاهزة_للتخليص_الخارجي) ? "warning" : ( Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.بالتنفيذ|| Convert.ToInt32(  Eval("StatusID"))==(int)SAEED.BLL.TransactionStatusList.بالتخليص_الخارجي )?"inverse":( Convert.ToInt32( Eval("StatusID"))==(int)SAEED.BLL.TransactionStatusList.جاهزة_للاستلام  || Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.مؤرشفة)?"info":"success"%> label-mini"><%# Eval("Status").ToString() %></span></td>
                                                        <td><a class="btn btn-warning btn-xs" href="ViewTransaction.aspx?id=<%#  Eval("ID").ToString() %>"><i class="fa fa-edit"></i>عرض </a></td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                    <asp:Button ID="ButtonReport" runat="server" Text="طباعة تقرير" CssClass="btn btn-primary " OnClick="ButtonReport_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>



   <script src="js/jquery.js"></script>
    <script src="bs3/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
    <!--Easy Pie Chart-->
    <script src="js/easypiechart/jquery.easypiechart.js"></script>
    <!--Sparkline Chart-->
    <script src="js/sparkline/jquery.sparkline.js"></script>
    <!--dynamic table-->
    <script type="text/javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
    <!--common script init for all pages-->
    <script src="js/scripts.js"></script>
    <!--dynamic table initialization -->
    <script src="js/dynamic_table_init.js"></script>
    <script src="js/notifi.js" type="text/javascript"></script>
</asp:Content>
