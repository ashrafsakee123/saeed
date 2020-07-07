<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="NewEmployee.aspx.cs" Inherits="SAEED.WebPL.NewEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="Server">
    <!-- blueimp Gallery styles -->
    <link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
    <!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
    <link rel="stylesheet" href="js/file-uploader/css/jquery.fileupload.css">
    <link rel="stylesheet" href="js/file-uploader/css/jquery.fileupload-ui.css">
    <!-- CSS adjustments for browsers with JavaScript disabled -->
    <noscript>
        <link rel="stylesheet" href="js/file-uploader/css/jquery.fileupload-noscript.css">
    </noscript>
    <noscript>
        <link rel="stylesheet" href="js/file-uploader/css/jquery.fileupload-ui-noscript.css">
    </noscript>
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
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
            <section class="panel">
                <header class="panel-heading">
                    بيانات الموظف                        
                                         <span class="tools pull-left">
                                             <a href="javascript:;" class="fa fa-chevron-up"></a>
                                         </span>
                </header>
                <div class="panel-body">
                    <div class="col-md-12">
                        <div class="col-md-3 form-group">
                            <label class="control-label">صورة البروفايل</label>
                            <asp:FileUpload runat="server" ID="exampleInputFile" class="file-pos" />
                            <asp:Image ID="Image1" runat="server" Width="100" />
                        </div>

                    </div>
                    <div class="col-md-12">
                        <div class="col-md-3 form-group">
                            <label class="control-label">
                                رقم الموظف
                            </label>
                            <asp:TextBox ID="TextBoxEmpNo" runat="server" required="required" class="form-control"></asp:TextBox>
                        </div>

                        <div class="col-md-3 form-group">
                            <label class="control-label">
                                الاسم
                            </label>
                            <asp:TextBox ID="TextBoxName" runat="server" required="required" class="form-control"></asp:TextBox>
                        </div>                       
                   
                        <div class="col-md-3 form-group">
                            <label class="control-label">
                                الموبايل
                            </label>
                            <asp:TextBox ID="TextBoxMobile" runat="server" required="required" class="form-control"></asp:TextBox>
                        </div>

                        <div class="col-md-3 form-group">
                            <label class="control-label">
                                البريد الإلكتروني
                            </label>
                            <asp:TextBox ID="TextBoxEmail" runat="server" required="required" TextMode="Email" class="form-control"></asp:TextBox>
                        </div>
                    </div>                 
                    
                    <div class="col-md-12">
                        <div class="col-md-12 form-group">
                            <asp:Button ID="buttonSave" CssClass="btn btn-primary" runat="server" Text="حفظ" OnClick="buttonSave_Click"></asp:Button>
                            <asp:Button ID="buttonCancel" runat="server" CssClass="btn btn-default" Text="مسح" UseSubmitBehavior="false" OnClick="ButtonCancel_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>


    <!--Core js-->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
    <script src="bs3/js/bootstrap.min.js"></script>

    <script src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
   
<![endif]-->
    <!--common script init for all pages-->
    <script src="js/scripts.js"></script>
  
</asp:Content>


