<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="ChangeUser.aspx.cs" Inherits="Admin_ChangeUser" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <div class="form-horizontal">
        <fieldset>
            <legend>User's Infomation</legend>

            <asp:LinkButton runat="server" ID="lbtnBack" CssClass="btn btn-default" PostBackUrl="UserMng.aspx">
                <span class="glyphicon glyphicon-backward"></span> Go Back</asp:LinkButton>
            
            <div class="form-group">
                <label class="col-md-4 control-label" for="name">Username: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtName" ForeColor="Red" runat="server" ValidationGroup="Change"/>
                <div class="col-md-4">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control input-md" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Password: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtMK" ForeColor="Red" runat="server" ValidationGroup="Change"/>
                <div class="col-md-4">
                    <asp:TextBox ID="txtMK" runat="server" CssClass="form-control input-md" />
                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label">First name: </label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="txtFName" CssClass="form-control input-md"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Last Name: </label>
                <div class="col-md-4">
                    <asp:TextBox runat="server" ID="txtLName" CssClass="form-control input-md"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Email: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="Red" runat="server" ValidationGroup="Change"/>
                <div class="col-md-4">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control input-sm" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Phone: </label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtPhone" runat="server" class="form-control input-sm" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Role: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlRole" ForeColor="Red" runat="server" ValidationGroup="Change" />
                <div class="col-md-4">
                    <asp:DropDownList runat="server" ID="ddlRole" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="signup"></label>
                <div class="col-md-4">
                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-success" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="Change"/> 
                    <asp:Label ID="lblTB" runat="server" />
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>


