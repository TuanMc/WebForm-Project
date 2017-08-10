<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="Log_In_LogIn" %>

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
    <div class="login-screen"></div>
    <div class="login-center">
        <div class="container min-height" style="margin-top: 20px;">
            <div class="row">
                <div class="col-xs-4 col-md-offset-8">
                    <div class="login" id="card">
                        <div class="front signin_form">
                            <p>Login Your Account</p>
                            <form class="login-form" runat="server">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Type your email" ID="txtDN" />
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-user"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox type="password" ID="txtMK" CssClass="form-control" placeholder="Type your password" runat="server" />
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-lock"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="label-danger" style="text-align:center;">
                                        <asp:Label ID="lblTB" runat="server" />
                                    </div>
                                </div>
                                <div class="checkbox-inline">
                                    <asp:CheckBox Text="Remember me next time" ID="cbDN" runat="server" />
                                </div>

                                <div class="form-group sign-btn">
                                    <asp:Button CssClass="btn" runat="server" Text="Log in" ID="btnDN" OnClick="btnDN_Click" />
                                    <p><a href="#" class="forgot">Can't access your account?</a></p>
                                    <p>
                                        <strong>New to TimeInfo?</strong><br>
                                        <a href="NewAccount.aspx" id="flip-btn" class="signup signup_link">Sign up for a new account</a>
                                    </p>
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
