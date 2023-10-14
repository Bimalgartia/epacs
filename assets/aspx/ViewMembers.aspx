<%@ Page Title="" Language="C#" MasterPageFile="~/assets/aspx/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewMembers.aspx.cs" Inherits="PACS.assets.aspx.ViewMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .grid{
            margin-left:5%;
            margin-right:5%;
        }
        .Header {
    text-align: center;
    height: 68px;
    font-size: 20px;
    color: blueviolet;
    text-shadow: 1px 1px 2px #000000;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="Header">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> (<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>)
        </div>
        <div class="grid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MUN" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="90%" AllowSorting="True" GridLines="Vertical">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="MembershipNo" HeaderText="Membership No." SortExpression="MembershipNo" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#009933" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MemberName" HeaderText="Name of the Member" SortExpression="MemberName" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Relation" HeaderText="Relation" SortExpression="Relation" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FatherOrSpouse" HeaderText="Father / Spouse" SortExpression="FatherOrSpouse" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile No." SortExpression="Mobile" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Village" HeaderText="Village" SortExpression="Village" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="   Details   " >
                    <ItemStyle ForeColor="Lime" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" Height="30px"/>
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString12 %>" SelectCommand="SELECT * FROM [MembersDetail] WHERE ([PacsCode] = @PacsCode)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label2" Name="PacsCode" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
