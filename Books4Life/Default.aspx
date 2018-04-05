<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="stylesheet" href="styles.css"/>
    <script type="text/javascript" src="javascript.js"></script>
    <meta name="description" content="Books4LifeUSA" />
    <meta name="keywords" content="Books4LifeUSA,Books4Life,Books,4Life,home" />
    <meta name="author" content="K. S. Sailesh Kumar" />
    <title>Books 4 Life @ USA</title>
</head>

<body> <%--Home Page--%>
 <form id="formDefault" defaultfocus="ISBN" runat="server">
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

    <nav>
        <ul>
            <li><a href="faq.aspx">FAQ</a></li>
            <li><a href="contactUs.aspx">CONTACT US</a></li>
            <%--<li><a href="#">YOUR ACCOUNT</a></li>
            <li><a href="#">WHAT YOU SOLD ?</a></li>
            <li><a id="liRegister" href="LoginOrRegister.aspx">REGISTER</a></li>
            <li><a id="liLogin" href="LoginOrRegister.aspx">LOGIN</a></li>--%>

            <li><asp:LinkButton ID="linkBtnYourAccount" Text="YOUR ACCOUNT" 
                    runat="server" CausesValidation="false" OnClick="lnkBtnYourAccount_Click" /></li>
            <li><asp:LinkButton ID="linkBtnWhatYouSold" Text="WHAT YOU SOLD?" 
                runat="server" CausesValidation="false" OnClick="lnkBtnWhatYouSold_Click" /></li>

            <li><asp:LinkButton ID="linkBtnRegister" Text="REGISTER" 
                    runat="server" OnClick="linkBtnRegister_Click" CausesValidation="false" /></li>
            <li><asp:LinkButton ID="linkBtnLogin" Text="LOGIN" 
                runat="server" OnClick="linkBtnLogin_Click" CausesValidation="false" /></li>
            <li><asp:LinkButton ID="linkBtnLogout" Text="LOGOUT" 
                runat="server" OnClick="linkBtnLogout_Click" CausesValidation="false" /></li>
            
            <%--<li><asp:Label runat="server" ID="Label1" ForeColor="OrangeRed"></asp:Label></li> //For saying "Hello"--%>
            <li> <asp:Label runat="server" ID="lblCustomerName" class="loginCredValidation"></asp:Label></li>
            <li><asp:Label runat="server" ID="lblWelcomeNote" class="loginCredValidation"></asp:Label></li>
        </ul>
    </nav>

    <section>
        <div id="enterISBN">
            <p id="ISBN_00">Quickly check how much $$$$$ you could get for YOUR Book</p>
            
            Enter ISBN Number<span class="mandatoryRed">*</span>:    
            <asp:TextBox runat="server" ID="txtISBNDefault" />
            <asp:RequiredFieldValidator ID="validIsbnMandatory" runat="server" Display="Dynamic"
                ErrorMessage="ISBN required!" ControlToValidate="txtISBNDefault" ForeColor="Red" />            
            <asp:RegularExpressionValidator ID="validIsbnRegularExp" ControlToValidate="txtISBNDefault" ForeColor="Red" Display="Dynamic"
                ValidationExpression="^978[-][0-9]{10}$" ErrorMessage="ISBN number must be in 999-9999999999 format" runat="server" />
            
            <br /><br />
            
            <asp:Button id="btnIsbnSubmit" Text="Get Quote" runat="server" OnClick="ISBN_submit_button_Click" />          

            <p id="ToolTip_00">What is ISBN Number? <a href="ISBN.aspx" id="click_here">Click Here</a></p>
        </div>

        <hr />

        <div id="advertisement">

            <p><span class="cost">Worry about shipping costs?</span></p>
            <p><span class="bill"><b>WE PAY</b></span> for YOUR shipping. YES!!!</p>
            <p>We have paid out Millions of <span class="bill"><b>$$$$$</b></span></p>

            <table>
                <tr>
                    <td class="rowDefault">
                        <span class="offers"><b>BEST PRICE:</b></span> We update our  prices continuously to offer the best price online!
                    </td>                    
                    <td class="rowDefault">
                        <span class="offers"><b>FREE SHIPPING:</b></span> We always offer Free Shipping. Print a label and you are done!
                    </td>                    
                    <td class="rowDefault">
                        <span class="offers"><b>PAYMENT:</b></span> We pay fast! All payments are processed within three business days of your item arriving!
                    </td>
                </tr>
            </table>
        </div>

        <hr />

        <div id="payments">
            <img id="imgVisa" src="images/payments/visa.png" alt="Visa" class="finance" />
            <img id="imgMasterCard" src="images/payments/mastercard.png" alt="Master Card" class="finance" />
            <img id="imgAmEx" src="images/payments/amex.png" alt="American Express" class="finance" />
            <img id="imgPayPal" src="images/payments/paypal.png" alt="PayPal" class="finance" />
            <img id="imgDiscoverNetwork" src="images/payments/discover.png" alt="Discover Network" class="finance" />
        </div>

        <hr />

        <div id="AdvertisementSecion">
            <asp:AdRotator ID="BookSellerAdImage1" runat="server" Target="_blank" AdvertisementFile="~/Ads1.xml" Height="75px" Width="175px" />
            <asp:AdRotator ID="BookSellerAdImage2" runat="server" Target="_blank" AdvertisementFile="~/Ads2.xml" Height="75px" Width="175px" />
            <asp:AdRotator ID="BookSellerAdImage3" runat="server" Target="_blank" AdvertisementFile="~/Ads3.xml" Height="75px" Width="175px" />
        </div>

    </section>
         </div>
     </form>
</body>
</html>