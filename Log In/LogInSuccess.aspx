<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogInSuccess.aspx.cs" Inherits="Log_In_LogInSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="pnlLogin">
    <asp:Panel runat="server" ID="pnlLogin" Visible="false">
        <h3>Account Created Successfully</h3>

        <br />
        <br />
        <asp:LinkButton runat="server" ID="btnXN" Text="OK" OnClick="btnXN_Click"/>
        
    </asp:Panel>

    </div>
    </form>
</body>
</html>
