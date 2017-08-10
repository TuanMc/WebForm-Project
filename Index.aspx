<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Index" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <div class="container" style="height: 500px">
        <div id="myCarousel" class="carousel slide " data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active" style="left: 0; top: 0px; height: 400px">
                    <img src="Image/parts-banner2-1.png" style="width: 100%" />
                </div>
                <div class="item" style="left: 0; top: 0px; height: 400px">
                    <img src="Image/parts-banner2-1.png" style="width: 100%" />

                </div>
                <div class="item" style="left: 0; top: 0px; height: 400px">
                    <img src="Image/parts-banner2-1.png" style="width: 100%" />

                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>

    <script>   
        $('#myCarousel').carousel({
            interval: 4500
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <asp:Repeater ID="rptSP" runat="server">
        <ItemTemplate>
            <br />
            <fieldset>
                <legend><%#Eval("CategoryName") %></legend>

                <asp:DataList ID="dtlSP" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
                    <ItemStyle HorizontalAlign="Center"/>
                    <ItemTemplate>
                        <div style="margin-top: 50px; margin-bottom: 50px">
                            <asp:ImageButton ID="img" ImageUrl='<%#Eval("Picture") %>' PostBackUrl='<%# string.Format("~/ProductDetail.aspx?ma={0}", Eval("ProductID")) %>' runat="server" Height="120px" Width="220px" /><br />
                            <br />
                            <asp:LinkButton ForeColor="Red" Font-Bold="true" ID="lbtnTen" runat="server" OnClick="lbtnTenSP_Click" CommandArgument='<%#Eval("ProductID") %>'><%#Eval("ProductName") %></asp:LinkButton><br />
                            <br />
                            <asp:Label runat="server" Font-Bold="true">$<%#Eval("Price") %></asp:Label><br />
                            <br />
                            <asp:Button runat="server" ID="btnMua" Height="30px" CssClass="btn btn-warning" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnMua_Click"/>
                            <br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

