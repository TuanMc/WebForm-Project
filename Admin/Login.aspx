<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:Panel runat="server" ID="pnlTTDN" GroupingText="Thong Tin Dang Nhap">
        <asp:Label runat="server" ID="lblUser" Text="Username:"></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtDN"></asp:TextBox>
        <br />
        <br />
        <asp:Label runat="server" ID="LblMK" Text="Password:"></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtMK" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button Text="Log In" runat="server" ID="btnDN" OnClick="btnDN_Click"/>
        <br />
        <br />
        <asp:Label runat="server" ID="lblTB" ForeColor="Red"></asp:Label>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSide" Runat="Server">
</asp:Content>

