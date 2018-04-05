<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ISBN.aspx.cs" Inherits="ISBN" %>

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

   

        <div id="isbnDetails">

            <h2>How do I find my book's ISBN?</h2>

            <p>Your book's ISBN number can usually be found on the back of the book above the barcode.</p>

            <img src="images/isbn.png" style="height:150px; width:200px" />

            <p>An ISBN can be 10 or 13 digit number and Books4LifeUSA.com pricing tool accepts both.
                If your book does not have a barcode or a sticker is covering the barcode you can usually find the ISBN inside of the front title page were you would find publisher information.
                Books published before 1970 do not have ISBN numbers and we cannot buy them.
            </p>

        </div>

        <div class="back2home">
            <button onclick="backHome()">Back to Main Page</button>            
        </div>

    </section>
</body>
</html>
