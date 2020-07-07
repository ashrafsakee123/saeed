<%@ Page Title="" Language="C#" EnableEventValidation="true"  MasterPageFile="~/TapSiteMaster.Master" AutoEventWireup="true" CodeBehind="ShelfTransactions.aspx.cs" Inherits="SAEED.WebPL.ShelfTransactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
                <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
          <div class="col-md-12">
            <section class="panel" style="padding: 5px">
                <header class="panel-heading">
                    المعاملات                      
                </header>
                <div class="panel-body">

         
                    <table class="display table table-bordered table-striped" id="dynamic-table">
                        <thead>
                            <tr>

                                <th>رقم المعاملة</th>
                                <th>نوع المعاملة</th>
                                <th>التصنيف </th>
                                <th>رقم العميل</th>
                                <th>الإجراء</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Panel ID="UpdatePanelTransactions" runat="server" >
                                    <asp:Repeater ID="RepeaterIns" runat="server" OnItemCommand="RepeaterIns_ItemCommand">
                                        <ItemTemplate>
                                            <tr class="gradeA">
                                                <td><%# Eval("TNo") %></td>
                                                <td><%# Eval("TransType") %></td>
                                                <td><%# Eval("Category") %></td>
                                                <td><%#  Eval("ClientMobile") %></td>
                                             
                                                <td><asp:Button runat="server" ID="BtnDone" Text="تم الاستلام" CommandArgument='<%# Eval("ID") %>' CommandName="Done" CssClass="btn btn-warning btn-xs" /></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                              
                            </asp:Panel>
                        </tbody>
                    </table>
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


