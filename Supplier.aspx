<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Supplier.aspx.cs" Inherits="Supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <ol class="breadcrumb">
        <li><a href="Index.aspx">Home</a></li>
        <li><a href="#">
            <asp:Label ID="lblTenDM" runat="server"></asp:Label></a></li>
    </ol>
    <asp:DataList ID="dtlSP" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <div style="margin-top:50px; margin-bottom:50px">
                <asp:ImageButton ID="img" ImageUrl='<%#Eval("Picture") %>' PostBackUrl='<%# string.Format("~/ProductDetail.aspx?ma={0}", Eval("ProductID")) %>' runat="server" Height="180px" Width="320px" /><br />
                <br />
                <asp:LinkButton ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" CommandArgument='<%#Eval("ProductID") %>' runat="server"><%#Eval("ProductName") %></asp:LinkButton><br />
                <br />
                <asp:Label runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                <br />
                <asp:Button runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnMua_Click" />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

