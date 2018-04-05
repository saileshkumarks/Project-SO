<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginOrRegister.aspx.cs" Inherits="LoginOrRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="description" content="Books4LifeUSA" />
    <meta name="keywords" content="Books4LifeUSA,Books4Life,Books,4Life,BooksUSA,login,register" />
    <meta name="author" content="K. S. Sailesh Kumar" />
    <link rel="stylesheet" href="styles.css"/>
    <script type="text/javascript" src="javascript.js"></script>
    <script>
        function fnUserExists() { alert("Your Email Address is already registered in out database. Please Login.") }
        function fnLoginWelcome() { alert("Thank you for registering. You can now login.") }
        function fnNotRegistered() { alert("Sorry. Our records show that you are not already registerd with us. Please Register.") }
        function fnInvalidCredentials() { alert("Invalid username or password. Please try again.") }
    </script>
    <title>Register - Books4LifeUSA.com</title>
</head>

<body>
    <form id="formLoginOrRegister" runat="server">
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
       <h3 style="width:70%; float:left">Just few steps...</h3>
       <%--<p style="width:30%; float:left">
           <a id="linkLogin" href="javascript:loginToggle();" style="text-decoration:none; background-color:orangered; padding: 5px 10px 10px 10px;">Already have an Account? LOGIN here</a>
       </p>--%>
    </div>

    <section>
       <div id="divLogin" style="/*display:none;*/ background-color:#464141; padding: 8px 10px 10px 10px;">
           <h3 style="text-decoration:none; background-color:orangered; padding: 5px 10px 10px 10px;">Already have and Account ? Login here</h3>
           
           <asp:Panel ID="panelLogin" runat="server">

               <table id="tblLogin">
                   <tr>
                       <td style="width:115px">
                           Email Address<span class="mandatoryRed">*</span>
                       </td>
                       <td style="width:325px">
                           <asp:TextBox ID="txtLoginUsername" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="validMadatoryUsername" runat="server" ErrorMessage="Username Required!" 
                               Display="Dynamic" class="loginCredValidation" ValidationGroup="groupLogin" ControlToValidate="txtLoginUsername" />
                       </td>
                   </tr>
                   <tr>
                       <td>
                           Password<span class="mandatoryRed">*</span>
                       </td>
                       <td>
                           <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="validMadatoryPasssword" runat="server" ErrorMessage="Password Required!"
                               Display="Dynamic" class="loginCredValidation" ValidationGroup="groupLogin" ControlToValidate="txtLoginPassword" />
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Button ID="btnLogin" Text="LOGIN" runat="server" ValidationGroup ="groupLogin" OnClick="btnLogin_Click"/>
                       </td>
                       <td>
                           <asp:Button ID="btnForgotPwd" Text="FORGOT PASSWORD" runat="server" 
                            OnClick="btnForgotPwd_Click" />
                       </td>
                   </tr>
            </table>

           </asp:Panel>                   
           
       </div>

        <asp:Panel ID="panelRegister" runat="server">

        <div id="divRegPersonal">
            <h3 style="text-align:left">Personal Information</h3>
            <p>Please tell us a little about yourself. This information is 
                <span class="broadBlack"><b>only</b></span>used to <span class="broadBlack"><b>pay</b></span>
                you, provide a <span class="broadBlack"><b>free shipping label</b></span> and to 
                <span class="broadBlack"><b>communicate with you</b></span>.</p>
        </div>
        
        <table border="0">
            <tr>
                <td style="width:115px">Your Name<span class="mandatoryRed">*</span></td>
                <td style="width:325px">
                    <asp:TextBox runat="server" ID="txtName" Width="200px"/>
                    <asp:RequiredFieldValidator ID="validRegisterName" ControlToValidate="txtName" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" ErrorMessage="Name required!"/> 
                </td>
            </tr>
            
            <tr>
                <td>Address Line 1<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtAddressLine1" Width="400px"/>
                    <asp:RequiredFieldValidator ID="validRegisterAddressLine1" ControlToValidate="txtAddressLine1" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" ErrorMessage="Address is required!"/> 
                </td>
            </tr>
            
            <tr>
                <td>Address Line 2</td>
                <td><asp:TextBox runat="server" ID="txtAddressLine2" Width="400px"/></td>
            </tr>
            
            <tr>
                <td>City<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtCity" Width="100px"/>
                    <asp:RequiredFieldValidator ID="validRegisterCity" ControlToValidate="txtCity" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" ErrorMessage="City is required!"/> 
                </td>
            </tr>

            <tr>
                <td>Zip<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtZip" Width="75px"/>
                    <asp:RequiredFieldValidator ID="validRegisterMandatoryZip" ControlToValidate="txtZip" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" ErrorMessage="Zip Code is required!"/>
                    <asp:RegularExpressionValidator ID="validRegisterZip" ControlToValidate="txtZip" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" 
                        ErrorMessage="Please eneter a VALID Zip Code!"
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
                <asp:DropDownList id="ddlState" runat="server" Width="150px">
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

        <div id="divRegLogin">
            <h3 style="text-align:left">Login Information</h3>
        </div>

        <table border="0" id="tblRegister">
            <tr>
                <td style="width:135px">Email Address<span class="mandatoryRed">*</span></td>
                <td style="width:350px">
                    <asp:TextBox runat="server" ID="txtRegEmail" Width ="250px"/>
                    <asp:RequiredFieldValidator ID="validMandatoryRegEmail" ControlToValidate="txtRegEmail" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" ErrorMessage="Email Address required!"/>
                    <asp:RegularExpressionValidator ID="validRegExpEmailAddress" ControlToValidate="txtRegEmail" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" 
                        ErrorMessage="Please enter a valid Email Address!" 
                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"/>
                </td>
            </tr>
            <tr>
                <td>Password<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtRegPwd" TextMode="Password"/>
                    <asp:RequiredFieldValidator ID="validMandatoryRegPassword" ControlToValidate="txtRegPwd" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" ErrorMessage="Password required!"/>
                </td>
            </tr>
            <tr>
                <td>Confirm Password<span class="mandatoryRed">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password"/>
                    <asp:RequiredFieldValidator ID="validMandatoryRegConfirmPassword" ControlToValidate="txtConfirmPassword" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" ErrorMessage="Password required!"/>
                    <asp:RegularExpressionValidator ID="validRegExpConfirmPassword" ControlToValidate="txtConfirmPassword" runat="server" 
                        Display="Dynamic" class="validationErrors" ValidationGroup="groupRegister" ErrorMessage="Password must be between 8 and 10 characters, at least 1 digit, 1 alphabet and no special chaaracters!"
                        ValidationExpression="((?=.*\d)(?=.*[A-Za-z])(?!.*\W).{8,10})" />
                    <%--ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"--%>
                    <asp:CompareValidator ID="validCompareRegConfirmPassword" ControlToValidate="txtConfirmPassword" runat="server" 
                        ControlToCompare="txtRegPwd"  Display="Dynamic" class="validationErrors" 
                        ValidationGroup="groupRegister" 
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
        
        
        <asp:Button ID="btnMainPage" Text="Goto Main Page" runat="server" OnClick="btnMainPage_Click" />
        <asp:Button ID="btnCompleteReg" Text="Complete Registration" runat="server" ValidationGroup="groupRegister" OnClick="btnCompleteReg_Click"/>

      </asp:Panel>
    </section>

    </div>
    </form>
</body>
</html>
