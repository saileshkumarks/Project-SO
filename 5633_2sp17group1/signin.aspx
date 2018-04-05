<%@ Page Title="" Language="C#" MasterPageFile="~/siteMaster.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" Runat="Server">
    <script>
        function fnUserExists() { alert("Your Email Address is already registered in out database. Please Login.") }
        function fnLoginWelcome() { alert("Thank you for registering. You can now login.") }
        function fnNotRegistered() { alert("Sorry. Our records show that you are not already registerd with us. Please Register.") }
        function fnInvalidCredentials() { alert("Invalid username or password. Please try again.") }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <p>Username: <asp:TextBox ID="txtLoginUsername" runat="server" /></p>
    <p>Password: <asp:TextBox ID="txtLoginPassword" TextMode="Password" runat="server" /></p>
    <asp:Button Text="Login" ID="btnLogin" runat="server" OnClick="Unnamed1_Click" />
    <asp:LinkButton ID="linkForgotPassword" Text="Forgot Passsword?" runat="server" />

    <h4>REGISTER</h4>
    <p>Name: <asp:TextBox ID="txtName" runat="server" /></p>
    <p>Address: <asp:TextBox ID="txtAddress" runat="server" /></p>
    <p>Phone: <asp:TextBox ID="txtPhone" runat="server" /> </p>
    <p>Email: <asp:TextBox ID="txtEmail" runat="server" /></p>
    <p>Create Username: <asp:TextBox ID="txtCreateUsername" runat="server" /></p>
    <p>Create Password: <asp:TextBox ID="txtCreatePassword" TextMode="Password" runat="server" /></p>
    <asp:Button ID="btnCreateAccount" Text="Register" runat="server" OnClick="btnCreateAccount_Click" />

   
</asp:Content>

