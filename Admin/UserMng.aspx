<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="UserMng.aspx.cs" Inherits="Admin_UserMng" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <br />
    <fieldset>
        <legend>User's Information</legend>
       
        <asp:GridView runat="server" ID="grvND" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-list" Width="85%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="ID" DataField="UserID" />
                <asp:BoundField HeaderText="Username" DataField="Username" />
                <asp:BoundField HeaderText="Password" DataField="Password" />
                <asp:BoundField HeaderText="Email" DataField="Email" />
                <asp:BoundField HeaderText="Phone" DataField="Phone" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lbtnEdit" Text="Edit" CommandArgument='<%#Eval("UserID") %>' OnClick="lbtnEdit_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lbtnBlock" Text="Block" CommandArgument='<%#Eval("UserID") %>' OnClick="lbtnBlock_Click"></asp:LinkButton>
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
</asp:Content>


