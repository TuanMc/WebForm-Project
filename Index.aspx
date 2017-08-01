<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Index" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <div class="container" style="height:500px">
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
    <h3 class="tieude">Laptop</h3>
    <asp:datalist id="dtlSPLoai1" runat="server" repeatcolumns="4" width="100%" repeatdirection="Horizontal">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <div class="item">
                <asp:ImageButton ID="img" ImageUrl='<%#Eval("Picture") %>' PostBackUrl='<%# string.Format("~/ProductDetail.aspx?ma={0}", Eval("ProductID")) %>' runat="server" Height="180px" Width="270px"/><br />
                <br />
                <asp:LinkButton ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" runat="server" CommandArgument='<%#Eval("ProductID") %>' ><%#Eval("ProductName") %></asp:LinkButton><br />
                <br />
                <asp:Label runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                <br />
                <asp:Button runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnMua_Click" />
                <br />
            </div>
        </ItemTemplate>
    </asp:datalist>
    <h3 class="tieude">Gaming Mouse</h3>
    <asp:datalist runat="server" id="dtlSPLoai2" repeatcolumns="4" width="100%" repeatdirection="Horizontal">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <div class="item">
                <asp:ImageButton runat="server" Height="210px" Width="210px" ImageUrl='<%#Eval("Picture") %>'/><br />
                <br />
                <asp:LinkButton ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" CommandArgument='<%#Eval("ProductID") %>' runat="server"><%#Eval("ProductName") %></asp:LinkButton><br />
                <br />
                <asp:Label runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                <br />
                <asp:Button runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnMua_Click" />
                <br />
            </div>
        </ItemTemplate>
    </asp:datalist>
    <h3 class="tieude">Gaming KeyBoard</h3>
    <asp:datalist runat="server" id="dtlSPLoai3" repeatcolumns="4" width="100%" repeatdirection="Horizontal">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <div class="item">
                <asp:ImageButton runat="server" Height="130px" Width="270px" ImageUrl='<%#Eval("Picture") %>'/><br />
                <br />
                <asp:LinkButton ForeColor="Red" Font-Bold="true" OnClick="lbtnTenSP_Click" CommandArgument='<%#Eval("ProductID") %>' runat="server"><%#Eval("ProductName") %></asp:LinkButton><br />
                <br />
                <asp:Label runat="server" Font-Bold="true"><%#Eval("Price") %></asp:Label><br />
                <br />
                <asp:Button runat="server" Height="30px" Text="Add to Cart" Width="200px" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnMua_Click" />
                <br />
            </div>
        </ItemTemplate>
    </asp:datalist>
</asp:Content>

