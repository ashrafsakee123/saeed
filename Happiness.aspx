<%@ Page Title="" Language="C#" MasterPageFile="~/TapSiteMaster.Master" AutoEventWireup="true" CodeBehind="Happiness.aspx.cs" Inherits="SAEED.WebPL.Happiness" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
      <!--Core CSS -->
    <link rel="stylesheet" type="text/css" href="js/select2/select2.css" />
    <link rel="stylesheet" href="css/bootstrap-switch.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="col-sm-12">
            <section class="panel" style="padding: 5px">
                <header class="panel-heading">
                    مؤشر السعادة                      
                </header>
                <div class="panel-body">
                    <div class="col-lg-4 col-md-4 col-sm-12">
                     <a href="ThankYou.aspx?f=3&id=<%= Request.QueryString["id"] %>">   <img  src="images/f1.png"  /></a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                         <a href="ThankYou.aspx?f=2&id=<%= Request.QueryString["id"] %>">   <img  src="images/f2.png"  /></a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                         <a href="ThankYou.aspx?f=1&id=<%= Request.QueryString["id"] %>"> <img  src="images/f3.png" /></a>
                    </div>
                     
                     
                </div>
                <center>
                <asp:Label ID="Label1" runat="server" Text="كيف كانت تجربتك اليوم؟" Font-Size="X-Large"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text="?How was your experience today" Font-Size="X-Large"></asp:Label></center>
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
    <script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-daterangepicker/moment.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
    <script type="text/javascript" src="js/jquery-multi-select/js/jquery.multi-select.js"></script>
    <script type="text/javascript" src="js/jquery-multi-select/js/jquery.quicksearch.js"></script>
    <script type="text/javascript" src="js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
    <script src="js/jquery-tags-input/jquery.tagsinput.js"></script>
    <script src="js/select2/select2.js"></script>
    <script src="js/select-init.js"></script>

     
    <!-- Our main JS file -->
    <script src="js/mini-upload-form/assets/js/script.js"></script>
    <script type="text/javascript" src="js/bootstrap-fileupload/bootstrap-fileupload.js"></script>

            <script src="js/notifi.js" type="text/javascript"></script>
    <!--common script init for all pages-->
    <script src="js/scripts.js"></script>
</asp:Content>
