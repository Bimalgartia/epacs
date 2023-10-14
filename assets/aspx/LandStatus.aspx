<%@ Page Title="" Language="C#" MasterPageFile="~/assets/aspx/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LandStatus.aspx.cs" Inherits="PACS.assets.aspx.LandStatus1" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/LandStatus.css" rel="stylesheet" />
    <script language="javascript" src="../../JSc/Validation.js" type="text/javascript"></script>
        <script language="javascript" type="text/javascript">
            function Validation() {
                if (Required('<%=DropDownList1.ClientID%>', 'select District'))
                    if (Required('<%=DropDownList2.ClientID%>', 'select Tahasil'))
                        if (Required('<%=DropDownList3.ClientID%>', 'select R.I. Circle'))
                            if (Required('<%=DropDownList4.ClientID%>', 'select Mouza'))
                                if (Required('<%=DropDownList5.ClientID%>', 'select Source Of Irrigation'))
                                    if (Required('<%=DropDownList6.ClientID%>', 'select Crop Name'))
                                        if (Required('<%=TextBox2.ClientID%>', 'enter Khata Number'))
                                            if (Required('<%=TextBox3.ClientID%>', 'enter Plot Number'))                                         
                                                                                                       
                                                            return true; return false;            }
        </script>
        <script language="javascript" type="text/javascript">
        function Validation2() {
            if (Required('<%=TextBox4.ClientID%>', 'enter Total Area of mention plot'))
                if (Required('<%=TextBox6.ClientID%>', 'enter Crop Area'))
                    return true; return false;
        }
    </script>
    <script>
        function isNumber(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode != 46 && charCode > 31
                && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    </script>
    <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script type="text/javascript">
        function sum() {
            var txtFirstNo = document.getElementById('TextBox4').value;
            var txtSecondNo = document.getElementById('TextBox5').value;
            var result = parseInt(txtFirstNo) + parseInt(txtSecondNo);
            if (!isNaN(result)) {
                document.getElementById('TextBox12').value = result;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="Back"><div class="Work">
        <asp:Panel ID="Panel1" runat="server" Visible="True">
            <div class="Title">
                <asp:Label ID="Label1" runat="server" Text="PACS Code:  "></asp:Label>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text=",     Membersship Number : "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="176px"></asp:TextBox>
                <asp:Button Class="Button" ID="Button1" runat="server" Text="Search" /><asp:TextBox ID="TextBox12" runat="server" Visible="False"></asp:TextBox>
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" class="Gridview1" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="MembershipNo" HeaderText="Membership No." SortExpression="MembershipNo" />
                    <asp:BoundField DataField="MemberName" HeaderText="Name of the Member" SortExpression="MemberName" />
                    <asp:BoundField DataField="Relation" HeaderText="Relation" SortExpression="Relation" />
                    <asp:BoundField DataField="FatherOrSpouse" HeaderText="Name of the Father / Spouse" SortExpression="FatherOrSpouse" />
                    <asp:BoundField DataField="Village" HeaderText="Village" SortExpression="Village" />
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" Height="30px" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString13 %>" SelectCommand="SELECT [MembershipNo], [MemberName], [FatherOrSpouse], [Relation], [Village] FROM [MembersDetail] WHERE (([MembershipNo] LIKE '%' + @MembershipNo + '%') AND ([PacsCode] = @PacsCode))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="MembershipNo" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Label2" Name="PacsCode" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">           
              <span class="Title">Add Land Details</span>
                 <div class="fields">
                     <div class="input-field">
                            <label>Membership No.</label>
                         <asp:TextBox ID="TextBox7" class="input" runat="server"></asp:TextBox>
                     </div>                            
                     <div class="input-field">
                            <label>Name of the Member</label>
                         <asp:TextBox ID="TextBox8" class="input" runat="server"></asp:TextBox>
                     </div>
                      <div class="input-field">
                            <label>Father / Husband</label>
                          <asp:TextBox ID="TextBox9" class="input" runat="server"></asp:TextBox>
                     </div>
                      <div class="input-field">
                            <label>Residance Village</label>
                          <asp:TextBox ID="TextBox10" class="input" runat="server"></asp:TextBox>
                     </div>
                     <div class="input-field">
                            <label>Registerd(In acre)</label>
                         <asp:TextBox ID="TextBox11" class="input" runat="server" style="font-weight: bold;"></asp:TextBox>
                     </div><br />
                     <div class="input-field2">
                            <label>District</label>
                         <asp:DropDownList ID="DropDownList1" class="input" runat="server"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList1_CascadingDropDown" runat="server" BehaviorID="DropDownList1_CascadingDropDown" TargetControlID="DropDownList1" Category="District" LoadingText="Loding District" PromptText="Select District" ServiceMethod="BindDistrict" ServicePath="../../Village.asmx" />
                     </div>
                     <div class="input-field2">
                            <label>Tahasil</label>
                         <asp:DropDownList ID="DropDownList2" class="input" runat="server"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList2_CascadingDropDown" runat="server" BehaviorID="DropDownList2_CascadingDropDown" TargetControlID="DropDownList2" Category="Block" LoadingText="Loding Block" ParentControlID="DropDownList1" PromptText="Select Tahasil" ServiceMethod="BindBlock" ServicePath="../../Village.asmx"/>
                     </div>
                      <div class="input-field2">
                            <label>R.I. Circle</label>
                          <asp:DropDownList ID="DropDownList3" class="input" runat="server"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList3_CascadingDropDown" runat="server" BehaviorID="DropDownList3_CascadingDropDown" TargetControlID="DropDownList3" Category="Gp" LoadingText="Loding GP" ParentControlID="DropDownList2" PromptText="Select R.I. Office" ServiceMethod="BindGp" ServicePath="../../Village.asmx"/>
                     </div>
                      <div class="input-field2">
                            <label>Mouza</label>
                          <asp:DropDownList ID="DropDownList4" class="input" runat="server"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList4_CascadingDropDown" runat="server" BehaviorID="DropDownList4_CascadingDropDown" TargetControlID="DropDownList4" Category="Revillage" LoadingText="Loding Revillage" ParentControlID="DropDownList3" PromptText="Select Mouza" ServiceMethod="BindRevillage" ServicePath="../../Village.asmx" />
                     </div>
                     <div class="input-field2">
                            <label>Source Of Irrigation</label>
                         <asp:DropDownList ID="DropDownList5" class="input" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="IrrType" DataValueField="IrrType"></asp:DropDownList>
                     </div>
                     <div class="input-field2">
                            <label>Crop Name</label>
                         <asp:DropDownList ID="DropDownList6" class="input" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CropName" DataValueField="CropName"></asp:DropDownList>
                     </div>
                     <br />
                      <div class="input-fields">
                            <label>Khata No.</label>
                            <asp:TextBox type="text" class="input" ID="TextBox2" runat="server"></asp:TextBox>
                     </div>
                      <div class="input-fields">
                            <label>Plot No.</label>
                            <asp:TextBox type="text" class="input" ID="TextBox3" runat="server"></asp:TextBox>
                     </div>
                      <div class="input-fields">
                            <label>   </label>
                         <asp:Button ID="Button2"  Class="Submit" runat="server" Text="Check Details" Visible="True" OnClientClick="javascript:return Validation();" OnClick="Button2_Click"/>
                     </div>
                     <div class="input-fields">
                            <label>Total Area (In Acre)</label>
                            <asp:TextBox type="text" class="input" ID="TextBox4" runat="server" onkeypress="return isNumber(event)" onkeyup="sum()" ></asp:TextBox>
                     </div>
                     <div class="input-fields">
                            <label>Already Reg.(In Acre)</label>
                            <asp:TextBox type="text" class="input" ID="TextBox5" runat="server" onkeypress="return isNumber(event)"></asp:TextBox>
                     </div>
                     <div class="input-fields">
                            <label>Balance (In Acre)</label>
                            <asp:TextBox type="text" class="input" ID="TextBox6" runat="server" onkeypress="return isNumber(event)"></asp:TextBox>
                     </div>                    
                     <div class="input-fields">
                            <label>   </label>
                         <asp:Button ID="Button3"  Class="Submit" runat="server" Text="Add Land" Visible="False" OnClientClick="javascript:return Validation2();" OnClick="Button3_Click" />
                     </div>
                     </div><br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" AllowSorting="True" BackColor="White" BorderColor="#999999" Width="100%" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowDataBound="GridView2_RowDataBound">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Crop" HeaderText="Crop Name" SortExpression="Crop">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IrrSourse" HeaderText="Source of Irr." SortExpression="IrrSourse">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="District" HeaderText="District Name" SortExpression="District">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Tahasil" HeaderText="Tahasil Name" SortExpression="Tahasil">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RI" HeaderText="RI Office" SortExpression="RI">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Mouza" HeaderText="Mouza" SortExpression="Mouza">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="KhataNo" HeaderText="Khata No." SortExpression="KhataNo">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PlotNo" HeaderText="Plot No." SortExpression="PlotNo">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TotalLand" HeaderText="Total Area" SortExpression="TotalLand">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CropLand" HeaderText="Crop Area" SortExpression="CropLand">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" Height="30px" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
              </asp:GridView><br />
        </asp:Panel>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString14 %>" SelectCommand="SELECT DISTINCT [CropName] FROM [CropType]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString15 %>" SelectCommand="SELECT DISTINCT [IrrType] FROM [IrrigationType]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString17 %>" SelectCommand="SELECT [Crop], [IrrSourse], [District], [Tahasil], [RI], [Mouza], [KhataNo], [PlotNo], [TotalLand], [CropLand] FROM [CropLandLedger] WHERE (([PacsCode] = @PacsCode) AND ([MembershipNo] = @MembershipNo))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="PacsCode" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="MembershipNo" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div></div></form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
