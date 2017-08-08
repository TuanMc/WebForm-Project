<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="ProductMng.aspx.cs" Inherits="Admin_ProductMng" %>



<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <br />
    <fieldset>
        <legend>Products</legend>

        <asp:LinkButton runat="server" ID="lbtnThemSP" PostBackUrl="~/Admin/ChangeInfo.aspx" CssClass="btn btn-success">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add New Product</asp:LinkButton>

        <asp:GridView runat="server" ID="grvSP" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-list" Width="85%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID" />
                <asp:TemplateField HeaderText="Supplier">
                    <ItemTemplate>
                        <asp:Label ID="lblSP" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <ItemTemplate>
                        <asp:Label ID="lblLoai" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                <asp:BoundField DataField="Price" HeaderText="Unit Price" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnEdit" runat="server" CommandArgument='<%#Eval("ProductID") %>' OnClick="lbtnEdit_Click">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="btnXoa" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnXoa_Click">Delete</asp:LinkButton>
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
        </asp:GridView>
    </fieldset>
    
    <div id="divKQ">
    </div>

</asp:Content>


