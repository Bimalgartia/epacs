<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MembershipStatus.aspx.cs" Inherits="PACS.assets.aspx.MembershipStatus" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member Profile</title>
    <script src="../jsfiles/html2canvas.min.js"></script>
    <script src="../jsfiles/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            html2canvas(document.getElementById('Panel1'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 1250,
                            Height: 1740
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Members Details.pdf");
                    alert("Downloading Started");
                }
            });
        }
    </script>
    <meta content="" name="description"/>
  <meta content="" name="keywords"/>
  <link href="../img/co-logo.png" rel="icon"/>
  <link href="../img/co-logo.png" rel="apple-touch-icon"/>
    <link href="../css/MembershipStatus.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">        
        <div class="Fullpage">
            <asp:Panel ID="Panel1" runat="server">
            <div class="auto-style1">
                <div class="heading">
                    <div class="headingleft"> <img src="../img/pacs Logo5.png" class="headerlogo"/><br /></div>
                    <div class="headingright"> 
                        <div><asp:Label ID="Label1" runat="server" ></asp:Label></div>
                        <div><asp:Label ID="Label2" runat="server" Text="MEMBERSHIP DETAILS"></asp:Label></div>
                    </div>
                </div>
                <div class="Datasheet">
                    <div class="Memberbasic">
                        <div class="Memberdetail">
                            <div class="menu">BASIC DETAILS</div>
                            <asp:Label ID="Label3" runat="server" Text="Membership Number :   "></asp:Label><asp:Label ID="Label4" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label5" runat="server" Text="Name of the Member :  "></asp:Label><asp:Label ID="Label6" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label7" runat="server" Text="Aadhar Number :  "></asp:Label><asp:Label ID="Label8" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label9" runat="server" Text="Voter Id Number :  "></asp:Label><asp:Label ID="Label10" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label11" runat="server" Text="Mobile Number :  "></asp:Label><asp:Label ID="Label12" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label13" runat="server" Text="Email Address :  "></asp:Label><asp:Label ID="Label14" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label15" runat="server" Text="Date of Birth :  "></asp:Label><asp:Label ID="Label16" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label21" runat="server" Text="Gender :  "></asp:Label><asp:Label ID="Label22" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label17" runat="server" Text="Religion :  "></asp:Label><asp:Label ID="Label18" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label19" runat="server" Text="Caste :  "></asp:Label><asp:Label ID="Label20" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label23" runat="server" Text="Educational Qualification :  "></asp:Label><asp:Label ID="Label24" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label25" runat="server" Text="Occupation :  "></asp:Label><asp:Label ID="Label26" runat="server"></asp:Label><br/>
                        </div>
                        <div class="Memberdetail">
                            <div class="menu">ADDRESS DETAILS</div>
                            <asp:Label ID="Label27" runat="server" Text="Father / Husband :   "></asp:Label><asp:Label ID="Label28" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label29" runat="server" Text="Village :  "></asp:Label><asp:Label ID="Label30" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label31" runat="server" Text="G.P./ N.A.C. :  "></asp:Label><asp:Label ID="Label32" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label33" runat="server" Text="District :  "></asp:Label><asp:Label ID="Label34" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label35" runat="server" Text="PIN Code :  "></asp:Label><asp:Label ID="Label36" runat="server"></asp:Label><br/>
                        </div>
                        <div class="Memberdetail">
                            <div class="menu">BANK DETAILS</div>
                            <asp:Label ID="Label51" runat="server" Text="Name of the DCCB :   "></asp:Label><asp:Label ID="Label52" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label53" runat="server" Text="Name of Branch :  "></asp:Label><asp:Label ID="Label54" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label55" runat="server" Text="Account Number :  "></asp:Label><asp:Label ID="Label56" runat="server"></asp:Label><br/>
                        </div>
                        <div class="Memberdetail">
                            <div class="menu">ONE DEPENDANT DETAILS</div>
                            <asp:Label ID="Label75" runat="server" Text="Name of the Dependant:   "></asp:Label><asp:Label ID="Label76" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label77" runat="server" Text="Date of Birth :  "></asp:Label><asp:Label ID="Label78" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label79" runat="server" Text="Gender :  "></asp:Label><asp:Label ID="Label80" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label44" runat="server" Text="Relation :  "></asp:Label><asp:Label ID="Label45" runat="server"></asp:Label><br/>
                            <asp:Label ID="Label81" runat="server" Text="Occupation :  "></asp:Label><asp:Label ID="Label82" runat="server"></asp:Label><br/>
                       </div>
                    </div>
                    <div class="Membersign">
                        <div class="Photo"><asp:Image ID="Image1" width="100%" Height="70mm" runat="server"/></div>
                        <div class="Memonumber"><asp:Label ID="Label37" runat="server"></asp:Label></div>
                    </div>           
                </div>
                <div class="footer">
                    <div class="footerleft">
                        <asp:Label ID="Label38" runat="server" Text="Date of Printing :  "></asp:Label><asp:Label ID="Label39" runat="server"></asp:Label><br/>
                        <asp:Label ID="Label40" runat="server" Text="Printed by :  "></asp:Label><asp:Label ID="Label41" runat="server"></asp:Label><br/>
                        <asp:Label ID="Label42" runat="server" Text="Name of the PACS :  "></asp:Label><asp:Label ID="Label43" runat="server"></asp:Label><br/>
                    </div>
                    <div class="footerright"></div>                    
                </div>
            </div></asp:Panel><br/>
            <input type="button" id="btnExport" value="Download" onclick="Export()" class="auto-style5" />
        </div>
    </form>
</body>
</html>
