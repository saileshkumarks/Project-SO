<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getQuote.aspx.cs" Inherits="IsbnDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="description" content="Books4LifeUSA" />
    <meta name="keywords" content="Books4LifeUSA,Books4Life,Books,4Life,BooksUSA,getquote" />
    <meta name="author" content="K. S. Sailesh Kumar" />
    <link rel="stylesheet" href="styles.css" />
    <script type="text/javascript" src="javascript.js"></script>
    <title>Get Quote</title>
    <script type="text/javascript">
        function sellYourBook()
        {
            alert('Thank you for your business.\nYour account will be updated after we receive the book.\nA confirmation mail has been sent to the email address in our file.')
        }
    </script>
</head>

<body>  <%--Get Quotation from Customer's ISBN--%>
  <form id="formCheckISBN" runat="server">
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

   
    <section>   

        <div id="ISBN_Number">

            ISBN Number:
            <asp:TextBox runat="server" ID="txtISBN" />           
           <%-- <asp:RequiredFieldValidator ID="validIsbnMandatoryCheck" runat="server" Display="Dynamic"
                ErrorMessage="ISBN required!" ControlToValidate="ISBN_submit_button" ForeColor="Red" />            
            <asp:RegularExpressionValidator ID="validIsbnRegularExpCheck" ControlToValidate="ISBN_submit_button" ForeColor="Red"
                Display="Dynamic" ValidationExpression="^978[-][0-9]{10}$"
                ErrorMessage="ISBN number must be in 999-9999999999 format" runat="server" />--%>

             <asp:Button ID="ISBN_submit_button" Text="Check Another ISBN" runat="server" OnClick="ISBN_submit_button_Click" />

            <div id="imageOfEnteredBook">
            <asp:Image runat="server" ID="imgBookImage" AlternateText="Image of your Book!"/>
            </div>

            <table border="0">
                <tr>
                    <td>Title</td>
                    <td><asp:TextBox runat="server" ID="txtTitle" Width="90%" ReadOnly="true"/></td>
                </tr>
                
               <tr>
                   <td>Author</td>
                   <td><asp:TextBox runat="server" ID="txtAuthor" Width="90%" ReadOnly="true"/></td>
                </tr>
                
                <tr>
                    <td>Buy Price</td>
                    <td><asp:TextBox runat="server" ID="txtBuyPrice" Width="90%" ReadOnly="true"/></td>
                </tr>
            </table>

        </div>
        
        <div>
            <asp:Button ID="btnSellBook" Text="Sell this Book" runat="server" OnClick="btnSellBook_Click"/>
                <asp:Button ID="btnCancel" Text="No Thanks" runat="server" OnClick="btnCancel_Click" />

        </div>

    </section>
            </div>
    </form>
</body>
</html>
