<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="OrderDetailMng.aspx.cs" Inherits="Admin_OrderDetailMng" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <fieldset>
        <legend>Order Details</legend>
        <asp:LinkButton runat="server" ID="lbtnBack" CssClass="btn btn-default" PostBackUrl="~/Admin/OrderMng.aspx">
                <span class="glyphicon glyphicon-backward"></span> Go Back</asp:LinkButton>
        <br />
        <br />
        <asp:GridView runat="server" ID="grvCTHD" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-list" Width="85%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                <asp:BoundField DataField="UserID" HeaderText="User ID" />
                <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" />
                <asp:BoundField DataField="ShippedDate" HeaderText="Shipped Date" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" />
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
    </fieldset>
</asp:Content>


