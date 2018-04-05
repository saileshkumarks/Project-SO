<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="description" content="Books4LifeUSA" />
    <meta name="keywords" content="Books4LifeUSA,Books4Life,Books,4Life,BooksUSA,contactus" />
    <meta name="author" content="K. S. Sailesh Kumar" />
    <link rel="stylesheet" href="styles.css"/>    
    <script type="text/javascript" src="javascript.js"></script>    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>    
    <script>
        $(document).ready(function () {
            $.ajax({
                type: 'GET',
                url: 'contactUs.xml',
                dataType: 'xml',
                success: function (xml) {

                    $(xml).find('info').each(function ()
                    {
                        $('#contactDetails').append
                            (
             '<table>' +
                '<tr>' +
                    '<td>Contact Phone</td>'+
                    '<td>' + $(this).attr('contact-phone') + '</td>' +
                '</tr>'+

                '<tr>' +
                    '<td>Contact Email</td>' +
                    '<td id="contactEmail">' + $(this).attr('contact-email') + '</td>' +
                '</tr>'+

                '<tr>' +
                    '<td>Mailing Address</td>' + 
                    '<td id="contactAdddress">' + $(this).attr('address-street') + '  ' + $(this).attr('address-city') + '  ' + $(this).attr('address-state') + '  ' + $(this).attr('address-zip') + '</td>' +
                '</tr>'+

            '</table>');                                               
                    });
                }
            });
        });

    </script>

    <title>CONTACT US - Books 4 Life @ USA</title>

</head>

<body>  <%--Reads contact information from XML file--%>
      
    <section id="contactUsSection">

        <div class="smallBanner">
    
            <hgroup class="hgroupSmallBanner">
                <h1>Books4LifeUSA.com</h1>
                <h3>Sell Your Books Right Here!!!</h3>
            </hgroup>
       
        </div>

        <div id="smallBannerContactHelp">

            <ul class="removeBullet">

                <li>Have Questions ?</li>
                <li>We can help you:</li>
                <li>CALL us at: 18-BOOKS4LIFE</li>
                <li>E-mail us: help@books4lifeusa.com</li>

            </ul>

        </div>  

    </section>

    <br/>

    <section id="contactsSection">

        <div id="contactDetails"></div>

        <br />

        <div class="back2home">
            <button onclick="backHome()">Back to Main Page</button>            
        </div>

    </section>
</body>
</html>
