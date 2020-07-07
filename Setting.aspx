<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="SAEED.WebPL.Setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
    <script src="bs3/js/bootstrap.min.js"></script>
    <script src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
    <!--common script init for all pages-->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
    <!-- CSS adjustments for browsers with JavaScript disabled -->
    <noscript>
        <link rel="stylesheet" href="js/file-uploader/css/jquery.fileupload-noscript.css">
    </noscript>
    <noscript>
        <link rel="stylesheet" href="js/file-uploader/css/jquery.fileupload-ui-noscript.css">
    </noscript>
    <script src="js/scripts.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="hide" id="SuccessDiv" runat="server">
            <asp:Label ID="LabelSuccess" runat="server"></asp:Label>
        </div>
    </div>
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                اعدادات النظام
            </header>
            <div class="panel-body">
                <section class="panel">
                    <header class="panel-heading tab-bg-dark-navy-blue ">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a data-toggle="tab" href="#tap1" aria-expanded="true">الفروع</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" href="#tap10" aria-expanded="false">تصنيفات الخدمات</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" href="#tap2" aria-expanded="false">التصنيفات الفرعية</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" href="#tap5" aria-expanded="false">أسماء  الخدمات</a>
                            </li>
  <li class="">
                                <a data-toggle="tab" href="#tap20" aria-expanded="false">  خدمات البلدية</a>
                            </li>                            <li class="">
                                <a data-toggle="tab" href="#tap3" aria-expanded="false">أنواع المرفقات</a>
                            </li>

                            <li class="">
                                <a data-toggle="tab" href="#tap4" aria-expanded="false">مرفقات الخدمات</a>
                            </li>


                             <li class="">
                                <a data-toggle="tab" href="#tap8" aria-expanded="false">بطاقات الولاء</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" href="#tap9" aria-expanded="false">النسخ الاحتياطي</a>
                            </li>

                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content">
                            <div id="tap1" class="tab-pane active" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanelBranch" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        كود الفرع
                                                    </label>
                                                    <asp:TextBox ID="TextBoxCode" ClientIDMode="Static" Placeholder="Code" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <asp:HiddenField ID="HiddenFieldID" ClientIDMode="Static" runat="server"></asp:HiddenField>
                                                </div>

                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        اسم الفرع
                                                    </label>
                                                    <asp:TextBox ID="TextBoxName" ClientIDMode="Static" Placeholder="Name" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        الهاتف
                                                    </label>
                                                    <asp:TextBox ID="TextBoxPhone" ClientIDMode="Static" Placeholder="Phone" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        العنوان                                   
                                                    </label>
                                                    <asp:TextBox ID="TextBoxAddress" ClientIDMode="Static" Placeholder="Address" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                 <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        ترخيص رقم                                   
                                                    </label>
                                                    <asp:TextBox ID="TextBoxLic" ClientIDMode="Static" Placeholder="Address" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="buttonAddBranch" Text="اضافة" OnClick="buttonAddBranch_Click"></asp:Button>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <table style="margin-top: 20px" class="display table table-bordered table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>كود التسلسل</th>
                                                            <th>اسم الفرع</th>
                                                            <th>الهاتف</th>
                                                            <th>العنوان</th>
                                                              <th>الترخيص</th>
                                                            <th  >إجراء</th>
                                                        </tr>
                                                    </thead>
                                                                                    
                                                    <tbody>
                                                        <asp:Repeater ID="RepeaterBranches" runat="server" OnItemCommand="RepeaterBranches_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr class="gradeA">
                                                                    <td><%# Eval("Code") %></td>
                                                                    <td><%# Eval("Name") %></td>
                                                                    <td><%# Eval("Phone") %></td>
                                                                    <td><%# Eval("Address") %></td>
                                                                     <td><%# Eval("License") %></td>
                                                                    <td>
                                                                        <asp:Button ID="ButtonEditBranch" CssClass="btn btn-warning " runat="server" CommandName="edit" UseSubmitBehavior="false" CommandArgument='<%# Eval("ID") %>' Text="تعديل"></asp:Button>
                                                                        <asp:Button ID="ButtonDeleteBranch" CssClass="btn btn-danger" runat="server" CommandName="delete" UseSubmitBehavior="false" CommandArgument='<%# Eval("ID") %>' Text="حذف"></asp:Button>
                                                                        <asp:Button ID="ButtonActivate" CssClass="btn btn-info " runat="server" CommandName="active" UseSubmitBehavior="false" CommandArgument='<%# Eval("ID") %>' Text=' <%# Convert.ToInt32( Eval("StatusID")) ==(int) SAEED.BLL.ActiveationStatusList.Active?"ايقاف":"تفعيل" %>'></asp:Button></td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <div id="tap10" class="tab-pane" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanelCat" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">

                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        التصنيف                               
                                                    </label>
                                                    <asp:TextBox ID="textboxCategory" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <asp:HiddenField ID="HiddenFieldCatID" ClientIDMode="Static" runat="server"></asp:HiddenField>

                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="buttonAddCat" Text="اضافة" OnClick="buttonAddCat_Click"></asp:Button>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">

                            <table class="display table table-bordered table-striped" style="padding-top: 20px" id="dynamic-table4">
                                                    <thead>
                                                        <tr>
                                                            <th>التصنيف  </th>
                                                            <th  >إجراء</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="RepeaterCategories" runat="server" OnItemCommand="RepeaterCategories_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr class="gradeA">
                                                                    <td><%# Eval("Name") %></td>
                                                                    <td>
                                                                        <asp:Button ID="ButtonEditCat" CssClass="btn btn-warning" runat="server" UseSubmitBehavior="false" CommandName="edit" CommandArgument='<%# Eval("ID") %>' Text="تعديل"></asp:Button>
                                                                        <asp:Button ID="ButtonDeleteCat" CssClass="btn btn-danger" runat="server" UseSubmitBehavior="false" CommandName="delete" CommandArgument='<%# Eval("ID") %>' Text="حذف"></asp:Button>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <div id="tap3" class="tab-pane" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">

                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        اسم المرفق                               
                                                    </label>
                                                    <asp:TextBox ID="textboxAttName" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <asp:HiddenField ID="HiddenFieldAttID" ClientIDMode="Static" runat="server"></asp:HiddenField>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="buttonAddAtt" Text="اضافة" OnClick="buttonAddAtt_Click"></asp:Button>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                            <table class="display table table-bordered table-striped" style="padding-top: 20px" id="dynamic-table5">
                                                    <thead>
                                                        <tr>
                                                            <th>اسم المرفق  </th>
                                                            <th  >إجراء</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="RepeaterAtt" runat="server" OnItemCommand="RepeaterAtt_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr class="gradeA">
                                                                    <td><%# Eval("Name") %></td>
                                                                    <td>
                                                                        <asp:Button ID="ButtonEditCat" CssClass="btn btn-warning" runat="server" UseSubmitBehavior="false" CommandName="edit" CommandArgument='<%# Eval("ID") %>' Text="تعديل"></asp:Button>
                                                                        <asp:Button ID="ButtonDeleteCat" CssClass="btn btn-danger" runat="server" UseSubmitBehavior="false" CommandName="delete" CommandArgument='<%# Eval("ID") %>' Text="حذف"></asp:Button>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <div id="tap2" class="tab-pane" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanelSubCat" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        التصنيف                                                   
                                                    </label>
                                                    <asp:DropDownList ID="DropDownListCategory" CssClass="form-control" runat="server" Style="padding: 0px"></asp:DropDownList>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        التصنيف الفرعي                                                    
                                                    </label>
                                                    <asp:TextBox ID="textboxSubCat" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <asp:HiddenField ID="HiddenFieldSubCatID" ClientIDMode="Static" runat="server"></asp:HiddenField>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="buttonAddSubCat" Text="اضافة" OnClick="buttonAddSubCat_Click"></asp:Button>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                            <table class="display table table-bordered table-striped" style="padding-top: 20px" id="dynamic-table">
                                                    <thead>
                                                        <tr>
                                                            <th>التصنيف </th>
                                                            <th>التصنيف الفرعي </th>
                                                            <th >إجراء</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="RepeaterSubCat" runat="server" OnItemCommand="RepeaterSubCat_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr class="gradeA">
                                                                    <td><%# Eval("Category") %></td>
                                                                    <td><%# Eval("Name") %></td>
                                                                    <td>
                                                                        <asp:Button ID="ButtonEditSubCat" CssClass="btn btn-warning" runat="server" UseSubmitBehavior="false" CommandName="edit" CommandArgument='<%# Eval("ID") %>' Text="تعديل"></asp:Button>
                                                                        <asp:Button ID="ButtonDeleteSubCat" CssClass="btn btn-danger" runat="server" UseSubmitBehavior="false" CommandName="delete" CommandArgument='<%# Eval("ID") %>' Text="حذف"></asp:Button></td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>


                            <div id="tap4" class="tab-pane" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanelAtt" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        الخدمة                                                 
                                                    </label>
                                                    <asp:DropDownList ID="DropDownListSType" CssClass="form-control" runat="server" Style="padding: 0px"></asp:DropDownList>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        اسم المرفق
                                                    </label>
                                                    <asp:DropDownList ID="DropDownListAttach" CssClass="form-control" runat="server" Style="padding: 0px"></asp:DropDownList>
                                                    <asp:HiddenField ID="HiddenFieldReqAtt" ClientIDMode="Static" runat="server"></asp:HiddenField>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="buttonAddAttach" Text="اضافة" OnClick="buttonAddAttach_Click"></asp:Button>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                            <table class="display table table-bordered table-striped" style="padding-top: 20px" id="dynamic-table2">
                                                    <thead>
                                                        <tr>
                                                            <th>الخدمة </th>
                                                            <th>اسم المرفق</th>
                                                            <th >اجراء</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="RepeaterAttach" runat="server" OnItemCommand="RepeaterAttach_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr class="gradeA">
                                                                    <td><%# Eval("TransType") %></td>
                                                                    <td><%# Eval("AttachType") %></td>
                                                                    <td>
                                                                        <asp:Button ID="ButtonDeleteAttach" CausesValidation="false" CssClass="btn btn-danger btn-sm" runat="server" UseSubmitBehavior="false" CommandName="delete" CommandArgument='<%#Eval("ID") %>' Text="حذف"></asp:Button></td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>


                            <div id="tap5" class="tab-pane" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanelSType" runat="server"  UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        التصنيف                                                    
                                                    </label>
                                                    <asp:DropDownList ID="DropDownListSubCategory" CssClass="form-control" runat="server" Style="padding: 0px"></asp:DropDownList>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        اسم الخدمة                                   
                                                    </label>
                                                    <asp:TextBox ID="TextBoxSType" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <asp:HiddenField ID="HiddenFieldSTypeID" ClientIDMode="Static" runat="server"></asp:HiddenField>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="col-md-3 form-group">
                                                    <label class="control-label ">
                                                        الرسوم الحكومية                            
                                                    </label>
                                                    <asp:TextBox ID="TextBoxFees" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3 form-group">
                                                    <label class="control-label ">
                                                        رسوم الطباعة                           
                                                    </label>
                                                    <asp:TextBox ID="TextBoxPrintingFees" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                 <div class="col-md-3 form-group">
                                                    <label class="control-label ">
                                                        رسوم المركز                           
                                                    </label>
                                                    <asp:TextBox ID="TextBoxCenterFees" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3 form-group">
                                                    <label class="control-label ">
                                                        تنفيذ الخدمة                                                  
                                                    </label>
                                                    <asp:DropDownList ID="DropDownListExcute" CssClass="form-control" runat="server" Style="padding: 0px"></asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="buttonAddSType" Text="اضافة" OnClick="buttonAddSType_Click"></asp:Button>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                            <table class="display table table-bordered table-striped" style="padding-top: 20px" id="dynamic-table3">
                                                    <thead>
                                                        <tr>
                                                            <th>التصنيف  </th>
                                                            <th>اسم الخدمة </th>
                                                           <th>إجمالي الرسوم مع الضريبة   </th>
                                                            <th>تنفيذ الخدمة </th>
                                                            <th >اجراء</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="RepeaterSType" runat="server" OnItemCommand="RepeaterSType_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr class="gradeA">
                                                                    <td><%# Eval("FullCategory") %></td>
                                                                    <td><%# Eval("Name") %></td>
                                                                    <td><%# Eval("TotalAmount") %></td>
                                                                    <td><%# Eval("Excution") %></td>
                                                                    <td>
                                                                        <asp:Button ID="ButtonEditSType" CssClass="btn btn-warning" runat="server" UseSubmitBehavior="false" CommandName="edit" CommandArgument='<%# Eval("ID") %>' Text="تعديل"></asp:Button>
                                                                        <asp:Button ID="ButtonDeleteSType" CssClass="btn btn-danger" runat="server" UseSubmitBehavior="false" CommandName="delete" CommandArgument='<%# Eval("ID") %>' Text="حذف"></asp:Button></td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>


                              <div id="tap20" class="tab-pane" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">

                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
