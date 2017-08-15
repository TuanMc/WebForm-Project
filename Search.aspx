<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">

    <!-- Breadscrumb -->
    <div class="breadcrumb">
        <span style="font-size:25px">Results for: </span>
        <asp:label id="lblTK" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    
    <!-- No item found warning -->
    <asp:Panel ID="pnlTB" runat="server" CSSClass="alert alert-danger alert-dismissable fade in" Visible="false">
        <strong>No item found!</strong> 
    </asp:Panel>

    <!-- DataList Products -->
    <asp:DataList ID="dtlSP" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
        <ItemStyle HorizontalAlign="Left" />
            <ItemTemplate>
                <div style="margin-top: 50px; margin-bottom: 50px;" class="text-center">
                    <asp:ImageButton ID="img" ImageUrl='<%#Eval("Picture") %>' PostBackUrl='<%# string.Format("~/Home/ProductDetail?ma={0}", Eval("ProductID")) %>' runat="server" Height="120px" Width="220px" /><br />
                    <br />
                    <asp:LinkButton ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" CommandArgument='<%#Eval("ProductID") %>' runat="server"><%#Eval("ProductName") %></asp:LinkButton><br />
                    <br />
                    <asp:Label runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                    <br />
                    <asp:LinkButton CssClass="btn btn-warning" runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="lbtnTenSP_Click"  />
                    <br />
                </div>
            </ItemTemplate>
        </asp:datalist>
</asp:Content>

