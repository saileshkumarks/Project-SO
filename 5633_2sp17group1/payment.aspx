<%@ Page Title="" Language="C#" MasterPageFile="~/siteMaster.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" Runat="Server">
    <script>
        function fnConfirmation() { alert("Your ticket is confirmed. You will get a confirmation email shortly...") }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    
    <h3>TICKET QTY</h3>
    <p>Enter Ticket Qty: <asp:TextBox ID="txtTicketQty" runat="server" /></p>
    <p>Ticket Price: <asp:Label ID="lblticketPrice" runat="server" /></p>
    <asp:Button ID="btnPriceCalc" runat="server" Text="Ticket Price!" OnClick="btnPriceCalc_Click" />
    
    <h3>PAYMENTS</h3>
    <p>Card Number: <asp:TextBox ID="txtcardNumber" runat="server" /></p>
    <p>Cardholder name: <asp:TextBox ID="txtCardholderName" runat="server" /></p>
    <p>Expiry Date: <asp:TextBox ID="txtCardExpiryDate" runat="server" /></p>
    <asp:Button ID="btnSubmitPay" Text="Pay" runat="server" OnClick="btnSubmitPay_Click" />

    <asp:Button ID="btnGotoHome" Text="Home" runat="server" OnClick="btnGotoHome_Click" />
</asp:Content>

