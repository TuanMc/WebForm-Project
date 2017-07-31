<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="User_Control_WebUserControl" %>

<div class="col-sm-3 col-md-3">
    <div class="input-group">
        <asp:TextBox runat="server" CssClass="form-control" Placeholder="Search" ID="txtSearch" />
        <div class="input-group-btn">
            <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-default" Text="Search" OnClick="btnSeach_ServerClick" />
        </div>
    </div>
</div>

