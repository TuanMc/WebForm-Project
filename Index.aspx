<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <img src="Image/parts-banner2-1.png" style="height:300px; width:100%"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <h3 class="tieude">Laptop</h3>
    <asp:DataList ID="dtlSPLoai1" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <div class="item">
                <asp:ImageButton ID="imSP" runat="server" Height="210px" Width="210px" /><br />
                <br />
                <asp:LinkButton ID="lbtnTenSP" ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" runat="server"><%#Eval("ProductName") %></asp:LinkButton><br />
                <br />
                <asp:Label ID="lblGia" runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                <br />
                <asp:Button ID="btnMua" runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnMua_Click" />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <h3 class="tieude">Gaming Mouse</h3>
    <asp:DataList runat="server" ID="dtlSPLoai2" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <div class="item">
                <asp:ImageButton ID="imSP" runat="server" Height="210px" Width="210px" /><br />
                <br />
                <asp:LinkButton ID="lbtnTenSP" ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" runat="server"><%#Eval("ProductName") %></asp:LinkButton><br />
                <br />
                <asp:Label ID="lblGia" runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                <br />
                <asp:Button ID="btnMua" runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnMua_Click" />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <h3 class="tieude">Gaming KeyBoard</h3>
    <asp:DataList runat="server" ID="dtlSPLoai3" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <div class="item">
                <asp:ImageButton ID="imSP" runat="server" Height="210px" Width="210px" /><br />
                <br />
                <asp:LinkButton ID="lbtnTenSP" ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" runat="server"><%#Eval("ProductName") %></asp:LinkButton><br />
                <br />
                <asp:Label ID="lblGia" runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                <br />
                <asp:Button ID="btnMua" runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnMua_Click" />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

