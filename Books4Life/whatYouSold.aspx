<%@ Page Language="C#" AutoEventWireup="true" CodeFile="whatYouSold.aspx.cs" Inherits="whatYouSold" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <meta name="description" content="Books4LifeUSA" />
    <meta name="keywords" content="Books4LifeUSA,Books4Life,Books,4Life,BooksUSA,isbn" />
    <meta name="author" content="K. S. Sailesh Kumar" />
    <link rel="stylesheet" href="styles.css"/>
    <script type="text/javascript" src="javascript.js"></script>
    <title>What is ISBN? - Books 4 Life @ USA</title>

</head>
<body>
    <form id="formWhatYouSold" runat="server">
   <div>
    <header>
        <hgroup>
            <h1>Books4LifeUSA.com</h1>
            <h3>Sell Your Books Right Here!!!</h3>
        </hgroup>

        <div id="contactHelp">
            <ul class="removeBullet">
                <li>Have Questions ?</li>
                <li>We can help you:</li>
                <li>CALL us at: 18-BOOKS4LIFE</li>
                <li>E-mail us: help@books4lifeusa.com</li>
            </ul>
        </div>
    </header>

<%--    <div class="HeaderLine">       
       <h4 style="width:150px; float:left">User Name: </h4>
        <asp:Label ID="lblWhatYouSoldUserName" runat="server" Width="150px" style="float:left"/>

        <h4 style="width:300px; float:left">User Email Address: </h4>
        <asp:Label ID="lblWhatYouSoldUserEmailAddress" runat="server" Width="200px" style="float:left" />
       <%--<p style="width:30%; float:left">
           <a id="linkLogin" href="javascript:loginToggle();" style="text-decoration:none; background-color:orangered; padding: 5px 10px 10px 10px;">Already have an Account? LOGIN here</a>
       </p>--%>
   <%-- </div>--%>--%>

       <section>
            <asp:Table ID="tblUserWhatYouSold" runat="server" Font-Size="X-Large" BackColor="Black"
            BorderColor="Black" BorderWidth="1" ForeColor="Black" CellPadding="5" CellSpacing="5">

                <asp:TableRow runat="server" ForeColor="Black" BackColor="LightSteelBlue" Font-Bold="true">
                    <asp:TableCell><h4 style="width:150px; float:left">User Name: </h4></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="TableRow1" runat="server" BackColor="White">
                    <asp:TableCell><asp:Label ID="lblWhatYouSoldUserName" runat="server" Width="150px" style="float:left"/></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" ForeColor="Black" BackColor="LightSteelBlue" Font-Bold="true">
                    <asp:TableCell><h4 style="width:300px; float:left">User Email Address: </h4></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="TableRow3" runat="server" BackColor="White">
                    <asp:TableCell><asp:Label ID="lblWhatYouSoldUserEmailAddress" runat="server" Width="200px" style="float:left" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

           <asp:GridView ID="gridViewUserTransactions" runat="server" Height="129px" Width="247px"></asp:GridView>

           <asp:Button ID="btnWhatYouSoldMainPage" runat="server" Text="Goto Main Page" OnClick="btnWhatYouSoldMainPage_Click"/>
           <asp:Button ID="btnWhatYouSoldSellAnotherBook" runat="server" Text="Sell Another Book" OnClick="btnWhatYouSoldSellAnotherBook_Click"/>

       </section>
    </div>
    </form>
</body>
</html>
