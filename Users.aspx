<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="SAEED.WebPL.Users" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
     <link href="js/iCheck/skins/minimal/red.css" rel="stylesheet">
     <link href="js/iCheck/skins/flat/red.css" rel="stylesheet">

    <style type="text/css">
        .auto-style1 {
            height: 71px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
           <div  class="hide" id="ErrorDiv"  runat="server">
            <asp:Label ID="LabelError" runat="server" ></asp:Label>   
       </div>
       <div  class="hide" id="SuccessDiv"  runat="server">
            <asp:Label ID="LabelSuccess" runat="server" ></asp:Label>   
       </div>

            <div class="col-sm-12">
                <section class="panel" style="padding:5px">
                    <header class="panel-heading" style="margin-bottom:10px">
المستخدمين

                    </header>


                     <asp:GridView ID="GridView1" runat="server" CssClass="table  table-hover general-table" OnRowDeleting="GridView1_RowDeleting"  
                      BorderStyle="None"     AutoGenerateColumns="False" DataKeyNames="ID" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging" GridLines="None">
                          <Columns>
                              <asp:BoundField DataField="ID" HeaderText="رقم المستخدم" SortExpression="ID" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden">
<HeaderStyle CssClass="hidden"></HeaderStyle>

<ItemStyle CssClass="hidden"></ItemStyle>
                                  </asp:BoundField>
                             
                            
                               <asp:TemplateField HeaderText="اسم الموظف" SortExpression="Employee.Name">
                                   <EditItemTemplate>
                                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Employee.Name") %>'></asp:TextBox>
                                   </EditItemTemplate>
                                   <ItemTemplate>
                                       <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
                                   </ItemTemplate>
                                   <ItemStyle Width="30%" />
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="اسم المستخدم" SortExpression="UserName">
                                  <EditItemTemplate>
                                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                  </EditItemTemplate>
                                  <ItemTemplate>
                                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserName") %>'  OnDataBinding="Label3_DataBinding"></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle Width="30%" />
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="الصلاحية" SortExpression="AccessRole.Name">
                                  <EditItemTemplate>
                                      <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AccessRole.Name") %>'></asp:TextBox>
                                  </EditItemTemplate>
                                  <ItemTemplate>
                                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("Role") %>' OnDataBinding="Label3_DataBinding"></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle Width="30%" />
                              </asp:TemplateField>
                            
                                  <asp:TemplateField>
                              <ItemTemplate>
                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-warning btn-sm"
                                  CommandName="Edit" 
                                  CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                  Text="تعديل" />
                              </ItemTemplate> 
                             </asp:TemplateField>

                               <asp:TemplateField>
                              <ItemTemplate>
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger btn-sm"
                                  CommandName="Delete" 
                                  CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
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
      <script type="text/javascript">
        $(function () {
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(0)').addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('ul:eq(0)').css("display", "block")
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(1)').find("a").addClass("active");
        });
    </script>

      <!--Core js-->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
<script src="bs3/js/bootstrap.min.js"></script>

<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>


<!--common script init for all pages-->
<script src="js/scripts.js"></script>
            <script src="js/notifi.js" type="text/javascript"></script>

</asp:Content>

