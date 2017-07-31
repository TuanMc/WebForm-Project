<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="Page_ProductDetail" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <!-- Breadcrumb -->
    <ol class="breadcrumb">
        <li><a href="Index.aspx">Home</a></li>
        <li><a href="#">
            <asp:label id="lblTenDM" runat="server"></asp:label>
        </a></li>
        <li><a href="#">
            <asp:label id="lblTenSP" runat="server"></asp:label>
        </a></li>
    </ol>
    <!-- End Breadcrumb -->

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="col-md-3 col-lg-3 " align="center">
                    <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-rounded">
                </div>

            </div>
            <div class="col-md-8">
                <h2><asp:Label runat="server" ID="lblTen"></asp:Label></h2>
                <div class=" col-md-9 col-lg-9 ">
                    <table class="table table-user-information">
                        <tbody>
                            <tr>
                                <td>Supplier:</td>
                                <td><asp:Label runat="server" ID="lblNCC"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Status:</td>
                                <td><asp:Label runat="server" ID="lblTT"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Price:</td>
                                <td><asp:Label runat="server" ID="lblGia"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Quantity:</td>
                                <td>
                                    <asp:textbox runat="server" cssclass="form-control" style="width: 50px" id="txtSL">1</asp:textbox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:button cssclass="btn btn-default" style="width: 150px" text="Add to cart" id="btnAdd" runat="server" />
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>

</asp:Content>


