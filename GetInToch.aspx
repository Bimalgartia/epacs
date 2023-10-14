<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetInToch.aspx.cs" Inherits="PACS.GetInToch" %>
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
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css"/>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <link href="assets/css/GetInToch.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="Back">
            <div class="Button">
                <asp:Button Class="Submit" ID="Button3" runat="server" Text="Back to Home" OnClick="Button3_Click" /></div>
            <div class="Work">
                <asp:Label class="Heading" ID="Label1" runat="server" Text="Dear Farmer Enter Your Details"></asp:Label><br />
                
                <asp:Panel ID="Panel1" runat="server" Visible="True">
                    <asp:Label class="Lebal" ID="Label2" runat="server" Text="Enter Your Mobile Number"></asp:Label><br />
                    <asp:TextBox Class="Input" ID="TextBox1" runat="server" pattern="[0-9]{10}" MaxLength="10"></asp:TextBox><br /><br />
                    <asp:Button ID="Button2" Class="Submit" runat="server" Text="Verify Mobile Number" OnClick="Button2_Click" />
                </asp:Panel>

                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <asp:Label class="Lebal" ID="Label3" runat="server" Text="Enter Your Name"></asp:Label><br />
                    <asp:TextBox Class="Input" ID="TextBox2" runat="server"></asp:TextBox><br />
                    <asp:Label class="Lebal" ID="Label4" runat="server" Text="Village Name"></asp:Label><br />
                    <asp:TextBox Class="Input" ID="TextBox3" runat="server"></asp:TextBox><br /><br />
                    <asp:Button ID="Button1" Class="Submit" runat="server" Text="Join to Farmer Team" OnClick="Button1_Click" />
                </asp:Panel><br />
            </div>
        </div>
    </form>
</body>
</html>