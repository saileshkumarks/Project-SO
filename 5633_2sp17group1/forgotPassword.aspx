<%@ Page Title="" Language="C#" MasterPageFile="~/siteMaster.master" AutoEventWireup="true" CodeFile="forgotPassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" Runat="Server">
    <script>
        function fnExistingUser() {
            alert("Your password has been sent to the email address in file.")
        }
        function fnUnknownUser() {
            alert("Your account email cannot be verified.")
        }
        </script>
    <title>Forgot Password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <h3>PASSWORD RECOVERY</h3>
    <p>Enter Email Address: <asp:TextBox ID="txtEmailAddress" runat="server" /></p>

    <asp:Button ID="btnRecoverPassword" runat="server" Text="Recover Password" OnClick="btnRecoverPassword_Click" />
    
</asp:Content>

