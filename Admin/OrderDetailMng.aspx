<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="OrderDetailMng.aspx.cs" Inherits="Admin_OrderDetailMng" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <fieldset>

        <!-- Header -->
        <legend>Order Details</legend>

        <!-- Back button -->
        <asp:LinkButton runat="server" ID="lbtnBack" CssClass="btn btn-default" PostBackUrl="~/Admin/OrderMng.aspx">
                <span class="glyphicon glyphicon-backward"></span> Go Back</asp:LinkButton>
        
        <!-- Gridview Order Details -->
        <asp:GridView runat="server" ID="grvCTHD" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-list" Width="85%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black"
            AllowPaging="true" PageSize="10" OnPageIndexChanging="grvCTHD_PageIndexChanging">
            <PagerStyle CssClass="pagination-ys" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField Visible="false">
                    <ItemTemplate>
                        <asp:HiddenField runat="server" ID="hdfMa" Value='<%#Eval("UserID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField Visible="false">
                    <ItemTemplate>
                        <asp:HiddenField runat="server" ID="hdfMaSP" Value='<%#Eval("ProductID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="lblSP" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" />
                <asp:TemplateField HeaderText="Phone Cont.">
                    <ItemTemplate>
                        <asp:Label ID="lblPhone" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address Cont.">
                    <ItemTemplate>
                        <asp:Label ID="lblAddr" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="Numeric" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </fieldset>
</asp:Content>


