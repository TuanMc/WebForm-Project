<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Pages_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
   
    <!-- Breadcrumb -->
    <div class="breadcrumb">
        <span style="font-size: 25px">Change Profile </span>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">

    <!-- Login warning -->
    <asp:Panel ID="pnlDN" runat="server" CssClass="alert alert-danger alert-dismissable fade in" Visible="false">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Danger!</strong> You must log-in to continue this performance.
    </asp:Panel>

    <!-- Update complete -->
    <asp:Panel ID="pnlUpdate" runat="server" CssClass="alert alert-success alert-dismissable fade in" Visible="false">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Your information is successfully updated!</strong>
    </asp:Panel>

    <div class="container">
        <div class="form-horizontal">

            <!-- First Name -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">First Name</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtFN" runat="server" placeholder="First name" CssClass="form-control input-md" />
                </div>
            </div>

            <!-- Last Name -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">Last Name</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtLN" runat="server" placeholder="Last name" CssClass="form-control input-md" />
                </div>
            </div>

            <!-- Username -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">Username</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtUN" runat="server" placeholder="Username" CssClass="form-control input-md" Text='<%#Eval("Username") %>' />
                </div>
            </div>

            <!-- Password -->
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

            <!-- Check Password -->
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

            <!-- Email -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">
                    Email 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="Sua"></asp:RequiredFieldValidator>
                </label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Incorrect format (ie: user@gmail.com)" Font-Bold="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Sua"></asp:RegularExpressionValidator>
                &nbsp;
                    <div class="col-md-4">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control input-md" Text='<%#Eval("Email") %>' />
                    </div>
            </div>

            <!-- Phone -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">
                    Phone
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="Sua"></asp:RequiredFieldValidator>
                </label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Incorrect format (ie: 555 444 6789)" ForeColor="Red" ValidationExpression="\(?\d+\)?[-.\s]?\d+[-.\s]?\d+" ValidationGroup="Sua"></asp:RegularExpressionValidator>
                <div class="col-md-4">
                    <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone" CssClass="form-control input-md" Text='<%#Eval("Phone") %>' />
                </div>
            </div>

            <!-- Address -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textinput">
                    Address
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddr" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="Sua"></asp:RequiredFieldValidator>
                </label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtAddr" runat="server" placeholder="Address" CssClass="form-control input-md" Text='<%#Eval("Address") %>' />
                </div>
            </div>

            <!-- Submit Button -->
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

