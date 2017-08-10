<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewAccount.aspx.cs" Inherits="Log_In_NewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <title>Create new account</title>
    <script src="../Style/js/bootstrap.min.js"></script>
    <link href="../Style/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />
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
    <div class="container">
        <div class="row main" style="margin-top: 15px;">
            <div class="main-login main-center">
                <form class="form-horizontal" runat="server">

                    <!-- FName -->
                    <div class="form-group">
                        <label for="name" class="cols-sm-2 control-label">First Name&nbsp; </label>
                        <asp:RequiredFieldValidator ID="rqfFN" runat="server" ControlToValidate="txtFN" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="DN"></asp:RequiredFieldValidator>
                        &nbsp;<div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <asp:TextBox CssClass="form-control" runat="server" ID="txtFN" placeholder="Enter first Name" />
                            </div>
                        </div>
                    </div>

                    <!-- LName -->
                    <div class="form-group">
                        <label for="name" class="cols-sm-2 control-label">
                            Last Name
                        <asp:RequiredFieldValidator ID="rqfLN" runat="server" ControlToValidate="txtLN" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="DN"></asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <asp:TextBox CssClass="form-control" runat="server" ID="txtLN" placeholder="Enter last Name" />
                            </div>
                        </div>
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                        <label for="email" class="cols-sm-2 control-label">
                            Your Email
                        <asp:RequiredFieldValidator ID="rqfEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="DN"></asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                <asp:TextBox CssClass="form-control" runat="server" ID="txtEmail" placeholder="Enter Email" />
                            </div>
                        </div>
                    </div>

                    <!-- Username -->
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label">
                            Username
                        <asp:RequiredFieldValidator ID="rqfUser" runat="server" ControlToValidate="txtDN" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="DN"></asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <asp:TextBox CssClass="form-control" runat="server" ID="txtDN" placeholder="Enter Username" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="cols-sm-2 control-label">
                            Password
                        <asp:RequiredFieldValidator ID="rqfPass" runat="server" ControlToValidate="txtMK" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="DN"></asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                <asp:TextBox CssClass="form-control" type="Password" runat="server" ID="txtMK" placeholder="Enter your password" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="confirm" class="cols-sm-2 control-label">
                            Confirm Password
                        <asp:RequiredFieldValidator ID="rqfXN" runat="server" ControlToValidate="txtXN" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="DN"></asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                <asp:TextBox CssClass="form-control" type="Password" runat="server" ID="txtXN" placeholder="Confirm your password" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMK" ControlToValidate="txtXN" ErrorMessage="Both passwords are not identical" ForeColor="Red" ValidationGroup="DN"></asp:CompareValidator>
                        <asp:Button ID="btnTao" OnClick="btnTao_Click" class="btn btn-primary btn-lg btn-block login-button" runat="server" Text="Register" ValidationGroup="DN" />
                    </div>

                    <div class="login-register">
                        <a href="LogIn.aspx">Back</a>
                    </div>
                </form>
            </div>
    </div>
    </div>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>
</html>
