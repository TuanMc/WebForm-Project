<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="ChangeInfo.aspx.cs" Inherits="Admin_ChangeInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <asp:LinkButton runat="server" ID="lbtnBack" Text="Go Back" OnClick="lbtnBack_Click"></asp:LinkButton>
    <br />
    <asp:Label runat="server" ID="lblTB" Font-Bold="true" ForeColor="Red"></asp:Label>
    <br />
    <table style="height: 364px">
        <tr>
            <td>Name: </td>
            <td>
                <asp:TextBox runat="server" ID="txtName" placeholder="Product's Name" Width="63%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="(*)" Font-Bold="True" ForeColor="Red" ValidationGroup="Need"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Price: </td>
            <td>
                <asp:TextBox runat="server" ID="txtGia" placeholder="Product's Price" Width="63%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="txtGia" ErrorMessage="(*)" Font-Bold="True" ForeColor="Red" ValidationGroup="Need"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Supplier Name: </td>
            <td>
                <asp:DropDownList runat="server" ID="ddlSupplier" Width="65%"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvSupplier" runat="server" ControlToValidate="ddlSupplier" ErrorMessage="(*)" Font-Bold="True" ForeColor="Red" ValidationGroup="Need" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Category Name:</td>
            <td>
                <asp:DropDownList runat="server" ID="ddlCategory" Width="65%"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory" ErrorMessage="(*)" Font-Bold="True" ForeColor="Red" ValidationGroup="Need" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 46px">Upload Image: </td>
            <td style="height: 46px">
                <asp:FileUpload runat="server" ID="fulImg" Width="95%" />
            </td>
        </tr>
        <tr>
            <td style="height: 79px">Description: </td>
            <td style="height: 79px">
                <asp:TextBox ID="txtDescription" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button runat="server" ID="btnSubmit" Text="Add" OnClick="btnSubmit_Click" Width="87px" ValidationGroup="Need"/>
            </td>
        </tr>
    </table>
</asp:Content>


