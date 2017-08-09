<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Pages_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <!-- Breadcrumb -->
    <ol class="breadcrumb">
        <li><a href="Index.aspx">Home</a></li>
        <li><a href="#">User Account</a></li>
    </ol>
    <!-- End Breadcrumb -->

    <asp:Label ID="lblTB" Font-Bold="true" ForeColor="Red" runat="server" />

    <div class="container">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">First Name</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtFN" runat="server" placeholder="First name" CssClass="form-control input-md" />
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">Last Name</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtLN" runat="server" placeholder="Last name" CssClass="form-control input-md" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">Username</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtUN" runat="server" placeholder="Username" CssClass="form-control input-md" Text='<%#Eval("Username") %>' />
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">
                    Password
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPass" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="Sua"></asp:RequiredFieldValidator>
                </label>
                &nbsp;
                    <div class="col-md-4">
                        <asp:TextBox ID="txtPass" runat="server" Type="Password" placeholder="Password" CssClass="form-control input-md" />
                    </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">
                    Re-Password
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRePass" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="Sua"></asp:RequiredFieldValidator>
                </label>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtRePass" ErrorMessage="Both passwords are not identical" ForeColor="Red" ValidationGroup="Sua"></asp:CompareValidator>
                &nbsp;
                    <div class="col-md-4">
                        <asp:TextBox ID="txtRePass" runat="server" Type="Password" placeholder="Password" CssClass="form-control input-md" />
                    </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">
                    Email 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="Sua"></asp:RequiredFieldValidator>
                </label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Wrong format (ie: user@gmail.com)" Font-Bold="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Sua"></asp:RegularExpressionValidator>
                &nbsp;
                    <div class="col-md-4">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control input-md" Text='<%#Eval("Email") %>' />
                    </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">Phone</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone" CssClass="form-control input-md" Text='<%#Eval("Phone") %>' />
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="singlebutton"></label>
                <div class="col-md-4">
                    <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnSubmit_Click" CommandArgument='<%#Eval("UserID") %>' ValidationGroup="Sua" />
                </div>
            </div>
            <br />



        </div>
    </div>

</asp:Content>

