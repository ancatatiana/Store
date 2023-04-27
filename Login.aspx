<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Store.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


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
                        <asp:Label runat="server" AssociatedControlID="lblEmail" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="example@examle.com"/>
                        </div>
                    </div>
    
    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-default" OnClick="btnLogin_Click" />
</asp:Content>
