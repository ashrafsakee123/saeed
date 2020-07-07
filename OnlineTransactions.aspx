<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="OnlineTransactions.aspx.cs" Inherits="SAEED.WebPL.OnlineTransactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
        <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

    <link href="js/mini-upload-form/assets/css/bucketmin.css" rel="stylesheet" />


    <link rel="stylesheet" type="text/css" href="js/jquery-multi-select/css/multi-select.css" />
    <link rel="stylesheet" type="text/css" href="js/jquery-tags-input/jquery.tagsinput.css" />

    <link rel="stylesheet" type="text/css" href="js/select2/select2.css" />
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="col-sm-12">
            <section class="panel" style="padding: 5px">
                <header class="panel-heading">
                   معاملات البلدية     
                     
                </header>
                <div class="panel-body">

                   <a class="btn btn-success" data-toggle="modal" href="#myModalad">
                                                        <i class="fa fa-plus"><span style="font-family: cairo">إضافة </span></i></a>
                                                    <!-- Modal -->
                                                     <!-- Modal -->
            <div class="modal fade" id="myModalad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" style="font-family: cairo"> إضافة</h4>
                </div>
                <div class="modal-body" style="overflow-y: scroll; height:15em; overflow-x: hidden">
                    <div class="col-sm-12">
                                        
                        
                          <div class="col-md-12 form-group" id="divdate" runat="server" visible="false"  >
                                            <label class="control-label">
تاريخ المعاملة                                            </label>
                                                                          <asp:TextBox ID="TextBoxDate"  BackColor="White" ClientIDMode="Static" TextMode="DateTime"  CssClass="form-control" runat="server" ></asp:TextBox>

                              </div>
                        
                                        <div class="col-md-6 form-group">
                                            <label class="control-label">
نوع المعاملة                                            </label>
                                            <asp:DropDownList ID="DropDownListType2"  ClientIDMode="Static" CssClass="form-control" runat="server" Style="padding: 0px">
                                           <asp:ListItem>معاملة بلدية</asp:ListItem>
                                                </asp:DropDownList>
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label class="control-label">
العدد                                            </label>
                                            <asp:TextBox ID="TextBoxCount2"  BackColor="White" ClientIDMode="Static" TextMode="Number"  CssClass="form-control" runat="server" placeholder="0"></asp:TextBox>
                                        </div>
                                      </div> 
                          
                          
                        </div>
                       <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                    <asp:Button CssClass="btn btn-success" runat="server" ID="ButtonAdd" Text="إضافة" OnClick="ButtonAdd_Click" />
                </div>
                    </div>
                </div>
         </div>
            <!-- modal -->

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
           
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                    <tr>

                                      
                                        <th>التاريخ </th>
                                         <th>الموظف </th>
                                        <th>نوع المعاملة</th>
                                        <th>الرسوم </th>
                                        <th>العدد</th>
                                        <th>الإجمالي </th>
                                          <th>الإجراء </th>
                                    </tr>
                                </thead>
                                <tbody>



                                    <asp:Repeater ID="RepeaterIns" ClientIDMode="Static" runat="server">
                                        <ItemTemplate>
                                            <tr class="gradeA">
                                               
                                                <td><%# Eval("TDate") %></td>
                                                 <td><%# Eval("Emp") %></td>
                                                 <td><%# Eval("Type") %></td>
                                                <td><%# Eval("Fees") %></td>
                                                 <td><%# Eval("Count") %></td>
                                                 <td><%# Eval("TotalFees") %></td>
                                                <td>
                                                   <a class="btn btn-danger btn-xs" data-toggle="modal" href="#myModal<%# Eval( "ID") %>">
                                                        <i class="fa fa-trash-o"><span style="font-family: cairo">حذف </span></i></a>
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="myModal<%# Eval( "ID") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                    <h4 class="modal-title" style="font-family: cairo">هل انت متاكد من اجراء حذف المعاملة؟</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    سيتم حذف المعاملة ولا يمكن الرجوع عن هذا الإجراء.

                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                                                                    <a class="btn btn-danger" href="DeleteOnlineTransaction.aspx?id=<%# Eval( "ID") %>">حذف</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- modal -->
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                            </ContentTemplate>
                    </asp:UpdatePanel>
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
<%--    <script src="js/notifi.js" type="text/javascript"></script>--%>
</asp:Content>


