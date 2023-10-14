<%@ Page Title="" Language="C#" MasterPageFile="~/assets/aspx/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="PACS.assets.aspx.AddMember" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/Addmember.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
    <script language="javascript" src="../../JSc/Validation.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        function NewValidation() {
            if (Required('<%=TextBox1.ClientID%>', 'Enter name of the Members'))
           if (Required('<%=DropDownList1.ClientID%>', 'Select Relation'))
             if (Required('<%=TextBox2.ClientID%>', 'Enter Father / Spouse name of the Members'))
                if (Required('<%=DropDownList2.ClientID%>', 'Select Gender'))
                    if (Required('<%=TextBox3.ClientID%>', 'Mention Date of Birth of Member'))
                        if (Required('<%=DropDownList3.ClientID%>', 'Select Religion'))
                            if (Required('<%=TextBox4.ClientID%>', 'Enter Aadhar Number'))
                                if (Required('<%=DropDownList4.ClientID%>', 'Select Caste'))
                                    if (Required('<%=DropDownList5.ClientID%>', 'Select Occupation'))
                                        if (Required('<%=DropDownList6.ClientID%>', 'Select educational Qualification'))
                                            if (Required('<%=DropDownList7.ClientID%>', 'Select Membership Type'))
                                                if (Required('<%=DropDownList8.ClientID%>', 'Select Membership Category'))
                                                    if (Required('<%=TextBox5.ClientID%>', 'Enter Voter ID Number'))
                                                        if (Required('<%=TextBox6.ClientID%>', 'Enter Mobile Number'))
                                                           if (Required('<%=TextBox7.ClientID%>', 'Enter Nos of Family Members'))
                                                               if (Required('<%=TextBox8.ClientID%>', 'Enter Annual Income'))
                                                                   if (Required('<%=TextBox9.ClientID%>', 'Enter Ledger Folio Number'))
                                                                       if (Required('<%=TextBox10.ClientID%>', 'Mention Membership Date'))
         return true;
         return false;
        }
    </script>
    <script language="javascript" type="text/javascript">
        function NewValidation2() {
            if (Required('<%=DropDownList9.ClientID%>', 'Select Address Type'))
                if (Required('<%=DropDownList10.ClientID%>', 'Select District'))
                    if (Required('<%=DropDownList11.ClientID%>', 'Select Block'))
                        if (Required('<%=DropDownList12.ClientID%>', 'Select G.P. / N.A.C.'))
                            if (Required('<%=DropDownList13.ClientID%>', 'Select Revenue Village'))
                                if (Required('<%=TextBox11.ClientID%>', 'Enter Village'))
                                    if (Required('<%=TextBox12.ClientID%>', 'Enter PIN Number'))
                                        if (Required('<%=TextBox13.ClientID%>', 'Enter Dependant Name'))
                                            if (Required('<%=TextBox14.ClientID%>', 'Mention Dependant Date of Birth'))
                                                if (Required('<%=DropDownList14.ClientID%>', 'Select Gender'))
                                                    if (Required('<%=DropDownList15.ClientID%>', 'Select Relation'))
                                                        if (Required('<%=DropDownList16.ClientID%>', 'Select Occupation'))
                                                            if (Required('<%=DropDownList17.ClientID%>', 'Select DCCB Name'))
                                                                if (Required('<%=DropDownList18.ClientID%>', 'Select Branch'))
                                                                    if (Required('<%=TextBox15.ClientID%>', 'Enter DCCB ACCOUNT Number'))
                   
            return true;
            return false;
        }
    </script>
    <script>
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">        
         <div class="Back"><div class="Work">
         <asp:Panel ID="Panel1" runat="server" Visible="true">
             <div class="details personal">
              <span class="title">Personal Details</span>
                 <div class="fields">
                        <div class="input-field">
                            <label>Name of the Member</label>
                            <asp:TextBox type="text" class="input" ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Relation</label>
                            <asp:DropDownList class="input" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="RelationFH" DataValueField="RelationFH"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Name of the Father / Spouse</label>
                            <asp:TextBox type="text" class="input" ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Date of Birth</label>
                             <asp:TextBox type="Date" class="input" ID="TextBox3" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Gender</label>
                            <asp:DropDownList class="input" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="GenderType" DataValueField="GenderType"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Religion</label>
                            <asp:DropDownList class="input" ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Religion" DataValueField="Religion"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Caste</label>
                            <asp:DropDownList class="input" ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="Cast" DataValueField="Cast"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Occupation</label>
                            <asp:DropDownList class="input" ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="Occupation" DataValueField="Occupation"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Educational Qualification</label>
                            <asp:DropDownList class="input" ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="EduQual" DataValueField="EduQual"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Aadhar Numebr</label>
                             <asp:TextBox type="Text" class="input" ID="TextBox4" runat="server" pattern="[0-9]{12}" MaxLength="12" onkeypress="return isNumber(event)"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Voter ID Number</label>
                            <asp:TextBox type="text" class="input" ID="TextBox5" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Mobile Number</label>
                            <asp:TextBox type="text" class="input" ID="TextBox6" runat="server" pattern="[0-9]{10}" MaxLength="10" onkeypress="return isNumber(event)"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Number of Family Members</label>
                            <asp:TextBox type="text" class="input" ID="TextBox7" runat="server" MaxLength="2" onkeypress="return isNumber(event)"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Annual Income</label>
                            <asp:TextBox type="text" class="input" ID="TextBox8" runat="server" onkeypress="return isNumber(event)"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Folio No. / Remerks</label>
                            <asp:TextBox type="text" class="input" ID="TextBox9" runat="server"></asp:TextBox>
                        </div></div></div>
              <div class="details ID">
                    <span class="title">Membership Class</span>
                    <div class="fields">
                        <div class="input-field">
                            <label>Membership Type</label>
                            <asp:DropDownList class="input" ID="DropDownList7" runat="server" DataSourceID="SqlDataSource7" DataTextField="MembershipType" DataValueField="MembershipType"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Membership Date</label>
                            <asp:TextBox type="Date" class="input" ID="TextBox10" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Membership Category</label>
                            <asp:DropDownList class="input" ID="DropDownList8" runat="server" DataSourceID="SqlDataSource8" DataTextField="MemberCategory" DataValueField="MemberCategory"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label> </label>
                            <asp:Button Class="Submit" ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" OnClientClick="javascript:return NewValidation();" />
                        </div></div></div> 
         </asp:Panel>
         <asp:Panel ID="Panel2" runat="server" Visible="false">
             <div class="details address">
                    <span class="title">Address Details</span>
                    <div class="fields">
                        <div class="input-field">
                            <label>Address Type</label>
                            <asp:DropDownList class="input" ID="DropDownList9" runat="server" DataSourceID="SqlDataSource9" DataTextField="AddressType" DataValueField="AddressType" AutoPostBack="True"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>District</label>
                            <asp:DropDownList class="input" ID="DropDownList10" runat="server" AutoPostBack="True"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList10_CascadingDropDown" runat="server" BehaviorID="DropDownList10_CascadingDropDown" TargetControlID="DropDownList10" Category="District" LoadingText="Loding District" PromptText="Select District" ServiceMethod="BindDistrict" ServicePath="../../Village.asmx"/>
                        </div>
                        <div class="input-field">
                            <label>Block</label>
                            <asp:DropDownList class="input" ID="DropDownList11" runat="server" AutoPostBack="True"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList11_CascadingDropDown" runat="server" BehaviorID="DropDownList11_CascadingDropDown" TargetControlID="DropDownList11" Category="Block" LoadingText="Loding Block" ParentControlID="DropDownList10" PromptText="Select Block" ServiceMethod="BindBlock" ServicePath="../../Village.asmx"/>
                        </div>
                        <div class="input-field">
                            <label>N.A.C. / Gram Panchyat</label>
                            <asp:DropDownList class="input" ID="DropDownList12" runat="server" AutoPostBack="True"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList12_CascadingDropDown" runat="server" BehaviorID="DropDownList12_CascadingDropDown" TargetControlID="DropDownList12" Category="Gp" LoadingText="Loding GP" ParentControlID="DropDownList11" PromptText="Select G.P. / N.A.C." ServiceMethod="BindGp" ServicePath="../../Village.asmx"/>
                        </div>
                        <div class="input-field">
                            <label>Revenue Village</label>
                            <asp:DropDownList ID="DropDownList13" runat="server" AutoPostBack="True"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList13_CascadingDropDown" runat="server" BehaviorID="DropDownList13_CascadingDropDown" TargetControlID="DropDownList13" Category="Revillage" LoadingText="Loding Revillage" ParentControlID="DropDownList12" PromptText="Select Revenue Village" ServiceMethod="BindRevillage" ServicePath="../../Village.asmx"/>
                        </div>
                        <div class="input-field">
                            <label>Village</label>
                            <asp:TextBox type="text" class="input" ID="TextBox11" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Postal PIN</label>
                            <asp:TextBox type="Text" class="input" ID="TextBox12" runat="server" MaxLength="6" onkeypress="return isNumber(event)"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Member's Photo</label>
                            <asp:FileUpload class="input" ID="FileUpload1" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="Details Dependant">
                    <span class="title">Dependant Details</span>
                    <div class="fields">
                        <div class="input-field">
                            <label>Name of the Dependant</label>
                            <asp:TextBox type="text" class="input" ID="TextBox13" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Dependant D.O.B.</label>
                            <asp:TextBox type="Date" class="input" ID="TextBox14" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <label>Dependant Gender</label>
                            <asp:DropDownList class="input" ID="DropDownList14" runat="server" DataSourceID="SqlDataSource2" DataTextField="GenderType" DataValueField="GenderType"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Relation with Member</label>
                            <asp:DropDownList class="input" ID="DropDownList15" runat="server" DataSourceID="SqlDataSource10" DataTextField="RelationType" DataValueField="RelationType"></asp:DropDownList>
                        </div>
                        <div class="input-field">
                            <label>Dependant Occupation</label>
                            <asp:DropDownList class="input" ID="DropDownList16" runat="server" DataSourceID="SqlDataSource5" DataTextField="Occupation" DataValueField="Occupation"></asp:DropDownList>
                        </div></div></div>
                     <div class="Details Bank">
                    <span class="title">Bank Details</span>
                    <div class="fields">
                        <div class="input-field">
                            <label>Name of the Bank</label>
                            <asp:DropDownList class="input" ID="DropDownList17" runat="server" AutoPostBack="True"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList17_CascadingDropDown" runat="server" BehaviorID="DropDownList17_CascadingDropDown" TargetControlID="DropDownList17" Category="Bank" LoadingText="Loding Bank" PromptText="Select Bank" ServiceMethod="BindBank" ServicePath="../../Dccb.asmx" />
                        </div>
                        <div class="input-field">
                            <label>Name of the Branch</label>
                            <asp:DropDownList ID="DropDownList18" runat="server" AutoPostBack="True"></asp:DropDownList>
                            <ajaxToolkit:CascadingDropDown ID="DropDownList18_CascadingDropDown" runat="server" BehaviorID="DropDownList18_CascadingDropDown" TargetControlID="DropDownList18" Category="Branch" LoadingText="Loding Branch" ParentControlID="DropDownList17" PromptText="Select Branch" ServiceMethod="BindDccbBranch" ServicePath="../../Dccb.asmx"/>
                        </div>
                        <div class="input-field">
                            <label>Account Number</label>
                            <asp:TextBox type="Text" class="input" ID="TextBox15" runat="server" pattern="[0-9]{12}" MaxLength="12" onkeypress="return isNumber(event)"></asp:TextBox>
                        </div>                        
                        <div class="input-field">
                             <label> </label>
                            <asp:Button Class="Submit" ID="Button2" runat="server" Text="BACK" OnClick="Button2_Click"/>
                        </div>
                        <div class="input-field">
                            <label> </label>
                           <asp:Button Class="Submit" ID="Button3" runat="server" Text="SUBMIT" OnClientClick="javascript:return NewValidation2();" OnClick="Button3_Click"/>
                        </div></div></div> <asp:Label ID="Label1" runat="server"></asp:Label>
         </asp:Panel>
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString %>" SelectCommand="SELECT DISTINCT [RelationFH] FROM [RelationFH]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString2 %>" SelectCommand="SELECT DISTINCT [GenderType] FROM [Gender]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString3 %>" SelectCommand="SELECT DISTINCT [Religion] FROM [Religion]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString4 %>" SelectCommand="SELECT DISTINCT [Cast] FROM [Caste]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString5 %>" SelectCommand="SELECT DISTINCT [Occupation] FROM [Occupation]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString6 %>" SelectCommand="SELECT DISTINCT [EduQual] FROM [EduQualification]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString7 %>" SelectCommand="SELECT DISTINCT [MembershipType] FROM [MembershipType]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString8 %>" SelectCommand="SELECT DISTINCT [MemberCategory] FROM [MembershipCategory]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString9 %>" SelectCommand="SELECT DISTINCT [AddressType] FROM [AddressType]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:IRAConnectionString10 %>" SelectCommand="SELECT DISTINCT [RelationType] FROM [Relationship]"></asp:SqlDataSource>
</div></div></form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
