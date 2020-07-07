<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="SAEED.WebPL.SignIn" %>

<!DOCTYPE html>
<html lang="en" class="bg-dark" dir="rtl">
<head  runat="server">

        <link href="css/cairo.css" rel="stylesheet">

<meta charset="utf-8" />
<title>مركز الشارقة لخدمات المستثمرين </title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="css/app.v2.css" type="text/css" />
<!--[if lt IE 9]> <script src="js/ie/html5shiv.js" cache="false"></script> <script src="js/ie/respond.min.js" cache="false"></script> <script src="js/ie/excanvas.js" cache="false"></script> <![endif]-->
</head>
<body >
<section id="content" class="m-t-lg wrapper-md animated fadeInUp">
  <div class="container aside-xxl"  ><center> <a href="Default.aspx"><img src="images/signlogo.png" style="width:70%" alt=""/></a></center>
    <section class="panel panel-default bg-white m-t-lg">
      <header class="panel-heading text-center" style="font-family:Cairo"> <strong>تسجيل الدخول</strong> </header>
      <form  class="panel-body wrapper-lg" runat="server">
<div  class="hide" id="ErrorDiv"  runat="server">
            <asp:Label ID="LabelError" runat="server" ></asp:Label>   
       </div>          <div class="form-group" runat="server">
          <label class="control-label" style="font-family:Cairo">اسم المستخدم</label>
            <asp:TextBox ID="txtUser" runat="server" placeholder="اسم المستخدم" class="form-control input-lg" style="font-family:Cairo" ></asp:TextBox>
        </div>
        <div class="form-group">
          <label class="control-label" style="font-family:Cairo">كلمة المرور</label>
            <asp:TextBox ID="txtPass" runat="server" placeholder="كلمة المرور" class="form-control input-lg" style="font-family:Cairo" TextMode="Password"></asp:TextBox>
        </div>

      
          <asp:Button ID="btnSubmit" runat="server"  Text="دخول" class="btn " style="background-color:#698091; color:white;  font-family:Cairo" OnClick="btnSubmit_Click"/>   
               
      </form>
        
    </section>

   
  </div>
</section>
<!-- footer -->
<footer id="footer">
  <%--<div class="text-center padder" style="color:white;">
    <p> <small><a href="http://impressdsc.com" target="_blank">Impress Digital Solutions L.L.C <br>
      &copy; 2019</a></small> </p>
  </div>--%>

     <div class="row">
	<div class="col-lg-5">
	
	</div>
	
	
	</div>


</footer>
       
     <link rel="shortcut icon" href="images/favicon.png">

<!-- / footer -->  <!-- Bootstrap --> <!-- App -->
</body>
</html>