اسم الخدمة                                                    </label>
                                                    <asp:TextBox ID="textboxOnlineName" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <asp:HiddenField ID="HiddenFieldOnlineID" ClientIDMode="Static" runat="server"></asp:HiddenField>

                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
الرسوم                                                   </label>
                                                    <asp:TextBox ID="textboxOnlineFees" CssClass="form-control" runat="server"></asp:TextBox>

                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="buttonAddOnline" Text="اضافة" OnClick="buttonAddOnline_Click"></asp:Button>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">

                            <table class="display table table-bordered table-striped" style="padding-top: 20px" id="dynamic-table4">
                                                    <thead>
                                                        <tr>
                                                            <th>الخدمة  </th>
                                                              <th>الرسوم  </th>
                                                            <th  >إجراء</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="RepeaterOnline" runat="server" OnItemCommand="RepeaterOnline_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr class="gradeA">
                                                                    <td><%# Eval("Name") %></td>
                                                                     <td><%# Eval("Fees") %></td>
                                                                    <td>
                                                                        <asp:Button ID="ButtonEditOnline" CssClass="btn btn-warning" runat="server" UseSubmitBehavior="false" CommandName="edit" CommandArgument='<%# Eval("ID") %>' Text="تعديل"></asp:Button>
                                                                        <asp:Button ID="ButtonDeleteOnline" CssClass="btn btn-danger" runat="server" UseSubmitBehavior="false" CommandName="delete" CommandArgument='<%# Eval("ID") %>' Text="حذف"></asp:Button>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <div id="tap8" class="tab-pane" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                        نوع البطاقة                                                 
                                                    </label>
                                                    <asp:TextBox ID="TextBoxCardName" CssClass="form-control" runat="server" ></asp:TextBox>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="control-label ">
                                                     (%)  نسبة الخصم
                                                    </label>
                                                    <asp:TextBox ID="TextBoxPer" Text="0" CssClass="form-control" runat="server" ></asp:TextBox>
                                                    <asp:HiddenField ID="HiddenFieldCardID" ClientIDMode="Static" runat="server"></asp:HiddenField>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="buttonCardAdd" Text="اضافة" OnClick="buttonCardAdd_Click"></asp:Button>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                            <table class="display table table-bordered table-striped" style="padding-top: 20px" id="dynamic-table2">
                                                    <thead>
                                                        <tr>
                                                            <th>نوع البطاقة </th>
                                                            <th>نسبة الخصم </th>
                                                            <th >اجراء</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="RepeaterCards" runat="server" OnItemCommand="RepeaterCards_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr class="gradeA">
                                                                    <td><%# Eval("Name") %></td>
                                                                    <td><%# Eval("DiscountPer") %></td>
                                                                    <td>
                                                               <asp:Button ID="ButtonEditCard" CssClass="btn btn-warning" runat="server" UseSubmitBehavior="false" CommandName="edit" CommandArgument='<%# Eval("ID") %>' Text="تعديل"></asp:Button>

                                                                        <asp:Button ID="ButtonDeleteCard" CausesValidation="false" CssClass="btn btn-danger btn-sm" runat="server" UseSubmitBehavior="false" CommandName="delete" CommandArgument='<%#Eval("ID") %>' Text="حذف"></asp:Button></td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <div id="tap9" class="tab-pane" style="padding-top: 20px">
                                <asp:UpdatePanel ID="UpdatePanelBackup" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <asp:Button ID="ButtonBackup" runat="server" Text="نسخ احتياطي" CssClass="btn btn-success" OnClick="ButtonBackup_Click" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-6 form-group">
                                                    <asp:Label ID="Labelmsg" runat="server" Text="" CssClass=""></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </section>
    </div>

      <script type="text/javascript">
        $(function () {
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(0)').addClass("active");
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('ul:eq(0)').css("display", "block")
            $("a[href='" + document.location.href.match(/[^\/]+$/)[0] + "']").parents('li:eq(1)').find("a").addClass("active");
        });
    </script>

    <%--   <script src="js/table-editable.js"></script>

    <script>
        jQuery(document).ready(function () {
            EditableTable.init();
        });

    </script>--%>
        <!--dynamic table-->
    <script type="text/javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
       <script src="js/dynamic_table_init.js"></script>
    <script src="js/notifi.js" type="text/javascript"></script>

</asp:Content>
