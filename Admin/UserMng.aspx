<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="UserMng.aspx.cs" Inherits="Admin_UserMng" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <fieldset>


        <!-- Header -->
        <legend>User's Information</legend>
       
        <!-- Block success -->
        <asp:Panel ID="pnlXoa" runat="server" CssClass="alert alert-danger alert-dismissable fade in" Visible="false">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>User was blocked!</strong> 
        </asp:Panel>

        <!-- GridView Accounts -->
        <asp:GridView runat="server" ID="grvND" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-list" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical"
            AllowPaging="true" PageSize="10" OnPageIndexChanging="grvND_PageIndexChanging">
            <PagerStyle CssClass="pagination-ys" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField Visible="false">
                    <ItemTemplate>
                        <asp:HiddenField ID="hdfMa" runat="server" Value='<%#Eval("RoleID") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Username" DataField="Username" />
                <asp:TemplateField HeaderText="Role">   
                    <ItemTemplate>
                        <asp:Label ID="lblRole" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Email" DataField="Email" />
                <asp:BoundField HeaderText="Phone" DataField="Phone" />
                <asp:BoundField HeaderText="Address" DataField="Address" />
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


