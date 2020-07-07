<%@ Page Title="" Language="C#" MasterPageFile="~/TapSiteMaster.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="SAEED.WebPL.Clients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
                <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="col-sm-12">
            <section class="panel" style="padding: 5px">
                <header class="panel-heading">
                    المتعاملين                      
                </header>
                <div class="panel-body">

<%--                    <asp:Button ID="ButtonReport" runat="server" Text="طباعة تقرير" CssClass="btn btn-default "  />--%>

                    <table class="display table table-bordered table-striped" id="dynamic-table">
                        <thead>
                            <tr>

                                <th>رقم المتعامل</th>
                                <th>الاسم</th>
                                <th>رقم الموبايل </th>
                                <th>البريد الالكتروني</th>
                                <th> اخر زيارة</th>
                                <th>عدد المعاملات </th>
                               <%-- <th>الإجراء</th>--%>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:UpdatePanel ID="UpdatePanelTrans" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>

                                    <asp:Repeater ID="RepeaterIns" runat="server">
                                        <ItemTemplate>
                                            <tr class="gradeA">
                                                <td><%# Eval("ClientCode") %></td>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("Mobile") %></td>
                                                <td><%# Eval("Email") %></td>
                                                <td><%# Eval("LastVisit") %></td>
                                                <td><%# Eval("Transactions") %></td>
<%--                                            <td><a class="btn btn-success btn-xs" href="ClientProfile.aspx?id=<%# Eval("ClientCode") %>"><i class="fa fa-eye"></i>بروفايل </a></td>--%>

                                            </tr>

                                        </ItemTemplate>
                                    </asp:Repeater>

                                </ContentTemplate>
                            </asp:UpdatePanel>
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


