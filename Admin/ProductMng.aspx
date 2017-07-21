<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="ProductMng.aspx.cs" Inherits="Admin_ProductMng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <h3>Product's Info</h3>
    <asp:LinkButton runat="server" ID="lbtnThemSP" PostBackUrl="~/Admin/ChangeInfo.aspx" Text="Add New Product"></asp:LinkButton>
    <br />
    <br />
    <asp:Gridview runat="server" ID="grvSP" AutoGenerateColumns="False" Height="216px" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
        <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
        <asp:BoundField DataField="Price" HeaderText="Unit Price" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lbtnEdit" runat="server" Text="Edit" Onclick="lbtnEdit_Click" CommandArgument='<%#Eval("ProductID") %>'></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton runat="server" ID="btnXoa" Text="Delete" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnXoa_Click" />
            </ItemTemplate>
        </asp:TemplateField>
        

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
    
    <br />
    <br />
    <asp:LinkButton ID="lbtnReturnHome" runat="server" PostBackUrl="~/Pages/Default.aspx" Text="Back to Home Page"></asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSide" runat="Server">
<asp:LinkButton runat="server" ID="lbtnDX" Text="Log out" PostBackUrl="~/Log In/LogIn.aspx"></asp:LinkButton>
</asp:Content>

