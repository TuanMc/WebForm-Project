<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="ChangeInfo.aspx.cs" Inherits="Admin_ChangeInfo" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <div class="form-horizontal">
        <fieldset>
            <!-- Header -->
            <legend>Product's Infomation</legend>

            <!-- Warning -->
            <asp:Panel ID="pnlTB" runat="server" CssClass="alert alert-danger alert-dismissable fade in" Visible="false">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Item already exist!</strong> 
            </asp:Panel>

            <!-- Success -->
            <asp:Panel ID="pnlUpdate" runat="server" CssClass="alert alert-success alert-dismissable fade in" Visible="false">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>The information is successfully updated!</strong>
            </asp:Panel>

            <!-- Back button -->
            <asp:LinkButton runat="server" ID="lbtnBack" CssClass="btn btn-default" OnClick="lbtnBack_Click">
                <span class="glyphicon glyphicon-backward"></span> Go Back</asp:LinkButton><br />

            
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="name">Name</label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtName" ForeColor="Red" runat="server" ValidationGroup="Upload" />
                <div class="col-md-4">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Enter product's name" CssClass="form-control input-md" />
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label">Price</label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtGia" ForeColor="Red" runat="server" ValidationGroup="Upload" />
                <div class="col-md-4">
                    <asp:TextBox ID="txtGia" runat="server" placeholder="Enter price" class="form-control input-md" />
                </div>
            </div>

            <!-- DDL Supplier -->
            <div class="form-group">
                <label class="col-md-4 control-label">Supplier's name: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlSupplier" ForeColor="Red" runat="server" ValidationGroup="Upload" InitialValue="0" />
                <div class="col-md-4">
                    <asp:DropDownList runat="server" ID="ddlSupplier" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

            <!-- DDL Category -->
            <div class="form-group">
                <label class="col-md-4 control-label">Category's type: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlCategory" ForeColor="Red" runat="server" ValidationGroup="Upload" InitialValue="0" />
                <div class="col-md-4">
                    <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

            <!-- Description -->
            <div class="form-group">
                <label class="col-md-4 control-label">Description</label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtDescription" ForeColor="Red" runat="server" ValidationGroup="Upload" />
                <div class="col-md-4">
                    <asp:TextBox ID="txtDescription" runat="server" class="form-control input-group-sm" />
                </div>
            </div>

            <!-- Upload -->
            <div class="form-group">
                <label class="col-md-4 control-label">Uploads: </label>
                <div class="col-md-4">
                    <asp:FileUpload runat="server" ID="fulImg" />
                    <br />
                    <asp:Image ID="imgSP" ImageUrl="~/Image/5ef0001c44a797976cdb56ffa161aaf6.jpg" runat="server" BorderColor="LightGray" BorderWidth="1px" Style="height: 100px; width: 150px" />
                </div>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="signup"></label>
                <div class="col-md-4">
                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-success" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="Upload" /><br />
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>


