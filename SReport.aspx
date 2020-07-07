<%@ Page Title="" Language="C#" MasterPageFile="~/TapSiteMaster.Master" AutoEventWireup="true" CodeBehind="SReport.aspx.cs" Inherits="SAEED.WebPL.SReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="new">
        <h3 class="page-header">التقارير </h3>
        <div class="row fontawesome-icon-list">

             <div class="fa-hover col-md-3 col-sm-4"><a href="TransactionsReport.aspx"><i class="fa fa-list-alt"></i>تقرير المعاملات </a></div>


            <div class="fa-hover col-md-3 col-sm-4"><a href="CountReport.aspx"><i class="fa fa-list-alt"></i>تقرير عدد المعاملات </a></div>


                        <div class="fa-hover col-md-3 col-sm-4"><a href="FeesReport.aspx" ><i class="fa fa-list-alt"></i> تقرير الرسوم الحكومية</a></div>

                <div class="fa-hover col-md-3 col-sm-4"><a href="PerformaneReport.aspx" ><i class="fa fa-list-alt"></i> تقرير أداء الموظفين</a></div>

        </div>
    </div>
     <script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
      <script src="bs3/js/bootstrap.min.js"></script>
        <script src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
    <script src="js/scripts.js"></script>
</asp:Content>
