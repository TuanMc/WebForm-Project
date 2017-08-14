<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="OrderMng.aspx.cs" Inherits="Admin_OrderMng" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <fieldset>
        <legend>Orders</legend>
       
        <asp:GridView runat="server" ID="grvHD" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-list" Width="85%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black"
            AllowPaging="true" PageSize="10" OnPageIndexChanging="grvHD_PageIndexChanging">
            <PagerStyle CssClass="pagination-ys" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField Visible="false">
                    <ItemTemplate>
                        <asp:HiddenField ID="hdfMa" Value ='<%#Eval("OrderID") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                <asp:BoundField DataField="UserID" HeaderText="User ID" />
                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" />
                <asp:BoundField DataField="ShippedDate" HeaderText="Shipped Date" />
                <asp:TemplateField HeaderText="Shipped">
                    <ItemTemplate>
                        <asp:Button ID="btnShipped" runat="server" Text="Shipped" OnClick="btnShipped_Click" CommandArgument='<%#Eval("OrderID") %>'></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnDetail" runat="server" Text="Detail" OnClick="lbtnDetail_Click" CommandArgument='<%#Eval("OrderID") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
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


