<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="ChangeInfo.aspx.cs" Inherits="Admin_ChangeInfo" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <br />
    <div class="form-horizontal">
        <fieldset>
            <!-- Form Name -->
            <legend>Product's Infomation</legend>

            <asp:LinkButton runat="server" ID="lbtnBack" CssClass="btn btn-default" OnClick="lbtnBack_Click">
                <span class="glyphicon glyphicon-backward"></span> Go Back</asp:LinkButton>
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="name">Name</label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtName" ForeColor="Red" runat="server" ValidationGroup="Upload"/>
                <div class="col-md-4">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Enter product's name" CssClass="form-control input-md" />
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label">Price</label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtGia" ForeColor="Red" runat="server" ValidationGroup="Upload"/>
                <div class="col-md-4">
                    <asp:TextBox ID="txtGia" runat="server" placeholder="Enter price" class="form-control input-md" />
                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label">Supplier's name: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlSupplier" ForeColor="Red" runat="server" ValidationGroup="Upload" InitialValue="0"/>
                <div class="col-md-4">
                    <asp:DropDownList runat="server" ID="ddlSupplier" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Category's type: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlCategory" ForeColor="Red" runat="server" ValidationGroup="Upload" InitialValue="0"/>
                <div class="col-md-4">
                    <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Description</label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtDescription" ForeColor="Red" runat="server" ValidationGroup="Upload"/>
                <div class="col-md-4">
                    <asp:TextBox ID="txtDescription" runat="server" class="form-control input-group-sm" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Uploads: </label>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="fulImg" ForeColor="Red" runat="server" ValidationGroup="Upload"/>
                <div class="col-md-4">
                    <asp:FileUpload runat="server" ID="fulImg" />
                    <br />
                    <asp:Image ID="imgSP" ImageUrl="~/Image/5ef0001c44a797976cdb56ffa161aaf6.jpg" runat="server" BorderColor="LightGray" BorderWidth="1px" Style="height: 100px; width: 100px" />
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="signup"></label>
                <div class="col-md-4">
                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-success" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="Upload"/> 
                    <asp:Label ID="lblTB" runat="server" />
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>


