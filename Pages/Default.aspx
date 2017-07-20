<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%-- Add content controls here --%>

<asp:Content ID="Content3" ContentPlaceHolderID="cphHead" runat="server">
    <div class="container">
        <img src="../Image/header.jpg" />
    </div>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="Server">
    <h3 class="tieude">Laptop</h3>
    <asp:DataList ID="ddlSP" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="0" DataKeyField="ProductID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Height="319px" Style="margin-top: 0px" Width="769px">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:Image ID="imgHinh" runat="server" Height="100px" Width="100px" />
            <br />
            <asp:HyperLink ID="hplTen" runat="server" Font-Bold="True" NavigateUrl='<% #Eval("ProductID", "ProductDetail.aspx?ProductID={0}") %>' Text='<%# Eval("ProductName") %>'></asp:HyperLink>
            <br />
            <asp:Label ID="lblGia" runat="server" Font-Bold="True" Text='<%# Eval("Price", "{0:N0}") %>' ForeColor="Red" />
            <br />
            <br />
        </ItemTemplate>

    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SanPhamDBConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="CategoryID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
     <h3 class="tieude">Mouse</h3>
    <asp:DataList ID="DataList2" runat="server" 
        RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="0" 
        DataKeyField="ProductID" DataSourceID="SqlDataSource2" 
        HorizontalAlign="Center" Height="319px" 
        Style="margin-top: 0px" Width="769px">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:Image ID="imgHinh" runat="server" Height="100px" Width="100px" />
            <br />
            <asp:HyperLink ID="hplTen" runat="server" Font-Bold="True" NavigateUrl='<% #Eval("ProductID", "ProductDetail.aspx?ProductID={0}") %>' Text='<%# Eval("ProductName") %>'></asp:HyperLink>
            <br />
            <asp:Label ID="lblGia" runat="server" Font-Bold="True" Text='<%# Eval("Price", "{0:N0}") %>' ForeColor="Red" />
            <br />
            <br />
        </ItemTemplate>

    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SanPhamDBConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="CategoryID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
     <h3 class="tieude">Keyboard</h3>
    <asp:DataList ID="DataList3" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" CellPadding="0" 
        DataKeyField="ProductID" 
        DataSourceID="SqlDataSource3" HorizontalAlign="Center" 
        Height="319px" Style="margin-top: 0px" Width="769px">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:Image ID="imgHinh" runat="server" Height="100px" Width="100px" />
            <br />
            <asp:HyperLink ID="hplTen" runat="server" Font-Bold="True" NavigateUrl='<% #Eval("ProductID", "ProductDetail.aspx?ProductID={0}") %>' Text='<%# Eval("ProductName") %>'></asp:HyperLink>
            <br />
            <asp:Label ID="lblGia" runat="server" Font-Bold="True" Text='<%# Eval("Price", "{0:N0}") %>' ForeColor="Red" />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SanPhamDBConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="CategoryID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSide" runat="Server">
</asp:Content>
