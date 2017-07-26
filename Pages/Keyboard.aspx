<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Keyboard.aspx.cs" Inherits="Interface_Pages_Keyboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
<asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="699px">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemTemplate>
            <br />
            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl='<%# Eval("ProductID", "ProductDetail.aspx?ProductID={0}") %>' Text='<%# Eval("ProductName") %>'></asp:HyperLink>
            <br />
            <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" ForeColor="#FF3300" Text='<%# Eval("Price", "{0:N0}") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SanPhamDBConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="CategoryID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


