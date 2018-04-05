<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userAccount.aspx.cs" Inherits="userAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="description" content="View or Edit User Detials" />
    <meta name="keywords" content="Books4LifeUSA,Books4Life,Books,4Life,BooksUSA,login,register" />
    <meta name="author" content="K. S. Sailesh Kumar" />
    <link rel="stylesheet" href="styles.css"/>
    <script type="text/javascript" src="javascript.js"></script>
    <script>
       
    </script>
    <title>Register - Books4LifeUSA.com</title>
</head>
<body>
    <form id="formUserAccountDetails" runat="server">
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
       <h3 style="width:70%; float:left">Your Account Informtion</h3>
       <%--<p style="width:30%; float:left">
           <a id="linkLogin" href="javascript:loginToggle();" style="text-decoration:none; background-color:orangered; padding: 5px 10px 10px 10px;">Already have an Account? LOGIN here</a>
       </p>--%>
    </div>

    <section>
        <asp:Panel ID="panelUpdate" runat="server">
        <div id="divUpdatePersonal">
            <h3 style="text-align:left">Personal Information</h3>
            <p>If you wish you can update the account information and then click <span class="broadBlack"><b>Update</b></span> or <span class="broadBlack"><b>Update and Goto Main Page</b></span> button below</p>
        </div>
        
        <table border="0">
            <tr>
                <td style="width:115px">Your Name<span class="mandatoryRed">*</span></td>
                <td style="width:325px">
                    <asp:TextBox runat="server" ID="txUpdatetName" Width="200px" ReadOnly="true"/>                   
                </td>
            </tr>
            
            <tr>
                <td>Address Line 1<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtUpdateAddressLine1" Width="400px"/>
                    <asp:RequiredFieldValidator ID="validUpdateAddressLine1" ControlToValidate="txtUpdateAddressLine1" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupUpdate" ErrorMessage="Address is required!"/> 
                </td>
            </tr>
            
            <tr>
                <td>Address Line 2</td>
                <td><asp:TextBox runat="server" ID="txtUpdateAddressLine2" Width="400px"/></td>
            </tr>
            
            <tr>
                <td>City<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtUpdateCity" Width="100px"/>
                    <asp:RequiredFieldValidator ID="validUpdateCity" ControlToValidate="txtUpdateCity" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupUpdate" ErrorMessage="City is required!"/> 
                </td>
            </tr>

            <tr>
                <td>Zip<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtUpdateZip" Width="75px"/>
                    <asp:RequiredFieldValidator ID="validUpdateMandatoryZip" ControlToValidate="txtUpdateZip" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupUpdate" ErrorMessage="Zip Code is required!"/>
                    <asp:RegularExpressionValidator ID="validUpdateZip" ControlToValidate="txtUpdateZip" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupUpdate" ErrorMessage="Please eneter a VALID Zip Code!"
                        ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$" />
                </td>
            </tr>

            <tr>
                <td>State</td>
                <td>                
                <%-- DataSource="<% databindingexpression %>"
                DataTextField="DataSourceField"
                DataValueField="DataSourceField"
                AutoPostBack="True|False"
                OnSelectedIndexChanged="OnSelectedIndexChangedMethod"--%>
                <asp:DropDownList id="ddlUpdateState" runat="server" Width="150px">
                    <asp:ListItem value="-1" selected="True">Select your US State</asp:ListItem>
                    <asp:ListItem value="AL">AL</asp:ListItem><asp:ListItem value="AK">AK</asp:ListItem><asp:ListItem value="AZ">AZ</asp:ListItem>
                    <asp:ListItem value="AR">AR</asp:ListItem><asp:ListItem value="CA">CA</asp:ListItem><asp:ListItem value="CO">CO</asp:ListItem>
                    <asp:ListItem value="CT">CT</asp:ListItem><asp:ListItem value="DE">DE</asp:ListItem><asp:ListItem value="FL">FL</asp:ListItem>
                    <asp:ListItem value="GA">GA</asp:ListItem><asp:ListItem value="HI">HI</asp:ListItem><asp:ListItem value="ID">ID</asp:ListItem>
                    <asp:ListItem value="IL">IL</asp:ListItem><asp:ListItem value="IN">IN</asp:ListItem><asp:ListItem value="IA">IA</asp:ListItem>
                    <asp:ListItem value="KS">KS</asp:ListItem><asp:ListItem value="KY">KY</asp:ListItem><asp:ListItem value="LA">LA</asp:ListItem>
                    <asp:ListItem value="ME">ME</asp:ListItem><asp:ListItem value="MD">MD</asp:ListItem><asp:ListItem value="MA">MA</asp:ListItem>
                    <asp:ListItem value="MI">MI</asp:ListItem><asp:ListItem value="MN">MN</asp:ListItem><asp:ListItem value="MS">MS</asp:ListItem>
                    <asp:ListItem value="MO">MO</asp:ListItem><asp:ListItem value="MT">MT</asp:ListItem><asp:ListItem value="NE">NE</asp:ListItem>
                    <asp:ListItem value="NV">NV</asp:ListItem><asp:ListItem value="NH">NH</asp:ListItem><asp:ListItem value="NJ">NJ</asp:ListItem>
                    <asp:ListItem value="NM">NM</asp:ListItem><asp:ListItem value="NY">NY</asp:ListItem><asp:ListItem value="NC">NC</asp:ListItem>
                    <asp:ListItem value="ND">ND</asp:ListItem><asp:ListItem value="OH">OH</asp:ListItem><asp:ListItem value="OK">OK</asp:ListItem>
                    <asp:ListItem value="OR">OR</asp:ListItem><asp:ListItem value="PA">PA</asp:ListItem><asp:ListItem value="RI">RI</asp:ListItem>
                    <asp:ListItem value="SC">SC</asp:ListItem><asp:ListItem value="SD">SD</asp:ListItem><asp:ListItem value="TN">TN</asp:ListItem>
                    <asp:ListItem value="TX">TX</asp:ListItem><asp:ListItem value="UT">UT</asp:ListItem><asp:ListItem value="VT">VT</asp:ListItem>
                    <asp:ListItem value="VA">VA</asp:ListItem><asp:ListItem value="WA">WA</asp:ListItem><asp:ListItem value="WV">WV</asp:ListItem>
                    <asp:ListItem value="WI">WI</asp:ListItem><asp:ListItem value="WY">WY</asp:ListItem>
                </asp:DropDownList>                    
                </td>
            </tr>
         </table>

        <hr />

        <div id="divUpdateLogin">
            <h3 style="text-align:left">Login Information</h3>
        </div>

        <table border="0" id="tblUpdateLogin">
            <tr>
                <td style="width:135px">Email Address<span class="mandatoryRed">*</span></td>
                <td style="width:350px">
                    <asp:TextBox runat="server" ID="txtUpdateEmail" Width ="250px" ReadOnly="true" />                    
                </td>
            </tr>
            <tr>
                <td>Password<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtUpdatePwd" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="validMandatoryUpdatePassword" ControlToValidate="txtUpdatePwd" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupUpdate" ErrorMessage="Password required!"/>
                </td>
            </tr>
            <tr>
                <td>Confirm Password<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtUpdateConfirmPassword" TextMode="Password"/>
                    <asp:RequiredFieldValidator ID="validMandatoryUpdateConfirmPassword" ControlToValidate="txtUpdateConfirmPassword" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupUpdate" ErrorMessage="Password required!"/>
                    <asp:RegularExpressionValidator ID="validUpdateExpConfirmPassword" ControlToValidate="txtUpdateConfirmPassword" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupUpdate" ErrorMessage="Password must be between 8 and 10 characters, at least 1 digit, 1 alphabet and no special chaaracters!"
                        ValidationExpression="((?=.*\d)(?=.*[A-Za-z])(?!.*\W).{8,10})" />
                    <%--ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"--%>
                    <asp:CompareValidator ID="validCompareUpdateConfirmPassword" ControlToValidate="txtUpdateConfirmPassword" runat="server" 
                        ControlToCompare="txtUpdatePwd"  Display="Dynamic" class="validationErrors" ValidationGroup="groupUpdate" 
                        ErrorMessage="Passwords did not match!"/>
                </td>
            </tr>
        </table>

        <hr />

        <div id="divRegPayMeBy">
            <h3 style="text-align:left">Pay me by</h3>
            
            <div id="RadioBtnPayMe" style="align-items:initial">
            <asp:RadioButtonList ID="btnPaymentMethod" runat="server">
                <asp:ListItem Text="Check" Value="Check"></asp:ListItem>
                <asp:ListItem Text="PayPal" Value="Paypal" Selected="True"></asp:ListItem>
            </asp:RadioButtonList>            
            </div>
        </div>

        <asp:Button ID="btnUserAccountMainPage" Text="Goto Main Page" runat="server" OnClick="btnUserAccountMainPage_Click" />
        <asp:Button ID="btnUserAccountUpdate" Text="Update" runat="server" ValidationGroup="groupUpdate" OnClick="btnUserAccountUpdate_Click" />
        <asp:Button ID="btnUserAccountCompleteReg" Text="Update and Goto Main Page" runat="server" ValidationGroup="groupUpdate" OnClick="btnUserAccountCompleteReg_Click" />

      </asp:Panel>
    </section>

    </div>
    </form>
</body>
</html>
