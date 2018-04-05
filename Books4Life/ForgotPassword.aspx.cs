using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.UI;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;

        int customerStatus = 0; // 0 - New user, 1 - Existing user


        SqlConnection SqlServerConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        string isbn_query = "SELECT A.UserPassword FROM dbo.KaraikurichS_WADfl15_Users A WHERE A.EmailAddress = '" + txtLoginEmailAddress.Text + "';";
        SqlCommand cmd = new SqlCommand(isbn_query, SqlServerConnection);
        SqlServerConnection.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        string pwd = "hello";

        SqlServerConnection.Close();
        SqlServerConnection.Dispose();

        String msgTo = txtLoginEmailAddress.Text;
        String msgSubject = "We have recovered your password!";
        String msgBody = "Dear Valued Customer,\nYou are receiving this email because a you requested to recover your password.\nYour current password is : " + pwd + "\nThank You.\nEasyAs123BookBuyers.com Team";
        MailMessage mailObj = new MailMessage();
        mailObj.Body = msgBody;
        mailObj.From = new MailAddress("saileshwebappdev@gmailcom", "Books4LifeUSA.com Team");
        mailObj.To.Add(new MailAddress(msgTo));
        mailObj.Subject = msgSubject;
        mailObj.IsBodyHtml = true;
        SmtpClient SMTPClient = new SmtpClient();
        SMTPClient.Host = "smtp.gmail.com";
        SMTPClient.Port = 587;
        SMTPClient.Credentials = new NetworkCredential("saileshwebappdev@gmail.com", "$ashaandAlexis7");
        SMTPClient.EnableSsl = true;
        try
        { SMTPClient.Send(mailObj); }
        catch (Exception ex)
        { txtLoginEmailAddress.Text = ex.ToString(); }

        
        foreach (User user in allUsersList)
        {
            if (user.emailAddress == txtLoginEmailAddress.Text)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), 
                    "Existing User", "fnExistingUser()", true);
                customerStatus = 1;

               

                break;
            }
        }

        if (customerStatus == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), 
                "Unknown User", "fnUnknownUser()", true);
        }            
    }

}