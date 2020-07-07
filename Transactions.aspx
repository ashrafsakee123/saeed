<%@ Page Title="" Language="C#" MasterPageFile="~/TapSiteMaster.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="SAEED.WebPL.Transactions" %>

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
                    <a class="btn btn-saeed" data-toggle="modal" href="#searchModal">بحث متقدم
                    </a>
                    <%--                    <asp:Button ID="ButtonReport" runat="server" Text="طباعة تقرير" CssClass="btn btn-default " />--%>
                    <asp:Button ID="ButtonAll" runat="server" Text="الغاء التصفية" CssClass="btn btn-white " OnClick="ButtonAll_Click" />
                    <asp:UpdatePanel ID="UpdatePanelTrans" runat="server" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                        <ContentTemplate>
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                    <tr>
                                        <th>رقم المعاملة</th>
                                        <th>نوع المعاملة</th>
                                        <th>التصنيف </th>
                                        <th>المتعامل</th>
                                        <th>يعمل عليها</th>
                                        <th>تاريخ الاستلام</th>
                                        <th>المبلغ</th>
                                        <th>حالة المعاملة</th>
                                        <th>الإجراء</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="RepeaterIns" runat="server">
                                        <ItemTemplate>
                                            <tr class="gradeA">
                                                <td><%# Eval("TNo") %></td>
                                                <td><%# Eval("TransType") %></td>
                                                <td><%# Eval("Category") %></td>
                                                <td><%# Eval("ClientCode") %>-<%# Eval("ClientName") %></td>
                                                <td><%# Eval("CurrentEmpName") %></td>
                                                <td><%# Eval("TDate") %></td>
                                                <td><%# Eval("Amount") %></td>
                                                <td><span class="label label-<%#(Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.بالانتظار ||Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.مرفوضة ) ? "danger" : (Convert.ToInt32(Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.مخصصة ||Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.جاهزة_للتخليص_الخارجي || Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.للتعديل ||Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.بالتصحيح) ? "warning" : ( Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.بالتنفيذ|| Convert.ToInt32(  Eval("StatusID"))==(int)SAEED.BLL.TransactionStatusList.بالتخليص_الخارجي )?"inverse":( Convert.ToInt32( Eval("StatusID"))==(int)SAEED.BLL.TransactionStatusList.جاهزة_للاستلام  || Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.مؤرشفة)?"info":"success"%> label-mini"><%# Eval("Status").ToString() %></span></td>
                                                <td><a class="btn btn-warning btn-xs" href="Transaction.aspx?id=<%#  Eval("ID").ToString() %>"><i class="fa fa-edit"></i>إجراء </a></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                            </table>
                            <asp:Timer ID="Timer1" Interval="10000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </section>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" style="font-family: cairo">بحث متقدم</h4>
                </div>
                <div class="modal-body" style="overflow-y: scroll; height: 35em; overflow-x: hidden">
                    <div class="col-md-12">
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                رقم المعاملة
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:TextBox ID="TextBoxTNo" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                العميل 

                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:DropDownList runat="server" ID="DropDownListClient" CssClass="form-control m-bot15" Style="padding: 0px">
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                تصنيف المعاملة
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:DropDownList runat="server" ID="DropDownListCat" CssClass="form-control m-bot15" Style="padding: 0px">
                                <asp:ListItem Text="-" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                التصنيف الفرعي

                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:DropDownList runat="server" ID="DropDownListSubCat" CssClass="form-control m-bot15" Style="padding: 0px">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                نوع المعاملة
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:DropDownList runat="server" ID="DropDownType" CssClass="form-control m-bot15" Style="padding: 0px">
                                <asp:ListItem Text="-" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                طبيعة المعاملة
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:DropDownList runat="server" ID="DropDownListExcutionType" CssClass="form-control m-bot15" Style="padding: 0px">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                حالة المعاملة
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:DropDownList runat="server" ID="DropDownListStatus" CssClass="form-control m-bot15" Style="padding: 0px">
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                الموظف 
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:DropDownList runat="server" ID="DropDownListEmp" CssClass="form-control m-bot15" Style="padding: 0px">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                من تاريخ
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:TextBox ID="TextBoxFromDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                الى تاريخ
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:TextBox ID="TextBoxToDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                المبلغ من
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:TextBox ID="TextBoxFromAmount" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                المبلغ الى

                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:TextBox ID="TextBoxToAmount" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                رقم الفاتورة                               
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:TextBox ID="TextBoxInv" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-2 form-group">
                            <label class="control-label">
                                رقم الايصال                               
                            </label>
                        </div>
                        <div class="col-md-4 form-group">
                            <asp:TextBox ID="TextBoxReckNo" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                    <asp:Button CssClass="btn btn-success" runat="server" ID="ButtonSearch" Text="بحث" OnClick="ButtonSearch_Click" />
                </div>
            </div>
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

    <!-- modal -->
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


