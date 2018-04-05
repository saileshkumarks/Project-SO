<%@ Page Title="" Language="C#" MasterPageFile="~/siteMaster.master" AutoEventWireup="true" CodeFile="ticketsCart.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    <h1>Your Shopping Cart</h1>
    <asp:ListBox ID="lstCart" runat="server"></asp:ListBox>
    <div id="cartbuttons">               
        <asp:Button ID="btnRemove" runat="server" CssClass="button" Text="Remove Item" />
        <br />
        <asp:Button ID="btnEmpty" runat="server" CssClass="button" Text="Empty Cart" />               
    </div>
    <div id="shopbuttons">              
        <asp:Button ID="btnContinue" runat="server" CssClass="button" PostBackUrl="~/Order.aspx" Text="Continue Shopping" />
        <asp:Button ID="btnCheckOut" runat="server" CssClass="button" Text="Check Out"  /><br /><br />
    </div>
    <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label><br />      
</asp:Content>

