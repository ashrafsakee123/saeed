<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="ViewTransaction.aspx.cs" Inherits="SAEED.WebPL.ViewTransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
    <!--Core CSS -->
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="col-sm-12">
            <section class="panel">
                <header class="panel-heading">
                    بيانات المعاملة     
                     <span class="pull-left">
                         <asp:Image ID="ImageFactor" Width="20px" runat="server" />
                     </span>
                </header>
                <div class="panel-body">
                    <asp:UpdatePanel ID="upc" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="col-md-12" align="center">
                                <asp:Label ID="LabelEdit" runat="server" CssClass="control-label" Style="color: white; background-color: red; width: 100%; text-align: center"></asp:Label>
                            </div>
                            <br />
                            <br />
                            <div class="col-md-12">
                                 <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        نوع الخدمة
                                    </label>
                                    <asp:Label ID="LabelTrans"  CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        الرقم الحكومي                              
                                    </label>
                                    <asp:TextBox ID="TextGovNo" BorderColor="Gray" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        طريقة الدفع
                                    </label>
                                    <asp:DropDownList ID="DropDownListMethod" Enabled="false"  runat="server" CssClass="form-control" Style="padding: 0px" ></asp:DropDownList>
                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        رقم إيصال الدفع
                                    </label>
                                    <asp:TextBox ID="TextBoxRec"   CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                


                                
                               
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        رقم المعاملة                              
                                    </label>
                                    <asp:Label ID="LabelTNo" CssClass="form-control" runat="server"></asp:Label>
                                    <%--                                    <asp:Image ID="Image1" runat="server" />--%>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        تاريخ المعاملة                              
                                    </label>
                                    <asp:TextBox ID="TextBoxDate" ReadOnly="true" BackColor="White" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>


                                
                                 <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        الرسوم الحكومية
                                    </label>
                                    <asp:TextBox ID="TextBoxGovFees"  OnTextChanged="DropDownListLoyalty_SelectedIndexChanged" AutoPostBack="true" ReadOnly="true" ClientIDMode="Static" BackColor="White" CssClass="form-control" runat="server"></asp:TextBox>

                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        رسوم الطباعة
                                    </label>
                                    <asp:TextBox ID="TextBoxPFees" OnTextChanged="DropDownListLoyalty_SelectedIndexChanged" AutoPostBack="true" BackColor="White" CssClass="form-control" ClientIDMode="Static" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        رسوم المركز
                                    </label>
                                    <asp:TextBox ID="TextBoxCFees" OnTextChanged="DropDownListLoyalty_SelectedIndexChanged" AutoPostBack="true" BackColor="White" CssClass="form-control" ClientIDMode="Static" ReadOnly="true" runat="server"></asp:TextBox>
                                    <asp:HiddenField ID="HiddenFieldVat" runat="server" />

                                </div>


                                
                                
                            </div>
                            <div class="col-md-12">

                                 <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        رقم الفاتورة                          
                                    </label>
                                    <asp:Label ID="LabelInvoiceNo" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        ملاحظات الفاتورة
                                    </label>
                                    <asp:TextBox ID="TextBoxInvoiceNotes" BorderColor="Gray" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                                 <div class="col-md-2 form-group">
                                    <label class="control-label" Style="font-size:x-small " >
                                        رسوم حكومية إضافية
                                    </label>
                                    <asp:TextBox ID="TextBoxAddFees" OnTextChanged="DropDownListLoyalty_SelectedIndexChanged" AutoPostBack="true" ClientIDMode="Static" Text="0.00" CssClass="form-control" BorderColor="Gray" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-md-2 form-group">
                                    <label class="control-label" Style="font-size:x-small " >
                                        ملاحظات  
                                    </label>
                                    <asp:TextBox ID="TextBoxAdditionalNotes" BorderColor="Gray" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        تاريخ خصم الرسوم الحكومية                              
                                    </label>
                                    <asp:TextBox ID="TextBoxGovDate" ReadOnly="true" BackColor="White" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>


                               
                               
                            </div>
                            <div class="col-md-12">
                                  <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        بطاقة الولاء
                                    </label>
                                    <asp:DropDownList ID="DropDownListLoyalty" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="DropDownListLoyalty_SelectedIndexChanged" Style="padding: 0px" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        نسبة الخصم (%) 
                                    </label>
                                    <asp:TextBox ID="TextBoxPer" Text="0" onchange="Calculate()" ReadOnly="true" ClientIDMode="Static" BackColor="White" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                
                                <div class="col-md-2 form-group">
                                    <label class="control-label" Style="font-size:x-small " >
                                        رسوم داخلية إضافية
                                    </label>
                                    <asp:TextBox ID="TextBoxInternalFees" OnTextChanged="DropDownListLoyalty_SelectedIndexChanged" AutoPostBack="true" ClientIDMode="Static" Text="0.00" CssClass="form-control" BorderColor="Gray" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-md-2 form-group">
                                    <label class="control-label" Style="font-size:x-small " >
                                        ملاحظات  
                                    </label>
                                    <asp:TextBox ID="TextBoxInternalNotes" BorderColor="Gray" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        تاريخ دفع المتعامل                              
                                    </label>
                                    <asp:TextBox ID="TextBoxCompletedDate" ReadOnly="true" BackColor="White" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                             
                                
                            </div>
                            <div class="col-md-12">
                                 <div class="col-md-3 form-group">
                                    <label class="control-label" style="font-weight: bold">
                                        المتعامل
                                    </label>
                                    <asp:Label runat="server" CssClass="form-control" ID="LabelClient"></asp:Label>
                                </div>
                              
                                <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        رقم الموبايل                                   
                                    </label>
                                    <asp:Label ID="LabelMobile" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                

                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        إجمالي الرسوم
                                    </label>
                                    <asp:TextBox ID="TextBoxotalFees" BackColor="White" ClientIDMode="Static" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        المدفوع
                                    </label>
                                    <asp:TextBox ID="TextBoxPaid" OnTextChanged="DropDownListLoyalty_SelectedIndexChanged" AutoPostBack="true" BackColor="White" CssClass="form-control" ClientIDMode="Static" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        المتبقي
                                    </label>
                                    <asp:TextBox ID="TextBoxRemain" BackColor="White" CssClass="form-control" ClientIDMode="Static" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                                

                            </div>
                            <div class="col-md-12">
                               
                                <%--  <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        البريد الالكتروني
                                    </label>
                                    <asp:Label ID="LabelMail" CssClass="form-control" runat="server"></asp:Label>
                                </div>--%>
                                 <div class="col-md-3 form-group">
                                    <label class="control-label">
                                        الموظف الحالي                             
                                    </label>
                                    <asp:Label ID="LabelEmp" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                  <div class="col-md-3 form-group">
                                    <label class="control-label" style="font-weight: bold">
                                        مسؤول المبيعات
                                    </label>
                                    <asp:TextBox runat="server" BackColor="White" CssClass="form-control" ClientIDMode="Static" ID="TextBoxSales"></asp:TextBox>
                                </div>
                                 <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        حالة المعاملة                              
                                    </label>
                                    <asp:Label ID="LabelStatus" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                   <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        حالة الدفع
                                    </label>
                                    <asp:Label ID="LabelPaymentStatus" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                 <div class="col-md-2 form-group">
                                    <label class="control-label">
                                        الدفع بواسطة
                                    </label>
                                    <asp:DropDownList ID="DropDownListPayByLabel" Enabled="false" Style="padding: 0px"  CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>


                            </div>
                         

                            <div class="col-md-12">
                                <asp:Repeater ID="RepeaterAtt" runat="server">
                                    <ItemTemplate>
                                        <div class="col-md-12 form-group">
                                            <li><a href="FileHandler.ashx?t=TransactionAttach&id=<%# Eval("ID") %>&n=<%# Eval("FileName") %>" target="_blank"><%# Eval("FileName") %></a>

                                                <%--                                                                                 
                                         <a  data-toggle="modal" href="#myModal<%# Eval( "ID") %>">

                                                <image  src="images/DeleteRed.png" style="width:20px"></image>
                                            </a> </li>

                                            <!-- Modal -->
                                            <div class="modal fade" id="myModal<%# Eval( "ID") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title" style="font-family: cairo">هل انت متاكد من اجراء حذف المرفق؟</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            سيتم حذف هذا المرفق ولا يمكن الرجوع عن هذا الإجراء.

                                                        </div>
                                                        <div class="modal-footer">
                                                            <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                                                           <asp:Button  ClientIDMode="Static"    CssClass="btn btn-danger"  ID="Button2" runat="server"  Text="حذف"  CommandName="delete" CommandArgument='<%# Eval("ID") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- modal --> --%>

                                            </li>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </section>
        </div>

        <asp:Panel ID="PanelAtt" runat="server" Visible="false">
            <div class="col-md-12 form-group">
                <div class="col-md-12">
                    <label class="control-label">
                        المرفقات
                    </label>
                </div>
                <asp:Panel ID="PanelAttach" runat="server" ClientIDMode="Static">

                    <div class="col-md-10">
                        <select size="1" id="source" style="position: relative; width: 220px; display: none"></select>

                        <input type="button" value="الماسح الضوئي" onclick="AcquireImage();" class="btn btn-primary" />
                        <input type="button" value="تعديل" onclick="ShowImageEditor();" class="btn btn-info" />
                        <input type="button" value="تحميل" onclick="UploadImage();" class="btn btn-primary" />
                        <%--                            <asp:Button   runat="server" id="btnupload"   Text="تحميل" OnClientClick="UploadImage();" CssClass="btn btn-primary"  />--%>

                        <div id="upload">
                            <div id="drop">
                                اسحب
                                <a>إستعراض</a>
                                <asp:FileUpload runat="server" ID="UploadImages" ClientIDMode="Static" AllowMultiple="true" />
                            </div>

                            <ul>
                            </ul>

                        </div>

                    </div>
                    <div class="col-md-2">
                        <div id="dwtcontrolContainer"></div>

                    </div>
                </asp:Panel>


            </div>
        </asp:Panel>
        <div class="col-md-12">

            <a runat="server" id="btnPay" visible="false"  data-toggle="modal" href="#myModal15" class="btn btn-saeed">الدفع</a>

            <!-- Modal -->
            <div class="modal fade" id="myModal15" tabindex="-1" style="min-height: 400px" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" style="font-family: cairo">الدفع</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                       
                                        <div class="col-md-6 form-group">
                                            <label class="control-label" id="lblgov" runat="server" >
                                                إجمالي الرسوم الحكومية 
                                            </label>
                                            <asp:TextBox ID="TextBoxTotalGovFees" BackColor="White" ClientIDMode="Static" ReadOnly="true"  CssClass="form-control" runat="server" placeholder="0.0"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6 form-group"  >
                                            <label class="control-label" id="lblby" runat="server">
                                                الدفع بواسطة
                                            </label>
                                            <asp:DropDownList ID="DropDownListPayby" OnSelectedIndexChanged="DropDownListPayby_SelectedIndexChanged" AutoPostBack="true" ClientIDMode="Static" CssClass="form-control" runat="server" Style="padding: 0px">
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label class="control-label">
                                                المبلغ المستحق                     
                                            </label>
                                            <asp:TextBox ID="TextBoxAmountReq" BackColor="White" ClientIDMode="Static" ReadOnly="true"  CssClass="form-control" runat="server" placeholder="0.0"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label class="control-label">
                                                طريقة الدفع
                                            </label>
                                            <asp:DropDownList ID="DropDownListPayMethod" OnSelectedIndexChanged="DropDownListPayMethod_SelectedIndexChanged" AutoPostBack="true" ClientIDMode="Static" CssClass="form-control" runat="server" Style="padding: 0px">
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label class="control-label">
                                                المبلغ المدفوع                     
                                            </label>
                                            <asp:TextBox ID="txtAmount" CssClass="form-control" runat="server" placeholder="0.0"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label class="control-label" id="lnlrec" visible="false"  runat="server" >
                                                رقم إيصال الدفع
                                            </label>
                                            <asp:TextBox ID="txtRecNo" Visible="false"  CssClass="form-control" runat="server" placeholder="XXXXX"></asp:TextBox>
                                            <asp:HiddenField ID="HiddenRecNo" runat="server" />
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="col-md-12 form-group">

                                <div class="form-group last" style="margin-bottom: 5px">
                                    <label class="control-label  col-md-3">صورة الايصال</label>
                                    <div class="col-md-9">
                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                            <div class="fileupload-new thumbnail" style="float: left; width: 100px; height: 100px;">
                                                <img src="images/image.png" alt="" />
                                            </div>
                                            <div class="fileupload-preview fileupload-exists thumbnail" style="float: left; max-width: 100px; max-height: 100px; line-height: 20px;"></div>
                                            <div>
                                                <span class="btn btn-white btn-file">
                                                    <span class="fileupload-new"><i class="fa fa-camera"></i></span>
                                                    <span class="fileupload-exists"><i class="fa fa-undo"></i></span>
                                                    <asp:FileUpload runat="server" ID='FileUploadRec' ClientIDMode="Static"  AllowMultiple="false" />

                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button CssClass="btn btn-saeed" ID="ButtonPay" OnClientClick="this.disable" runat="server" Text="تم الدفع" OnClick="ButtonPay_Click" />
                            <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal -->


            <a runat="server" id="btnFinish" visible="false"    data-toggle="modal" href="#myModal3" class="btn btn-saeed">حفظ البيانات  </a>

            <!-- Modal -->
            <div class="modal fade" id="myModal3" tabindex="-1" style="min-height: 450px" role="dialog" aria-labelledby="myModal2Label" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" style="font-family: cairo">إضافة ملاحظات</h4>
                        </div>
                        <div class="modal-body" style="height: 100px">

                            <div class="col-md-12 form-group">
                                <label class="control-label">
                                    الملاحظات
                                </label>
                                <asp:TextBox ID="TextBoxNotes" Rows="4" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="buttonFinish"  CssClass="btn btn-saeed" OnClientClick="this.disable" Text="حفظ " runat="server" OnClick="buttonFinish_Click" />
                            <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal -->

            <a runat="server" id="BtnCorrect" visible="false" data-toggle="modal" href="#myModal13" class="btn btn-saeed">حفظ التعديلات  </a>

            <!-- Modal -->
            <div class="modal fade" id="myModal13" tabindex="-1" style="min-height: 450px" role="dialog" aria-labelledby="myModal2Label" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" style="font-family: cairo">إضافة ملاحظات</h4>
                        </div>
                        <div class="modal-body" style="height: 100px">

                            <div class="col-md-12 form-group">
                                <label class="control-label">
                                    الملاحظات
                                </label>
                                <asp:TextBox ID="TextBoxCorrectNotes" Rows="4" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="buttonCorrect" CssClass="btn btn-saeed" OnClientClick="this.disable" Text=" حفظ التعديلات" runat="server" OnClick="buttonCorrect_Click" />
                            <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal -->

                        <asp:Button ID="buttonSave" Visible="false" CssClass="btn btn-saeed" Text="حفظ البيانات" runat="server" OnClick="buttonSave_Click" />


            <asp:Button ID="buttonAssign" Visible="false" CssClass="btn btn-success" Text="استلام المعاملة" runat="server" OnClick="buttonAssign_Click" />

            <a runat="server" id="btnDisapprove" visible="false" data-toggle="modal" href="#myModal4" class="btn btn-danger">رفض المعاملة  </a>
            <a runat="server" id="btnBack" visible="false" href="TransactionsList.aspx" class="btn btn-saeed">رجوع   </a>

            <!-- Modal -->
            <div class="modal fade" id="myModal4" tabindex="-1" style="min-height: 450px" role="dialog" aria-labelledby="myModal2Label" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" style="font-family: cairo">سبب الرفض</h4>
                        </div>
                        <div class="modal-body" style="height: 100px">

                            <div class="col-md-12 form-group">
                                <label class="control-label">
                                    الملاحظات
                                </label>
                                <asp:TextBox ID="TextBoxDisNotes" Rows="4" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="buttonDisapprove" CssClass="btn btn-saeed" OnClientClick="this.disable" Text="رفض المعاملة" runat="server" OnClick="buttonDisapprove_Click" />
                            <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal -->


           <%-- <a runat="server" id="btnForPRO" visible="false" data-toggle="modal" href="#myModal" class="btn btn-saeed">ارسال للتخليص الخارجي  </a>

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" style="min-height: 450px" role="dialog" aria-labelledby="myModal2Label" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" style="font-family: cairo">إضافة ملاحظات</h4>
                        </div>
                        <div class="modal-body" style="height: 100px">

                            <div class="col-md-12 form-group">
                                <label class="control-label">
                                    الملاحظات
                                </label>
                                <asp:TextBox ID="TextBoxNotes2" Rows="4" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="buttonForPRO" CssClass="btn btn-saeed" OnClientClick="this.disable" Text="ارسال للتخليص الخارجي" runat="server" OnClick="buttonForPRO_Click" />
                            <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal -->--%>


                <a runat="server" id="btnAForEdit" visible="false" data-toggle="modal" href="#myModal6" class="btn btn-danger">فتح للتصحيح </a>

                <!-- Modal -->
                <div class="modal fade" id="myModal6" tabindex="-1" style="min-height: 450px" role="dialog" aria-labelledby="myModal2Label" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" style="font-family: cairo">سبب التعديل </h4>
                            </div>
                            <div class="modal-body" style="height: 100px">


                                <div class="col-md-12 form-group">
                                    <label class="control-label">
                                        الملاحظات
                                    </label>
                                    <asp:TextBox ID="TextBoxEditNotes" Rows="4" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="ButtonEdit" CssClass="btn btn-saeed" OnClick="ButtonEdit_Click" runat="server" Text="ارسال " />
                                <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- modal -->
               

                <a id="btnPrint" runat="server" visible="false" data-toggle="modal" href="#myModal2" class="btn btn-primary">طباعة المعاملة </a>

                <!-- Modal -->
                <div class="modal fade" id="myModal2" tabindex="-1" style="min-height: 400px" role="dialog" aria-labelledby="myModal2Label" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" style="font-family: cairo">مرفقات المعاملة</h4>
                            </div>
                            <div class="modal-body">
                                <div class="col-md-12">

                                    <div class="col-md-12 form-group">
                                        <ol>
                                            <asp:Repeater ID="RepeaterTranAtt" runat="server">
                                                <ItemTemplate>
                                                    <li><a href="FileHandler.ashx?t=TransactionAttach&id=<%# Eval("ID") %>&n=<%# Eval("FileName") %>" target="_blank"><%# Eval("FileName") %></a>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- modal -->
                <asp:Panel ID="Pnlinvoice" runat="server" Visible="false" Style="display: inline">
                    <a id="btnInvoice" class="btn btn-info" href='Invoice.aspx?id=<%= Request.QueryString["id"] %>' target="_blank">طباعة الفاتورة</a>
                </asp:Panel>
        </div>
    </div>

    <div style="margin-bottom: 20px">
    </div>
    <div runat="server" id="divHistory" visible="false" class="row">
        <div class="col-sm-12">
            <section class="panel">
                <header class="panel-heading">
                    حركة المعاملة
                    <span class="tools pull-left">
                        <a href="javascript:;" class="fa fa-chevron-up"></a>

                    </span>
                </header>
                <div class="panel-body">
                    <asp:Repeater ID="RepeaterHistory" runat="server">
                        <ItemTemplate>

                            <div class=" wk-progress tm-membr">
                                <div class="col-md-2 col-xs-4">
                                    <strong><%# Convert.ToDateTime( Eval("ActionDate")) %></strong>
                                </div>
                                <div class="col-md-1 col-xs-1">
                                    <div class="tm-avatar">
                                        <img src="<%# Eval( "ActionByEmpID")!=null? "PicHandler.ashx?t=Employee&id="+ Eval( "ActionByEmpID").ToString():" " %>" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-3 col-xs-4">
                                    <span class="tm"><%# Eval("ActionBy") %></span>
                                </div>
                                <div class="col-md-2 col-xs-3">
                                    <span class="label label-<%#(Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.بالانتظار || Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.مرفوضة)? "danger" : (Convert.ToInt32(Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.مخصصة ||Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.جاهزة_للتخليص_الخارجي  ||Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.بالتصحيح) ? "warning" : ( Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.بالتنفيذ|| Convert.ToInt32(  Eval("StatusID"))==(int)SAEED.BLL.TransactionStatusList.بالتخليص_الخارجي )?"inverse":( Convert.ToInt32( Eval("StatusID"))==(int)SAEED.BLL.TransactionStatusList.جاهزة_للاستلام  || Convert.ToInt32( Eval("StatusID")) == (int)SAEED.BLL.TransactionStatusList.مؤرشفة)?"info":"success"%> label-mini"><%# Eval("ActionStatus").ToString() %></span>
                                </div>
                                <div class="col-md-2 col-xs-2">
                                    <span class="tm"><%# Eval("Notes") %></span>
                                </div>
                                <%--   <div class="col-md-2 col-xs-2">
                                    <span class="tm"><%# TimeSpan.FromTicks(Convert.ToInt64( Eval("Duration"))).Hours.ToString("00") +":"+TimeSpan.FromTicks(Convert.ToInt64( Eval("Duration"))).Minutes.ToString("00")  %>  </span>
                                </div>--%>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
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

    <script src="js/bootstrap-switch.js"></script>

    <script type="text/javascript">

        function Calculate() {

            $("#TextBoxotalFees").val(parseFloat($('#TextBoxInternalFees').val()) * .05 + parseFloat($('#TextBoxInternalFees').val()) + parseFloat($('#TextBoxAddFees').val()) + parseFloat($('#TextBoxPrintingFees').val()) * .05 + parseFloat($('#TextBoxPrintingFees').val()) + parseFloat($('#TextBoxCenterFees').val()) * .05 + parseFloat($('#TextBoxCenterFees').val()) + parseFloat($('#TextBoxGovFees').val()) - ((parseFloat($('#TextBoxCenterFees').val()) + parseFloat($('#TextBoxInternalFees').val()) * parseFloat($('#TextBoxPer').val()) / 100)));
            $("#TextBoxRemain").val(parseFloat($('#TextBoxotalFees').val()) - parseFloat($('#TextBoxPaid').val()));


            $("#TextBoxTotalGovFees").val(parseFloat($('#TextBoxGovFees').val() + parseFloat($('#TextBoxAddFees').val()
        }
    </script>

    <script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-daterangepicker/moment.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>

    <script type="text/javascript" src="js/jquery-multi-select/js/jquery.multi-select.js"></script>
    <script type="text/javascript" src="js/jquery-multi-select/js/jquery.quicksearch.js"></script>

    <script type="text/javascript" src="js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>

    <script src="js/jquery-tags-input/jquery.tagsinput.js"></script>

    <script src="js/select2/select2.js"></script>
    <script src="js/select-init.js"></script>

    <%--    <script src="js/advanced-form.js"></script>--%>
    <script src="js/mini-upload-form/assets/js/jquery.knob.js"></script>

    <!-- jQuery File Upload Dependencies -->
    <script src="js/mini-upload-form/assets/js/jquery.ui.widget.js"></script>
    <script src="js/mini-upload-form/assets/js/jquery.iframe-transport.js"></script>
    <script src="js/mini-upload-form/assets/js/jquery.fileupload.js"></script>

    <!-- Our main JS file -->
   <script src="js/mini-upload-form/assets/js/script.js"></script>

    <!--common script init for all pages-->
    <script src="js/scripts.js"></script>

    <script src="js/toggle-init.js"></script>

    <script type="text/javascript" src="Resources/dynamsoft.webtwain.initiate.js"> </script>
    <script type="text/javascript" src="Resources/dynamsoft.webtwain.config.js"> </script>

    <script type="text/javascript" src="js/scanner.js"> </script>
    <script src="js/notifi.js" type="text/javascript"></script>

</asp:Content>

