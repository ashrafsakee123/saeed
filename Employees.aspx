<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="SAEED.WebPL.Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="Server">
    <link href="js/iCheck/skins/square/red.css" rel="stylesheet">
    <link href="js/iCheck/skins/minimal/red.css" rel="stylesheet">
    <link href="js/iCheck/skins/flat/red.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="hide" id="SuccessDiv" runat="server">
            <asp:Label ID="LabelSuccess" runat="server"></asp:Label>
        </div>

        <div class="col-sm-12">
            <section class="panel" style="padding: 5px">
                <header class="panel-heading" style="margin-bottom: 10px">
                    الموظفين
                </header>
                <asp:GridView ID="GridView1" runat="server" CssClass="table  table-hover general-table"  OnRowDeleting="GridView1_RowDeleting"
                    BorderStyle="None" AutoGenerateColumns="False" DataKeyNames="ID" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="رقم الموظف" SortExpression="ID" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden">
                            <HeaderStyle CssClass="hidden"></HeaderStyle>

                            <ItemStyle CssClass="hidden"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="EmpNo" HeaderText="رقم الموظف" SortExpression="EmpNo">
                            <ItemStyle Width="15%" />
                        </asp:BoundField>
                        <asp:TemplateField>

                            <ItemTemplate>
                                <asp:Image ID="img1" runat="server" ImageUrl='<%# "~/PicHandler.ashx?t=employee&id="+ Eval( "ID").ToString() %>' />


                            </ItemTemplate>
                            <ItemStyle CssClass="tm-avatar" Width="5%" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="الاسم" SortExpression="Name">
                            <ItemStyle Width="20%" />
                        </asp:BoundField>
                         <asp:BoundField DataField="Mobile" HeaderText="الموبايل" SortExpression="Mobile">
                            <ItemStyle Width="10%" />
                        </asp:BoundField>
                         <asp:BoundField DataField="Email" HeaderText="البريد الالكتروني" SortExpression="Email">
                            <ItemStyle Width="20%" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <HeaderTemplate>الحالة</HeaderTemplate>
                            <ItemTemplate >
                                
                            <asp:LinkButton  runat="server" Enabled='<%# Eval("AvailabilityStatus").ToString()=="متاح"?true:false  %>'
                                    CommandName="Status"
                                    CommandArgument='<%# Eval( "ID") %>'><%# Eval("AvailabilityStatus") %></asp:LinkButton>

                            </ItemTemplate>
                        </asp:TemplateField>
                            <%--  <asp:BoundField DataField="AvailabilityStatus" HeaderText=" الحالة" SortExpression="AvailabilityStatus">
                            <ItemStyle Width="10%" />
                        </asp:BoundField>--%>
                              <asp:BoundField DataField="Duration" HeaderText="منذ" SortExpression="Duration">
                            <ItemStyle Width="30%" />
                        </asp:BoundField>
                       
                      
                        <%-- <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btnLocked" runat="server" CssClass="btn btn-info  btn-sm"
                                    CommandName="Locked"
                                    CommandArgument='<%# Eval( "ID") %>'
                                    Text="التقييم" />
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btnProfile" runat="server" CssClass="btn btn-success btn-sm"
                                    CommandName="Profile"
                                    CommandArgument='<%# Eval( "ID") %>'
                                    Text="بروفايل" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-warning btn-sm"
                                    CommandName="Edit"
                                    CommandArgument='<%# Eval( "ID") %>'
                                    Text="تعديل" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger btn-sm"
                                    CommandName="Delete"
                                    CommandArgument='<%# Eval( "ID") %>'
                                    Text="حذف" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <HeaderStyle CssClass="table th" />
                    <RowStyle CssClass="table td" />
                </asp:GridView>
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

    <script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
    <!--dynamic table-->
    <script type="text/javascript" language="javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
    <!--common script init for all pages-->
    <script src="js/scripts.js"></script>

    <!--dynamic table initialization -->
    <script src="js/dynamic_table_init.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 71px;
        }
    </style>
</asp:Content>

