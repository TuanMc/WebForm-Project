<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="OrderDetailMng.aspx.cs" Inherits="Admin_OrderDetailMng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3>Order Detail</h3>
    <asp:LinkButton Text="Go Back" ID="lbtnBack" runat="server" PostBackUrl="~/Admin/OrderMng.aspx"/>
    <br />
    <br />
    <asp:Gridview runat="server" ID="grvCTHD" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black" CssClass="Middle">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
        <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
        <asp:BoundField DataField="OrderDate" HeaderText="Order Date" />
        <asp:BoundField DataField="ShipDate" HeaderText="Shipped Date" />
        <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
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
    </asp:Gridview>
</asp:Content>


