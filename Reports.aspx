<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="SAEED.WebPL.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="new">
        <h3 class="page-header">التقارير </h3>
        <div class="row fontawesome-icon-list">
                        <div class="fa-hover col-md-3 col-sm-4"><a href="TransactionsReport.aspx"><i class="fa fa-list-alt"></i>تقرير المعاملات </a></div>


            <div class="fa-hover col-md-3 col-sm-4"><a href="CountReport.aspx"><i class="fa fa-list-alt"></i>تقرير عدد المعاملات </a></div>

            <div class="fa-hover col-md-3 col-sm-4"><a href="FeesReport.aspx" ><i class="fa fa-list-alt"></i> تقرير الرسوم الحكومية</a></div>

                        <div class="fa-hover col-md-3 col-sm-4"><a href="IncomeReport.aspx" ><i class="fa fa-list-alt"></i> تقرير دخل المركز</a></div>

              <% if ((SAEED.BLL.AccessRoleList)Session["role"] == SAEED.BLL.AccessRoleList.مدير_المركز)
                  {   %>
            <div class="fa-hover col-md-3 col-sm-4"><a href="PerformaneReport.aspx" ><i class="fa fa-list-alt"></i> تقرير أداء الموظفين</a></div>
          
                          <div class="fa-hover col-md-3 col-sm-4"><a href="HappyReport.aspx" ><i class="fa fa-list-alt"></i> تقرير مؤشر السعادة</a></div>

            <%} %>
                        <div class="fa-hover col-md-3 col-sm-4"><a href="AccountReport.aspx" ><i class="fa fa-list-alt"></i> تقرير الحسابات</a></div>

                        <div class="fa-hover col-md-3 col-sm-4"><a href="CardReport.aspx" ><i class="fa fa-list-alt"></i> تقرير رسوم البطاقة </a></div>

                        <div class="fa-hover col-md-3 col-sm-4"><a href="OnlineReport.aspx" ><i class="fa fa-list-alt"></i> تقرير المعاملات الأونلين</a></div>


    
        </div>
    </div>
      <script type="text/javascript">
        $(function () {
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(0)').addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('ul:eq(0)').css("display", "block")
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(1)').find("a").addClass("active");
        });
    </script>

     <script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
      <script src="bs3/js/bootstrap.min.js"></script>
        <script src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
    <script src="js/scripts.js"></script>
</asp:Content>
