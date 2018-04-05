using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRecoverPassword_Click(object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;

        int customerStatus = 0; // 0 - New user, 1 - Existing user


        SqlConnection SqlServerConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["groupDBCS"].ConnectionString);
        string recovery_query = "SELECT A.PASSWORD FROM dbo.USER_CREDENTIALS A WHERE A.EMAIL = '" + txtEmailAddress.Text + "';";
        SqlCommand cmd = new SqlCommand(recovery_query, SqlServerConnection);
        SqlServerConnection.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        string pwd = "hello";

        SqlServerConnection.Close();
        SqlServerConnection.Dispose();

        String msgTo = txtEmailAddress.Text;
        String msgSubject = "We have recovered your password!";
        String msgBody = "Dear Valued Customer,\nYou are receiving this email because a you requested to recover your password.\nYour current password is : " + pwd + "\nThank You.\nEasyAs123BookBuyers.com Team";
        MailMessage mailObj = new MailMessage();
        mailObj.Body = msgBody;
        mailObj.From = new MailAddress("saileshwebappdev@gmailcom", "UltraBus.com Team");
        mailObj.To.Add(new MailAddress(msgTo));
        mailObj.Subject = msgSubject;
        mailObj.IsBodyHtml = true;
        SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
        SMTPClient.Host = "smtp.gmail.com";
        SMTPClient.Port = 587;
        SMTPClient.Credentials = new NetworkCredential("saileshwebappdev@gmail.com", "123testing");
        SMTPClient.EnableSsl = true;
        try
        { SMTPClient.Send(mailObj); }
        catch (Exception ex)
        { txtEmailAddress.Text = ex.ToString(); }


        foreach (User user in allUsersList)
        {
            if (user.emailAddress == txtEmailAddress.Text)
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