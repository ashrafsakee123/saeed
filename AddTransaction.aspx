<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="AddTransaction.aspx.cs" Inherits="SAEED.WebPL.AddTransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="hjs" runat="server">
    <!--Core CSS -->
    <link rel="stylesheet" type="text/css" href="js/select2/select2.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="hide" id="ErrorDiv" runat="server">
            <asp:Label ID="LabelError" runat="server"></asp:Label>
        </div>
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    بيانات المتعامل                        

                        <span class="tools pull-left">
                            <a href="javascript:;" class="fa fa-chevron-up"></a>
                        </span>
                </header>
                <div class="panel-body">
                    <asp:UpdatePanel ID="upc" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="col-md-12">
                                <div class="col-md-12 form-group">
                                    <label class="control-label">
                                        المتعامل
                                    </label>
                                    <asp:DropDownList ID="e1" runat="server" AutoPostBack="true" ClientIDMode="Static" CssClass="form-control" Style="padding: 0px" OnSelectedIndexChanged="e1_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:HiddenField ID="HiddenFieldClientID" runat="server" Value="0" />
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        كود المتعامل
                                    </label>
                                    <asp:TextBox ID="TextBoxCode" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        اسم المتعامل
                                    </label>
                                    <asp:TextBox ID="TextBoxName" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        رقم الموبايل                                   
                                    </label>
                                    <asp:TextBox ID="TextBoxMobile" placeholder="05XXXXXXXX" TextMode="Number"  CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        البريد الالكتروني
                                    </label>
                                    <asp:TextBox ID="TextBoxMail" TextMode="Email" placeholder="email@domain.com"  CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        الجنسية                                 
                                    </label>
                                    <asp:DropDownList ID="e2" runat="server" ClientIDMode="Static" CssClass="form-control" Style="padding: 0px">
                                        <asp:ListItem Value="الإمارات العربية المتحدة">الإمارات العربية المتحدة</asp:ListItem>
                                        <asp:ListItem Value="أفغانستان">أفغانستان</asp:ListItem>
                                        <asp:ListItem Value="ألبانيا">ألبانيا</asp:ListItem>
                                        <asp:ListItem Value="الجزائر">الجزائر</asp:ListItem>
                                        <asp:ListItem Value="أندورا">أندورا</asp:ListItem>
                                        <asp:ListItem Value="أنغولا">أنغولا</asp:ListItem>
                                        <asp:ListItem Value="أنتيغوا وباربودا">أنتيغوا وباربودا</asp:ListItem>
                                        <asp:ListItem Value="الأرجنتين">الأرجنتين</asp:ListItem>
                                        <asp:ListItem Value="أرمينيا">أرمينيا</asp:ListItem>
                                        <asp:ListItem Value="أستراليا">أستراليا</asp:ListItem>
                                        <asp:ListItem Value="النمسا">النمسا</asp:ListItem>
                                        <asp:ListItem Value="أذربيجان">أذربيجان</asp:ListItem>
                                        <asp:ListItem Value="البهاما">البهاما</asp:ListItem>
                                        <asp:ListItem Value="البحرين">البحرين</asp:ListItem>
                                        <asp:ListItem Value="بنغلاديش">بنغلاديش</asp:ListItem>
                                        <asp:ListItem Value="باربادوس">باربادوس</asp:ListItem>
                                        <asp:ListItem Value="بيلاروسيا">بيلاروسيا</asp:ListItem>
                                        <asp:ListItem Value="بلجيكا">بلجيكا</asp:ListItem>
                                        <asp:ListItem Value="بليز">بليز</asp:ListItem>
                                        <asp:ListItem Value="بنين">بنين</asp:ListItem>
                                        <asp:ListItem Value="بوتان">بوتان</asp:ListItem>
                                        <asp:ListItem Value="بوليفيا">بوليفيا</asp:ListItem>
                                        <asp:ListItem Value="البوسنة والهرسك ">البوسنة والهرسك </asp:ListItem>
                                        <asp:ListItem Value="بوتسوانا">بوتسوانا</asp:ListItem>
                                        <asp:ListItem Value="البرازيل">البرازيل</asp:ListItem>
                                        <asp:ListItem Value="بروناي">بروناي</asp:ListItem>
                                        <asp:ListItem Value="بلغاريا">بلغاريا</asp:ListItem>
                                        <asp:ListItem Value="بوركينا فاسو ">بوركينا فاسو </asp:ListItem>
                                        <asp:ListItem Value="بوروندي">بوروندي</asp:ListItem>
                                        <asp:ListItem Value="كمبوديا">كمبوديا</asp:ListItem>
                                        <asp:ListItem Value="الكاميرون">الكاميرون</asp:ListItem>
                                        <asp:ListItem Value="كندا">كندا</asp:ListItem>
                                        <asp:ListItem Value="الرأس الأخضر">الرأس الأخضر</asp:ListItem>
                                        <asp:ListItem Value="جمهورية أفريقيا الوسطى ">جمهورية أفريقيا الوسطى </asp:ListItem>
                                        <asp:ListItem Value="تشاد">تشاد</asp:ListItem>
                                        <asp:ListItem Value="تشيلي">تشيلي</asp:ListItem>
                                        <asp:ListItem Value="الصين">الصين</asp:ListItem>
                                        <asp:ListItem Value="كولومبيا">كولومبيا</asp:ListItem>
                                        <asp:ListItem Value="جزر القمر">جزر القمر</asp:ListItem>
                                        <asp:ListItem Value="كوستاريكا">كوستاريكا</asp:ListItem>
                                        <asp:ListItem Value="ساحل العاج">ساحل العاج</asp:ListItem>
                                        <asp:ListItem Value="كرواتيا">كرواتيا</asp:ListItem>
                                        <asp:ListItem Value="كوبا">كوبا</asp:ListItem>
                                        <asp:ListItem Value="قبرص">قبرص</asp:ListItem>
                                        <asp:ListItem Value="التشيك">التشيك</asp:ListItem>
                                        <asp:ListItem Value="جمهورية الكونغو الديمقراطية">جمهورية الكونغو الديمقراطية</asp:ListItem>
                                        <asp:ListItem Value="الدنمارك">الدنمارك</asp:ListItem>
                                        <asp:ListItem Value="جيبوتي">جيبوتي</asp:ListItem>
                                        <asp:ListItem Value="دومينيكا">دومينيكا</asp:ListItem>
                                        <asp:ListItem Value="جمهورية الدومينيكان">جمهورية الدومينيكان</asp:ListItem>
                                        <asp:ListItem Value="تيمور الشرقية ">تيمور الشرقية </asp:ListItem>
                                        <asp:ListItem Value="الإكوادور">الإكوادور</asp:ListItem>
                                        <asp:ListItem Value="مصر">مصر</asp:ListItem>
                                        <asp:ListItem Value="السلفادور">السلفادور</asp:ListItem>
                                        <asp:ListItem Value="غينيا الاستوائية">غينيا الاستوائية</asp:ListItem>
                                        <asp:ListItem Value="إريتريا">إريتريا</asp:ListItem>
                                        <asp:ListItem Value="إستونيا">إستونيا</asp:ListItem>
                                        <asp:ListItem Value="إثيوبيا">إثيوبيا</asp:ListItem>
                                        <asp:ListItem Value="فيجي">فيجي</asp:ListItem>
                                        <asp:ListItem Value="فنلندا">فنلندا</asp:ListItem>
                                        <asp:ListItem Value="فرنسا">فرنسا</asp:ListItem>
                                        <asp:ListItem Value="الغابون">الغابون</asp:ListItem>
                                        <asp:ListItem Value="غامبيا">غامبيا</asp:ListItem>
                                        <asp:ListItem Value="جورجيا">جورجيا</asp:ListItem>
                                        <asp:ListItem Value="ألمانيا">ألمانيا</asp:ListItem>
                                        <asp:ListItem Value="غانا">غانا</asp:ListItem>
                                        <asp:ListItem Value="اليونان">اليونان</asp:ListItem>
                                        <asp:ListItem Value="جرينادا">جرينادا</asp:ListItem>
                                        <asp:ListItem Value="غواتيمالا">غواتيمالا</asp:ListItem>
                                        <asp:ListItem Value="غينيا">غينيا</asp:ListItem>
                                        <asp:ListItem Value="غينيا بيساو">غينيا بيساو</asp:ListItem>
                                        <asp:ListItem Value="غويانا">غويانا</asp:ListItem>
                                        <asp:ListItem Value="هايتي">هايتي</asp:ListItem>
                                        <asp:ListItem Value="هندوراس">هندوراس</asp:ListItem>
                                        <asp:ListItem Value="المجر">المجر</asp:ListItem>
                                        <asp:ListItem Value="آيسلندا">آيسلندا</asp:ListItem>
                                        <asp:ListItem Value="الهند">الهند</asp:ListItem>
                                        <asp:ListItem Value="إندونيسيا">إندونيسيا</asp:ListItem>
                                        <asp:ListItem Value="إيران">إيران</asp:ListItem>
                                        <asp:ListItem Value="العراق">العراق</asp:ListItem>
                                        <asp:ListItem Value="جمهورية أيرلندا ">جمهورية أيرلندا </asp:ListItem>
                                        <asp:ListItem Value="فلسطين">فلسطين</asp:ListItem>
                                        <asp:ListItem Value="إيطاليا">إيطاليا</asp:ListItem>
                                        <asp:ListItem Value="جامايكا">جامايكا</asp:ListItem>
                                        <asp:ListItem Value="اليابان">اليابان</asp:ListItem>
                                        <asp:ListItem Value="الأردن">الأردن</asp:ListItem>
                                        <asp:ListItem Value="كازاخستان">كازاخستان</asp:ListItem>
                                        <asp:ListItem Value="كينيا">كينيا</asp:ListItem>
                                        <asp:ListItem Value="كيريباتي">كيريباتي</asp:ListItem>
                                        <asp:ListItem Value="الكويت">الكويت</asp:ListItem>
                                        <asp:ListItem Value="قرغيزستان">قرغيزستان</asp:ListItem>
                                        <asp:ListItem Value="لاوس">لاوس</asp:ListItem>
                                        <asp:ListItem Value="لاتفيا">لاتفيا</asp:ListItem>
                                        <asp:ListItem Value="لبنان">لبنان</asp:ListItem>
                                        <asp:ListItem Value="ليسوتو">ليسوتو</asp:ListItem>
                                        <asp:ListItem Value="ليبيريا">ليبيريا</asp:ListItem>
                                        <asp:ListItem Value="ليبيا">ليبيا</asp:ListItem>
                                        <asp:ListItem Value="ليختنشتاين">ليختنشتاين</asp:ListItem>
                                        <asp:ListItem Value="ليتوانيا">ليتوانيا</asp:ListItem>
                                        <asp:ListItem Value="لوكسمبورغ">لوكسمبورغ</asp:ListItem>
                                        <asp:ListItem Value="مدغشقر">مدغشقر</asp:ListItem>
                                        <asp:ListItem Value="مالاوي">مالاوي</asp:ListItem>
                                        <asp:ListItem Value="ماليزيا">ماليزيا</asp:ListItem>
                                        <asp:ListItem Value="جزر المالديف">جزر المالديف</asp:ListItem>
                                        <asp:ListItem Value="مالي">مالي</asp:ListItem>
                                        <asp:ListItem Value="مالطا">مالطا</asp:ListItem>
                                        <asp:ListItem Value="جزر مارشال">جزر مارشال</asp:ListItem>
                                        <asp:ListItem Value="موريتانيا">موريتانيا</asp:ListItem>
                                        <asp:ListItem Value="موريشيوس">موريشيوس</asp:ListItem>
                                        <asp:ListItem Value="المكسيك">المكسيك</asp:ListItem>
                                        <asp:ListItem Value="مايكرونيزيا">مايكرونيزيا</asp:ListItem>
                                        <asp:ListItem Value="مولدوفا">مولدوفا</asp:ListItem>
                                        <asp:ListItem Value="موناكو">موناكو</asp:ListItem>
                                        <asp:ListItem Value="منغوليا">منغوليا</asp:ListItem>
                                        <asp:ListItem Value="الجبل الأسود">الجبل الأسود</asp:ListItem>
                                        <asp:ListItem Value="المغرب">المغرب</asp:ListItem>
                                        <asp:ListItem Value="موزمبيق">موزمبيق</asp:ListItem>
                                        <asp:ListItem Value="بورما">بورما</asp:ListItem>
                                        <asp:ListItem Value="ناميبيا">ناميبيا</asp:ListItem>
                                        <asp:ListItem Value="ناورو">ناورو</asp:ListItem>
                                        <asp:ListItem Value="نيبال">نيبال</asp:ListItem>
                                        <asp:ListItem Value="هولندا">هولندا</asp:ListItem>
                                        <asp:ListItem Value="نيوزيلندا">نيوزيلندا</asp:ListItem>
                                        <asp:ListItem Value="نيكاراجوا">نيكاراجوا</asp:ListItem>
                                        <asp:ListItem Value="النيجر">النيجر</asp:ListItem>
                                        <asp:ListItem Value="نيجيريا">نيجيريا</asp:ListItem>
                                        <asp:ListItem Value="كوريا الشمالية ">كوريا الشمالية </asp:ListItem>
                                        <asp:ListItem Value="النرويج">النرويج</asp:ListItem>
                                        <asp:ListItem Value="سلطنة عمان">سلطنة عمان</asp:ListItem>
                                        <asp:ListItem Value="باكستان">باكستان</asp:ListItem>
                                        <asp:ListItem Value="بالاو">بالاو</asp:ListItem>
                                        <asp:ListItem Value="بنما">بنما</asp:ListItem>
                                        <asp:ListItem Value="بابوا غينيا الجديدة">بابوا غينيا الجديدة</asp:ListItem>
                                        <asp:ListItem Value="باراغواي">باراغواي</asp:ListItem>
                                        <asp:ListItem Value="بيرو">بيرو</asp:ListItem>
                                        <asp:ListItem Value="الفلبين">الفلبين</asp:ListItem>
                                        <asp:ListItem Value="بولندا">بولندا</asp:ListItem>
                                        <asp:ListItem Value="البرتغال">البرتغال</asp:ListItem>
                                        <asp:ListItem Value="قطر">قطر</asp:ListItem>
                                        <asp:ListItem Value="جمهورية الكونغو">جمهورية الكونغو</asp:ListItem>
                                        <asp:ListItem Value="جمهورية مقدونيا">جمهورية مقدونيا</asp:ListItem>
                                        <asp:ListItem Value="رومانيا">رومانيا</asp:ListItem>
                                        <asp:ListItem Value="روسيا">روسيا</asp:ListItem>
                                        <asp:ListItem Value="رواندا">رواندا</asp:ListItem>
                                        <asp:ListItem Value="سانت كيتس ونيفيس">سانت كيتس ونيفيس</asp:ListItem>
                                        <asp:ListItem Value="سانت لوسيا">سانت لوسيا</asp:ListItem>
                                        <asp:ListItem Value="سانت فنسينت والجرينادينز">سانت فنسينت والجرينادينز</asp:ListItem>
                                        <asp:ListItem Value="ساموا">ساموا</asp:ListItem>
                                        <asp:ListItem Value="سان مارينو">سان مارينو</asp:ListItem>
                                        <asp:ListItem Value="ساو تومي وبرينسيب">ساو تومي وبرينسيب</asp:ListItem>
                                        <asp:ListItem Value="السعودية">السعودية</asp:ListItem>
                                        <asp:ListItem Value="السنغال">السنغال</asp:ListItem>
                                        <asp:ListItem Value="صربيا">صربيا</asp:ListItem>
                                        <asp:ListItem Value="سيشيل">سيشيل</asp:ListItem>
                                        <asp:ListItem Value="سيراليون">سيراليون</asp:ListItem>
                                        <asp:ListItem Value="سنغافورة">سنغافورة</asp:ListItem>
                                        <asp:ListItem Value="سلوفاكيا">سلوفاكيا</asp:ListItem>
                                        <asp:ListItem Value="سلوفينيا">سلوفينيا</asp:ListItem>
                                        <asp:ListItem Value="جزر سليمان">جزر سليمان</asp:ListItem>
                                        <asp:ListItem Value="الصومال">الصومال</asp:ListItem>
                                        <asp:ListItem Value="جنوب أفريقيا">جنوب أفريقيا</asp:ListItem>
                                        <asp:ListItem Value="كوريا الجنوبية">كوريا الجنوبية</asp:ListItem>
                                        <asp:ListItem Value="جنوب السودان">جنوب السودان</asp:ListItem>
                                        <asp:ListItem Value="إسبانيا">إسبانيا</asp:ListItem>
                                        <asp:ListItem Value="سريلانكا">سريلانكا</asp:ListItem>
                                        <asp:ListItem Value="السودان">السودان</asp:ListItem>
                                        <asp:ListItem Value="سورينام">سورينام</asp:ListItem>
                                        <asp:ListItem Value="سوازيلاند">سوازيلاند</asp:ListItem>
                                        <asp:ListItem Value="السويد">السويد</asp:ListItem>
                                        <asp:ListItem Value="سويسرا">سويسرا</asp:ListItem>
                                        <asp:ListItem Value="سوريا">سوريا</asp:ListItem>
                                        <asp:ListItem Value="طاجيكستان">طاجيكستان</asp:ListItem>
                                        <asp:ListItem Value="تنزانيا">تنزانيا</asp:ListItem>
                                        <asp:ListItem Value="تايلاند">تايلاند</asp:ListItem>
                                        <asp:ListItem Value="توغو">توغو</asp:ListItem>
                                        <asp:ListItem Value="تونجا">تونجا</asp:ListItem>
                                        <asp:ListItem Value="ترينيداد وتوباغو">ترينيداد وتوباغو</asp:ListItem>
                                        <asp:ListItem Value="تونس">تونس</asp:ListItem>
                                        <asp:ListItem Value="تركيا">تركيا</asp:ListItem>
                                        <asp:ListItem Value="تركمانستان">تركمانستان</asp:ListItem>
                                        <asp:ListItem Value="توفالو">توفالو</asp:ListItem>
                                        <asp:ListItem Value="أوغندا">أوغندا</asp:ListItem>
                                        <asp:ListItem Value="أوكرانيا">أوكرانيا</asp:ListItem>
                                        <asp:ListItem Value="الإمارات العربية المتحدة">الإمارات العربية المتحدة</asp:ListItem>
                                        <asp:ListItem Value="المملكة المتحدة">المملكة المتحدة</asp:ListItem>
                                        <asp:ListItem Value="الولايات المتحدة">الولايات المتحدة</asp:ListItem>
                                        <asp:ListItem Value="أوروغواي">أوروغواي</asp:ListItem>
                                        <asp:ListItem Value="أوزبكستان">أوزبكستان</asp:ListItem>
                                        <asp:ListItem Value="فانواتو">فانواتو</asp:ListItem>
                                        <asp:ListItem Value="فنزويلا">فنزويلا</asp:ListItem>
                                        <asp:ListItem Value="فيتنام">فيتنام</asp:ListItem>
                                        <asp:ListItem Value="اليمن">اليمن</asp:ListItem>
                                        <asp:ListItem Value="زامبيا">زامبيا</asp:ListItem>
                                        <asp:ListItem Value="زيمبابوي">زيمبابوي</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        النوع
                                    </label>
                                    <asp:DropDownList runat="server" ID="DropDownListGender" AutoPostBack="true" ClientIDMode="Static" CssClass="form-control" Style="padding: 0px">
                                        <asp:ListItem>ذكر</asp:ListItem>
                                        <asp:ListItem>أنثى</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </section>
        </div>

        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    بيانات المعاملة                        
                        <span class="tools pull-left">
                            <a href="javascript:;" class="fa fa-chevron-up"></a>
                        </span>
                </header>
                <div class="panel-body">
                    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="col-md-12">

                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        التصنيف 
                                    </label>
                                    <asp:DropDownList ID="DropDownListCat" runat="server" AutoPostBack="true" ClientIDMode="Static" CssClass="form-control" Style="padding: 0px" OnSelectedIndexChanged="DropDownListCat_SelectedIndexChanged"></asp:DropDownList>
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        التصنيف الفرعي   
                                    </label>
                                    <asp:DropDownList ID="DropDownListSubCat" runat="server" AutoPostBack="true" ClientIDMode="Static" CssClass="form-control" Style="padding: 0px" OnSelectedIndexChanged="DropDownListSubCat_SelectedIndexChanged"></asp:DropDownList>

                                </div>
                            </div>
                            <div class="col-md-12">

                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        نوع الخدمة
                                    </label>
                                    <asp:DropDownList ID="DropDownListtype" required="required" runat="server" AutoPostBack="true" ClientIDMode="Static" CssClass="form-control" Style="padding: 0px" OnSelectedIndexChanged="DropDownListtype_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="control-label">
                                        الرسوم   
                                    </label>
                                    <asp:TextBox ID="TextBoxFees" ReadOnly="true" required="required" CssClass="form-control" placeholder="0.00" runat="server"></asp:TextBox>
                                </div>
                            </div>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </section>
        </div>

        <div class="col-sm-12">
            <section class="panel">
                <header class="panel-heading">
                    المرفقات
                    <span class="tools pull-left">
                        <a href="javascript:;" class="fa fa-chevron-up"></a>
                    </span>
                </header>
                <div class="panel-body">
                    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="col-md-12">
                                <asp:Repeater ID="RepeaterAtt" runat="server">
                                    <ItemTemplate>
                                        <div class="col-md-12 form-group">

                                            <div class="form-group last" style="margin-bottom: 5px">
                                                <label class="control-label  col-md-3"><%# Eval("AttachType") %></label>
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
                                                                <asp:FileUpload runat="server" ToolTip='<%# Eval("AttachType") %>' ID='UploadImages' ClientIDMode="Static" AllowMultiple="false" />

                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                             <div class="col-md-12 form-group">

                <div class="form-group last" style="margin-bottom: 5px">
                    <label class="control-label  col-md-3">بطاقة الولاء</label>
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
                                    <asp:FileUpload runat="server" ID='UploadImages' ClientIDMode="Static" AllowMultiple="false" />

                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="DropDownListtype" />
                        </Triggers>
                    </asp:UpdatePanel>

                   
                </div>
            </section>
        </div>

        <div class="col-md-12">

                                        <asp:Button ID="buttonSubmit" CssClass="btn btn-saeed" OnClientClick="this.disable" Text="التالي " runat="server" OnClick="buttonSubmit_Click" />


            <%--<a runat="server" id="btnsend" data-toggle="modal" href="#myModal3" class="btn btn-saeed">ارسال المعاملة  </a>

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
                            <asp:Button ID="buttonSubmit" CssClass="btn btn-saeed" OnClientClick="this.disable" Text="ارسال المعاملة" runat="server" OnClick="buttonSubmit_Click" />
                            <button data-dismiss="modal" class="btn btn-default" type="button">الغاء</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal -->--%>


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
    <script src="bs3/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
    <script src="js/jquery.nicescroll.js"></script>


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

    <!-- Our main JS file -->
    <script src="js/mini-upload-form/assets/js/script.js"></script>
    <script type="text/javascript" src="js/bootstrap-fileupload/bootstrap-fileupload.js"></script>

    <!--common script init for all pages-->
    <script src="js/scripts.js"></script>

</asp:Content>
