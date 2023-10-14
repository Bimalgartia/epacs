<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="PACS.Logon" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>E-PACS</title>
  <meta content="" name="description"/>
  <meta content="" name="keywords"/>
  <link href="assets/img/co-logo.png" rel="icon"/>
  <link href="assets/img/co-logo.png" rel="apple-touch-icon"/>
  <link href="assets/css/LogonCss.css" rel="stylesheet" />
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css"/>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="login">
<div class="login_box">
<div class="left"></div>
<div class="right">
<img src="assets/img/testimonials/PacsLogo4.png" class="cooplogo"/>
<div class="boxes"><span class="icon"><i class="fa fa-user"></i></span> <asp:TextBox ID="TextBox1" runat="server" CssClass="Textbox" Height="35px" placeholder="USERID"></asp:TextBox></div>
<div class="boxes"><span class="icon"><i class="fa fa-lock"></i></span> <asp:TextBox ID="TextBox2" runat="server" CssClass="Textbox" Height="35px" placeholder="PASSWORD"></asp:TextBox></div>
<br/>
<div class="boxes"> <asp:Button class="submit" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" /> </div>
<br/>
<br/>
<div class="marque"><marquee> BIMAL KUMAR GARTIA ;;;; bimalgartia1@gmail.com  ;;;  9692171444 ;;;  ;; ;</marquee></div>
<br/>
<asp:Label ID="Label1" class="message" runat="server"></asp:Label>
</div>
</div>
</div>
</form>
</body>
</html>
