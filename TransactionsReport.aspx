<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionsReport.aspx.cs" Inherits="SAEED.WebPL.TransactionsReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </div>

        <center>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana"  
            Font-Size="8pt" Height="2000px" InteractiveDeviceInfos="(Collection)" 
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1200px">
            <LocalReport ReportPath="Reports\TransactionsReport.rdlc">
               
               
            </LocalReport>
        </rsweb:ReportViewer>            </center>


    </form>
</body>
</html>
