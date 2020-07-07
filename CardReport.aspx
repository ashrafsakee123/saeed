<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardReport.aspx.cs" Inherits="SAEED.WebPL.CardReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
   <head runat="server">
    <title></title>
     <!--Core CSS -->
    <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

    <link href="js/mini-upload-form/assets/css/bucketmin.css" rel="stylesheet" />

    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </div>
          <section class="panel">
                <header class="panel-heading">
تقرير نسبة البطاقة                                         <span class="tools pull-left">
                                             <a href="javascript:;" class="fa fa-chevron-up"></a>

                                         </span>
                </header>
                <div class="panel-body">
         <div class="col-sm-12">
      <div class="col-md-3 form-group"  >
                                    <label class="control-label">
                                    من
                                    </label>

                                    <asp:TextBox ID="TextFrom" runat="server"  TextMode="Date" CssClass="form-control" ></asp:TextBox>
          </div>        
     <div class="col-md-3 form-group">
                                    <label class="control-label">
                                   إلى
                                    </label>

                                    <asp:TextBox ID="TextTo" runat="server"  TextMode="Date" CssClass="form-control" ></asp:TextBox>
          </div>    
                                 
      <div class="col-md-3 form-group" style="vertical-align:bottom; padding-top:25px">
          <asp:Button ID="ButtonSearch" runat="server" Text="بحث" OnClick="ButtonSearch_Click"    CssClass="btn btn-primary"/>
          </div>            
        </div>
                             <div class="col-sm-12">

        <center>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana"  
            Font-Size="8pt" Height="2000px" InteractiveDeviceInfos="(Collection)" 
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="800px">
            <LocalReport ReportPath="Reports\CardReport.rdlc">
               
               
            </LocalReport>
        </rsweb:ReportViewer>            </center>
                    </div>
</section>
          <script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
      <script src="bs3/js/bootstrap.min.js"></script>
        <script src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
    <script src="js/scripts.js"></script>
    </form>
</body>
</html>
