<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SAEED.WebPL.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
            <div class="col-md-12">
               <section class="panel">
                    <div class="panel-body profile-information">
                       <div class="col-md-3">
                           <div class="profile-pic text-center">
                               <img src='PicHandler.ashx?t=employee&id=<%=Request.QueryString["id"] != null? Convert.ToInt32(Request.QueryString["id"]):0 %>' alt=""/>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <div class="profile-desk">
                               <h1>
                                   <asp:Label ID="LabelName" runat="server" Text=""></asp:Label></h1>
                               <span class="text-muted">
                                   <asp:Label ID="LabelTitle" runat="server" Text=""></asp:Label></span>
                               <div>
                                   <asp:Label ID="LabelGrade" runat="server" Text=""></asp:Label>
                               </div>
                           </div>
                       </div>
                       <div class="col-md-3">
                           <div class="profile-statistics">
                               <h1>
                                   <asp:Label ID="LabelComp" runat="server" Text="0"></asp:Label></h1>
                               <p>معاملات مكتملة</p>
                               <h1>
                                   <asp:Label ID="LabelReturn" runat="server" Text="0"></asp:Label></h1>
                               <p>معاملات مرتجعة</p>
                              
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
                                <a data-toggle="tab" href="#overview">
                                    الطلبات
                                </a>
                            </li>
                           
                            
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content tasi-tab">
                            <div id="overview" class="tab-pane active">
                                <div class="row">
                                                            <div class="col-md-6">
    

                 <table class="display table table-bordered table-striped" id="dynamic-table">
                        <thead>
                            <tr>
                                <th>رقم الطلب</th>
                                <th>نوع الطلب</th>
                                <th class="hidden-phone">التاريخ</th>
                                <th class="hidden-phone">المبلغ</th>
                                <th class="hidden-phone">حالة الطلب</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="RepeaterIns" runat="server">
                                <ItemTemplate>
                                    <tr class="gradeA">
                                        <td><%# Eval( "TNo") %></td>
                                        <td><%#    Eval("TTypeName") %></td>
                                      <td><%#  Eval( "Amount") %></td>
                                        <td><%#  Eval( "Amount") %></td>
                                        <td><span class="label label-info"><%# Eval( "Status") %></span></td>
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


    <!--Core js-->
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
<!--jQuery Flot Chart-->
<script src="js/flot-chart/jquery.flot.js"></script>
<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
<script src="js/flot-chart/jquery.flot.resize.js"></script>
<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

<!--common script init for all pages-->
<script src="js/scripts.js"></script>
</asp:Content>

