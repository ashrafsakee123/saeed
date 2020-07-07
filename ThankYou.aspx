<%@ Page Title="" Language="C#" MasterPageFile="~/TapSiteMaster.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="SAEED.WebPL.ThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
    <meta http-equiv="refresh" content="2; url=NewTransaction.aspx" />
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
                   
                      <div class="col-lg-12" style="text-align:center ">
                        <h3>شكرا جزيلا</h3>
                           <h3>Thank You </h3>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
