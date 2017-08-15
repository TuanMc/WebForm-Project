<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdLogin.aspx.cs" Inherits="Log_In_AdLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script src="../Scripts/jquery-3.1.1.min.js"></script>
    <script src="../Style/js/bootstrap.min.js"></script>
    <link href="../Style/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/Login_Design.css" rel="stylesheet" />
</head>
<body class="main">

    <div class="adlogin-screen"></div>
    <div class="login-center">
        <div class="container min-height" style="margin-top: 20px;">
            <div class="row">
                <div class="col-xs-4 col-md-offset-8">
                    <div class="login" id="card">
                        <div class="front signin_form">

                            <!-- Header -->
                            <p>Login Your Account</p>
                            <form class="login-form" runat="server">

                                <!-- Username -->
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" placeholder="Type your username" runat="server" ID="txtDN">
                                        </asp:TextBox>
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-user"></i>
                                        </span>
                                    </div>
                                </div>

                                <!-- Password -->
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox type="password" class="form-control" runat="server" placeholder="Type your password" ID="txtMK">
                                        </asp:TextBox>
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-lock"></i>
                                        </span>
                                    </div>
                                </div>

                                <!-- Wrong input -->
                                <div class="form-group">
                                    <div class="label-danger" style="text-align: center;">
                                        <asp:Label ID="lblTB" runat="server" />
                                    </div>
                                </div>

                                <!-- Remember me -->
                                <div class="checkbox-inline">
                                    <asp:CheckBox Text="Remember me next time" ID="cbDN" runat="server" />
                                </div>

                                <!-- Sig-in button -->
                                <div class="form-group sign-btn">
                                    <asp:Button Text="Login" ID="btnDN" runat="server" CssClass="btn" OnClick="btnDN_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
