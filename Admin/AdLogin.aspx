<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdLogin.aspx.cs" Inherits="Log_In_AdLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Style/css/bootstrap.css" />
    <style>
        .middle {
            text-align:center;
        }
    </style>
</head>
<body>
    <h1 class="middle">Welcome to my website</h1>
    <br />
        <div class="row vertical-offset-100" style="margin-top: 100px;">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please sign in</h3>
                    </div>
                    <div class="panel-body">
                        <form accept-charset="UTF-8" role="form" runat="server">
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox Placeholder="Username" ID="txtDN" runat="server" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox Placeholder="Password" ID="txtMK" runat="server" TextMode="Password"/>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox runat="server" ID="cbRemeber"/>
                                        Remember Me
			    	    
                                    </label>
                                </div>
                                <asp:Button Text="Login" ID="btnDN" runat="server" OnClick="btnDN_Click"/>
                                <br />
                                <asp:Label ID="lblTB" runat="server"/>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <script src="../Style/js/bootstrap.min.js" type="text/javascript"></script>"
</body>
</html>
