<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Store.Register" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="lblFirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Placeholder="Enter First Name" />
                        </div>
                    </div>
    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="lblLastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Placeholder="Enter Last Name" />
                        </div>
                    </div>
    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="lblUserName" CssClass="col-md-2 control-label">User Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" Placeholder="Enter User Name" />
                        </div>
                    </div>
     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="lblPassword" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Placeholder="Enter Password" />
                        </div>
                    </div>
    
     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="lblAdress" CssClass="col-md-2 control-label">Adress</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtAdress" runat="server" CssClass="form-control" Placeholder="Adress" />
                        </div>
                    </div>
    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="lblGender" CssClass="col-md-2 control-label">Gender</asp:Label>
                        <div class="col-md-10">
                            <asp:RadioButton ID="RadioButton1" runat="server" CssClass="form-control" Text="Male"/>
                            <asp:RadioButton ID="RadioButton2" runat="server" CssClass="form-control" Text="Female" />
                            <asp:RadioButton ID="RadioButton3" runat="server" CssClass="form-control" Text="Other" />
                        </div>
                    </div>
    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="lblEmail" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="example@examle.com"/>
                        </div>
                    </div>
    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="lblPhone" CssClass="col-md-2 control-label">Phone</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Placeholder="+977-012-345-6789" />
                        </div>
                    </div>
    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-default" OnClick="btnRegister_Click" />
</asp:Content>