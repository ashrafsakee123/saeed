<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="SAEED.WebPL.NewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" Runat="Server">
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>

           
                <div  class="hide" id="ErrorDiv"  runat="server">
            <asp:Label ID="LabelError" runat="server" ></asp:Label>   
       </div>
       <div  class="hide" id="SuccessDiv"  runat="server">
            <asp:Label ID="LabelSuccess" runat="server" ></asp:Label>   
       </div>

            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
بيانات المستخدم                        
                                         <span class="tools pull-left">
                            <a href="javascript:;" class="fa fa-chevron-up"></a>
                         
                         </span>
                    </header>
                    <div class="panel-body">
                   
 <div class="col-md-12"   >  
                              <div class="col-md-3 form-group">
                                <label class="control-label" >الموظف
                                    </label>
                            
 <asp:DropDownList runat="server" ID="DropDownListEmp"  class="form-control m-bot15" style="padding:0px">
                               
                            </asp:DropDownList>                            </div>

     <div class="col-md-3 form-group">
                                <label class="control-label" >صلاحية الدخول
                                    </label>
                            
 <asp:DropDownList runat="server" ID="DropDownListRole"  class="form-control m-bot15" style="padding:0px">
                               
                            </asp:DropDownList>                            </div>
                                              </div>


           <div class="col-md-12"   >  
                            <div class="col-md-3 form-group"  >
                                <label class="control-label" >اسم المستخدم
                                      </label>
                           
                                <asp:TextBox ID="TextBoxUserName" runat="server"   class="form-control"></asp:TextBox>

                            </div>
                                               
                            <div class="col-md-3 form-group">
                                <label class="control-label" >كلمة المرور
                                    </label>
                            
                                <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
                            </div>
    
                                              </div>

                               
                         <div class="col-md-12"   >  
                            <div class="col-md-12 form-group"  >
                           
                    <asp:Button id="buttonSave" CssClass="btn btn-primary" runat="server" Text="حفظ" OnClick="buttonSave_Click"></asp:Button>
                        <asp:Button id="buttonCancel" runat="server"  CssClass="btn btn-default" Text="الغاء" OnClick="buttonCancel_Click"></asp:Button>
 
                                              </div>
</div>
                 </div>
                       </section>
                </div>
                         </ContentTemplate>
            </asp:UpdatePanel>
            </div>

      
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


