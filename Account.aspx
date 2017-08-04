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
                    <label class="col-md-4 control-label" for="textinput">Password</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtPass" runat="server" Type="Password" placeholder="Password" CssClass="form-control input-md" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Re-Password</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtRePass" runat="server" Type="Password" placeholder="Password" CssClass="form-control input-md" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Email</label>
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
                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnSubmit_Click" CommandArgument='<%#Eval("UserID") %>' />
                    </div>
                </div>
                <br />
                


            </div>
    </div>

</asp:Content>

