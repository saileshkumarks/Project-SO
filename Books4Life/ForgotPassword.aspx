<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="description" content="Books4LifeUSA" />
    <meta name="keywords" content="Books4LifeUSA,Books4Life,Books,4Life,BooksUSA,forgotpassword" />
    <meta name="author" content="K. S. Sailesh Kumar" />
    <link rel="stylesheet" href="styles.css"/>
    <script type="text/javascript" src="javascript.js"></script>
    <script>
        function fnExistingUser()
        {
            alert("Your password has been sent to the email address in file.")
        }
        function fnUnknownUser()
        {
            alert("Your account email cannot be verified.")
        }
        </script>
    <title>Forgot Password</title>
</head>

<body>  <%--Recover Forgot Password--%>
     <form id="formForgotPassword" runat="server">
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

    <div class="HeaderLine">       
       <h3 style="width:70%; float:left">Password Recovery</h3>
    </div>

    <section>
       <div id="divForgotPassword" style="background-color:#464141; padding: 8px 10px 10px 10px; align-content:space-between;">
           Email Address: 
           <asp:TextBox ID="txtLoginEmailAddress" runat="server" width="35%" AutoPostBack="True" ></asp:TextBox>
           <asp:Button ID="btnLogin" Text="Recover Password" runat="server" OnClick="btnLogin_Click"/> <br /><br />
           <a href="Default.aspx" id="ToolTip_01">Go Back to Main Page</a>
       </div>
    </section>

    </div>
    </form>
</body>
</html>
