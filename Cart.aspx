<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Interface_Pages_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    
    <asp:Panel ID="pnlDN" runat="server" CSSClass="alert alert-danger alert-dismissable fade in" Visible="false">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Danger!</strong> You must log-in to continue this performance.
    </asp:Panel>
    
    <asp:Panel ID="pnlMua" runat="server" CSSClass="alert alert-success alert-dismissable fade in" Visible="false">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Purchase completed!</strong>
    </asp:Panel>

    <!-- Header -->
    <h2>Shopping Cart</h2>

    <div class="container">
        <!-- List Item -->

        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th class="text-center">Price</th>
                    <th class="text-center">Total</th>
                    <th></th>
                </tr>
            </thead>
            <asp:repeater runat="server" id="rptMH">
                <ItemTemplate>
            <tbody>
                <tr>
                    <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <asp:image cssclass="media-object" runat="server" id="imgMH" style="width: 150px; height: 80px;" />
                            <div class="media-body">
                                <h4 class="media-heading">
                                    <asp:label id="lblName" runat="server" />
                                </h4>
                                <span>Status: </span><span class="text-success"><strong>
                                    <asp:Label ID="lblTT" runat="server" /></strong></span>
                            </div>
                        </div>
                    </td>
                    <td class="col-sm-1 col-md-1" style="text-align: center">
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtSL" />
                    </td>
                    <td class="col-sm-1 col-md-1 text-center"><strong>$
                                    <asp:label id="lblPrice" runat="server" />
                    </strong></td>
                    <td class="col-sm-1 col-md-1 text-center"><strong>$<asp:label id="lblSubPrice" runat="server" /></strong></td>
                    <td class="col-sm-1 col-md-1">
                        <asp:Button Text="Remove" class="btn btn-danger" runat="server" ID="btnRemove" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnRemove_ServerClick" />
                    </td>
                </tr>
            </tbody>
            </ItemTemplate>
            </asp:repeater>
        </table>

        <!-- End List Items -->

        <!--  Check out -->
        <table class="table table-hover">
            <tbody>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <h5>Subtotal</h5>
                    </td>
                    <td class="text-right">
                        <h5><strong>$
                        <asp:label id="lblSubTotal" runat="server" />
                        </strong></h5>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <h5>Tax (5%)</h5>
                    </td>
                    <td class="text-right">
                        <h5><strong>$
                            <asp:label id="lblTax" runat="server" />
                        </strong></h5>
                    </td>
                </tr>
                <tr>
                    <td class="col-sm-8 col-md-6"></td>
                    <td class="col-sm-8 col-md-6"></td>
                    <td class="col-sm-8 col-md-6"></td>
                    <td>
                        <h3>Total</h3>
                    </td>
                    <td class="text-right">
                        <h3><strong>$
                                <asp:label id="lblTotalPrice" runat="server" />
                        </strong></h3>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <button type="button" class="btn btn-default" runat="server" id="btnShop" onserverclick="btnShop_click">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping</button>
                    </td>
                    <td class="col-sm-1 col-md-1">
                        <asp:Button Text="Update" class="btn btn-danger" runat="server" ID="btnUpdate" CommandArgument='<%#Eval("ProductID") %>' OnClick="btnUpdate_Click" />
                    </td>
                    <td>
                        <button type="button" class="btn btn-success" id="btnMua" runat="server" onserverclick="btnMua_ServerClick">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button>
                    </td>
                </tr>

            </tbody>
        </table>
        <!-- End Check out -->
    </div>
</asp:Content>


 