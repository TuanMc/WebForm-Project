<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="CategoryMng.aspx.cs" Inherits="Admin_CategoryMng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:Panel runat="server" GroupingText="Add Category">
        <asp:Label runat="server" ID="lblTB" Font-Bold="true" ForeColor="Red"></asp:Label>
        <br />
        Name:
        <br />
        <br />
        <asp:TextBox runat="server" ID="txtTen" Height="25px"></asp:TextBox>
        <br />
        <br />
        <asp:Button runat="server" ID="btnThem" OnClick="btnThem_Click" Text="Add" Width="65px"/>
    </asp:Panel>

    <h3>Categories' Info</h3>
    <asp:GridView runat="server" ID="grvLoai" AutoGenerateColumns="False" Width="259px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black" CssClass="Middle">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="CategoryID" />
            <asp:BoundField HeaderText="Category Name" DataField="CategoryName" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <br />
    

</asp:Content>


