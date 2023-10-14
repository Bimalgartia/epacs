<%@ Page Title="" Language="C#" MasterPageFile="~/assets/aspx/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="PACS.assets.aspx.Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../css/Password.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="Back">
            <div class="Work">
                <asp:Label class="Heading" ID="Label1" runat="server"></asp:Label><br />
                <asp:Label class="Heading" ID="Label2" runat="server" Text="Please Reset your's Password"></asp:Label><br />
                    <asp:Label class="Lebal" ID="Label3" runat="server" Text="Enter Your Current Password"></asp:Label><br />
                    <asp:TextBox Class="Input" ID="TextBox1" runat="server"></asp:TextBox><br />
                    <asp:Label class="Lebal" ID="Label4" runat="server" Text="Enter Your New Password"></asp:Label><br />
                    <asp:TextBox Class="Input" ID="TextBox2" runat="server" Type="Password"></asp:TextBox><br /><br />
                    <asp:Label class="Lebal" ID="Label5" runat="server" Text="Enter Your New Password Again"></asp:Label><br />
                    <asp:TextBox Class="Input" ID="TextBox3" runat="server" Type="Password"></asp:TextBox><br /><br />
                    <asp:Button ID="Button1" Class="Submit" runat="server" Text="Change Password" OnClick="Button1_Click"/>
        </div></div></form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
