<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="Log_In_LogIn" %>

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
        <asp:Label runat="server" ID="lblMK" Text="Password:"></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtMK" TextMode="Password"/>
        <br />
        <asp:LinkButton runat="server" ID="lbtnQMK" Text="Forgot your password?"></asp:LinkButton>
        <br />
        <asp:Label runat="server" ID="lblTB" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button runat="server" ID="btnDN" Text="Sign in" Onclick="btnDN_Click"/>
        <br />
        <br/>
        <asp:Button Text="Create new account" ID="btnNew" runat="server" Onclick="btnNew_Click"/>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
