<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <div class="breadcrumb">
        <span style="font-size:25px">Results for: </span>
        <asp:label id="lblTK" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <asp:label id="lblTB" runat="server" font-bold="true" forecolor="Red"></asp:label>
    <asp:datalist id="dtlSP" runat="server" repeatcolumns="4" width="100%" repeatdirection="Horizontal">
            <ItemStyle HorizontalAlign="Center" />
            <ItemTemplate>
                <div class="item">
                    <asp:ImageButton ID="img" ImageUrl='<%#Eval("Picture") %>' PostBackUrl='<%# string.Format("~/ProductDetail.aspx?ma={0}", Eval("ProductID")) %>' runat="server" Height="150px" Width="250px" /><br />
                    <br />
                    <asp:LinkButton ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" CommandArgument='<%#Eval("ProductID") %>' runat="server"><%#Eval("ProductName") %></asp:LinkButton><br />
                    <br />
                    <asp:Label runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                    <br />
                    <asp:LinkButton CssClass="btn btn-default" runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="lbtnTenSP_Click"  />
                    <br />
                </div>
            </ItemTemplate>
        </asp:datalist>
</asp:Content>

