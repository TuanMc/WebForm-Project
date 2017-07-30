<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="User_Control_WebUserControl" %>

<nav class="navbar navbar-default" role="navigation">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <a class="navbar-brand" href="Index.aspx">Home</a>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Product<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="Product.aspx?cid=1">Laptop</a></li>
                    <li class="divider"></li>
                    <li><a href="Product.aspx?cid=2">Mouse</a></li>
                    <li class="divider"></li>
                    <li><a href="Product.aspx?cid=3">Keyboard</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Suppliers<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="Supplier.aspx?sid=2">Razer</a></li>
                    <li class="divider"></li>
                    <li><a href="Supplier.aspx?sid=3">Logitech</a></li>
                    <li class="divider"></li>
                    <li><a href="Supplier.aspx?sid=4">Asus</a></li>
                    <li class="divider"></li>
                    <li><a href="Supplier.aspx?sid=1">MSI</a></li>
                </ul>
            </li>
        </ul>
        <div class="col-sm-3 col-md-3">
            <form class="navbar-form" role="search">
                <div class="input-group">
                    <asp:TextBox runat="server" CssClass="form-control" Placeholder="Search" ID="txtSearch" />
                    <div class="input-group-btn">
                        <button runat="server" class="btn btefault" id="btnSeach" onserverclick="btnSeach_ServerClick">
                            <i class="glyphicon glyphicon-search" style="left: 0px; top: 1px; width: 20px"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle active" data-toggle="dropdown">Hello, <%#Eval("Username") %><b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="Cart.aspx"><i class="fa fa-shopping-cart fa-2x icon" aria-hidden="true" style="padding-right: 15px; padding-left: 0px;"></i>Cart</a></li>
                    <li class="divider"></li>
                    <li><a href="Account.aspx"><i class="fa fa-user fa-2x icon" aria-hidden="true" style="padding-right: 15px; padding-left: 0px;"></i>Account</a></li>
                    <li class="divider"></li>
                    <li><a href="Log%20In/LogIn.aspx"><i class="fa fa-sign-out fa-2x icon" aria-hidden="true" style="padding-right: 15px; padding-left: 0px;"></i>Log out</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>
