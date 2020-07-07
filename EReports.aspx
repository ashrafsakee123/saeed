<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="EReports.aspx.cs" Inherits="SAEED.WebPL.EReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="new">
        <h3 class="page-header">التقارير </h3>
        <div class="row fontawesome-icon-list">

            <div class="fa-hover col-md-3 col-sm-4"><a href="EmpCountReport.aspx"><i class="fa fa-list-alt"></i>تقرير المعاملات اليومية</a></div>

            <div class="fa-hover col-md-3 col-sm-4"><a href="EmpFeesReport.aspx" ><i class="fa fa-list-alt"></i> تقرير الرسوم الحكومية</a></div>

            <div class="fa-hover col-md-3 col-sm-4"><a href="EmpPerformaneReport.aspx" ><i class="fa fa-list-alt"></i> تقرير الأداء</a></div>

           
    
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
