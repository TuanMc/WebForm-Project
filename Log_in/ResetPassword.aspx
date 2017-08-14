<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="Log_In_ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>

    <script src="../Scripts/jquery-3.1.1.min.js"></script>
    <script src="../Style/js/bootstrap.min.js"></script>
    <link href="../Style/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/Login_Design.css" rel="stylesheet" />
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('../Image/1.jpg');
            position: absolute;
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <div class="form-gap" style="padding-top: 70px"></div>
    <div class="container">
        <div class="row">
            <asp:Panel ID="pnlSai" runat="server" CssClass="alert alert-danger alert-dismissable fade in" Visible="false">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Wrong username!</strong>
            </asp:Panel>

            <asp:Panel ID="pnlDung" runat="server" CssClass="alert alert-success alert-dismissable fade in" Visible="false">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Please check your email to get your password!</strong>
            </asp:Panel>

            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <h3><i class="fa fa-lock fa-4x"></i></h3>
                            <h2 class="text-center">Forgot Password?</h2>
                            <p>You can reset your password here.</p>
                            <div class="panel-body">
                                <form id="register" role="form" autocomplete="off" class="form" method="post" runat="server">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"></i></span>
                                            <asp:TextBox ID="txtUser" placeholder="Username" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="btnReset" CssClass="btn btn-lg btn-primary btn-block" Text="Reset Password" runat="server" OnClick="btnReset_Click" />
                                    </div>

                                    <div class="form-group">
                                        <a href="LogIn.aspx">Back</a>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
