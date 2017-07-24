<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="ChangeUser.aspx.cs" Inherits="Admin_ChangeUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <asp:LinkButton runat="server" ID="lbtnBack" Text="Go Back" PostBackUrl="~/Admin/UserMng.aspx"></asp:LinkButton>
    <br />
    <asp:Label runat="server" ID="lblTB" Font-Bold="true" ForeColor="Red"></asp:Label>
    <br />
    <table style="height: 364px">
        <tr>
            <td>Username: </td>
            <td>
                <asp:TextBox runat="server" ID="txtName" Width="63%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password: </td>
            <td>
                <asp:TextBox runat="server" ID="txtMK" Width="63%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>First Name: </td>
            <td>
                <asp:TextBox runat="server" ID="txtFName" Width="63%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td>
                <asp:TextBox runat="server" ID="txtLName" Width="63%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox runat="server" ID="txtEmail" Width="63%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td>
                <asp:TextBox runat="server" ID="txtPhone" Width="63%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 46px">Upload Avatar: </td>
            <td style="height: 46px">
                <asp:FileUpload runat="server" ID="fulImg" Width="95%" />
            </td>
        </tr>
        <tr>
            <td>Role:</td>
            <td>
                <asp:DropDownList runat="server" ID="ddlRole"></asp:DropDownList></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" Width="87px" />
            </td>
        </tr>
    </table>
</asp:Content>


