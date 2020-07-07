<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="ClientsList.aspx.cs" Inherits="SAEED.WebPL.ClientsList" %>
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

                    <asp:Button ID="ButtonReport" runat="server" Text="طباعة تقرير" CssClass="btn btn-default "  />

                    <table class="display table table-bordered table-striped" id="dynamic-table">
                        <thead>
                            <tr>

                                <th>رقم المتعامل</th>
                                <th>الاسم</th>
                                <th>رقم الموبايل </th>
                                <th>البريد الالكتروني</th>
                                <th> اخر زيارة</th>
                                <th>عدد المعاملات </th>
                                <th>إجراء</th>
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
                                                 
                                                <%if ((SAEED.BLL.AccessRoleList)Session["role"] == SAEED.BLL.AccessRoleList.مدير_المركز)
                                                    {%>
                                            <td><a class="btn btn-success btn-xs" href="ClientProfile.aspx?id=<%# Eval("ID") %>"><i class="fa fa-eye"></i>بروفايل </a>
<%--                             <a class="btn btn-warning btn-xs" href="EditProfile.aspx?id=<%# Eval("ID") %>"><i class="fa fa-edit"></i>تعديل </a>--%>
                                                   
    <a class="btn btn-danger btn-xs" data-toggle="modal" href="#myModal<%# Eval( "ID") %>">
                                                <i class="fa fa-trash-o"><span style="font-family: cairo">حذف </span></i></a>
                                            <!-- Modal -->
                                            <div class="modal fade" id="myModal<%# Eval( "ID") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title" style="font-family: cairo">هل انت متاكد من اجراء حذف المتعامل؟</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            سيتم حذف المتعامل ولا يمكن الرجوع عن هذا الإجراء.

                                                        </div>
                                                        <div class="modal-footer">
                                                            <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                                                            <a class="btn btn-danger" href="DeleteClient.aspx?id=<%# Eval( "ID") %>">حذف</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- modal -->
                                                <%} %>
                                                </td>
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
  <script type="text/javascript">
        $(function () {
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(0)').addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('ul:eq(0)').css("display", "block")
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(1)').find("a").addClass("active");
        });
    </script>

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

