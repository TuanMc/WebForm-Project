<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewAccount.aspx.cs" Inherits="Log_In_NewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="pnlLogin">
    <asp:Panel runat="server" ID="pnlLogin" GroupingText="Sign in">
        <asp:Label runat="server" ID="lblDN" Text="Username:"></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtDN"/>
        <br />
        <br />
        <asp:Label runat="server" ID="lblEmail" Text="Email:"></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtEmail"/>
        <br />
        <br />
        <asp:Label runat="server" ID="lblMK" Text="Password:"></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtMK" TextMode="Password"/>
        <br />
        <br />
        <asp:Label runat="server" ID="lblXNMK" Text="Re-Password:"></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtXNMK" TextMode="Password"/>
        <br />
        <br />
        <asp:Button runat="server" ID="btnTao" Text="Create account" Onclick="btnTao_Click"/>
        
    </asp:Panel>
    </div>
    </form>
</body>
</html>
