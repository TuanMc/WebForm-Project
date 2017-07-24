<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%-- Add content controls here --%>

<asp:Content ID="Content3" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="Server">
<asp:Repeater ID="rptSP" runat="server">
    <ItemTemplate>
        <asp:HiddenField runat="server" ID="hdfMa" Value='<%#Eval("CategoryID") %>' />
            <h3 class="tieude" runat="server" id="h3TenDM">
                <%#Eval("CategoryName") %>
            </h3>
            <asp:DataList runat="server" ID="dtlSP" RepeatColumns="3">
                <ItemTemplate>
                    <asp:ImageButton ID="ibtnSP" runat="server" OnClick="ibtnSP_Click" CommandArgument='<%#Eval("ProductID") %>' />
                    <br /> <br />
                    <asp:Label ID="lblTenSP" Font-Bold="true" runat="server" />
                    <asp:Label ID="lblGiaSP" ForeColor="Red" Font-Bold="true" runat="server" />
                </ItemTemplate>
            </asp:DataList>
    </ItemTemplate>
</asp:Repeater>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSide" runat="Server">
</asp:Content>
