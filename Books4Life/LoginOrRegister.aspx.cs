using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginOrRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtLoginUsername.Focus();
    }
    protected void btnMainPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void btnForgotPwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ForgotPassword.aspx");
    }
    protected void btnCompleteReg_Click(object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;

        int userStatus = 0; // 0 - New user, 1 - Existing user

        foreach (User user in allUsersList)
        {
            if (user.emailAddress == txtRegEmail.Text)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "registered user", "fnUserExists()", true);
                userStatus = 1;
                break;
            }
        }

        if(userStatus == 0)
        {
            User newCustomer = new User();
            newCustomer.name = txtName.Text;
            newCustomer.addressLine1 = txtAddressLine1.Text;
            newCustomer.addressLine2 = txtAddressLine2.Text;
            newCustomer.city = txtCity.Text;
            newCustomer.state = ddlState.Text;
            newCustomer.zip = txtZip.Text;
            newCustomer.emailAddress = txtRegEmail.Text;
            newCustomer.password = txtRegPwd.Text;
            allUsersList.Add(newCustomer);
            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "new user logon", "fnLoginWelcome()", true);
            //txtName.Text = String.Empty;
            //txtAddressLine1.Text = String.Empty;
            //txtAddressLine2.Text = String.Empty;
            //txtCity.Text = String.Empty;
            //ddlState.SelectedIndex = 0;
            //txtZip.Text = String.Empty;
            //txtRegEmail.Text = String.Empty;
            //txtRegPwd.Text = String.Empty;


            SqlConnection SqlServerConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
            string insert_user_deatils_query = "INSERT INTO dbo.KaraikurichS_WADfl15_Users " +
            "(EmailAddress, UserPassword, Name, AddressLine1, AddressLine2, City, Zip, UserState) " +
            "VALUES " +
            "('" + txtRegEmail.Text + "', '" + 
            txtRegPwd.Text + "', '" + 
            txtName.Text + "', '" + 
            txtAddressLine1.Text + "', '" + 
            txtAddressLine2.Text + "', '" + 
            txtCity.Text + "', '" + 
            txtZip.Text + "', '" +
            ddlState.Text + "');";
            SqlCommand cmd = new SqlCommand(insert_user_deatils_query, SqlServerConnection);
            try
            {
                SqlServerConnection.Open();
                cmd.ExecuteNonQuery();
            }
            finally
            {
                SqlServerConnection.Close();
                SqlServerConnection.Dispose();
            }
        }
      
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;

        int userStatus = 0; // 0 - New user, 1 - Existing user

        foreach (User user in allUsersList)
        {
            if (user.emailAddress == txtLoginUsername.Text)
            {
                userStatus = 1;
                if (user.password == txtLoginPassword.Text)
                {
                    user.logonPassword = txtLoginPassword.Text;
                    Session["currentuser"] = user;
                    Response.Redirect("Default.aspx");
                    break;
                }
                else
                { 
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), 
                        "invalid user credentials", "fnInvalidCredentials()", true);
                    break;
                }
            }
        }

        if (userStatus == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, Page.GetType(), 
                "not a registered user", "fnNotRegistered()", true);
            txtLoginUsername.Text = String.Empty;
        }
            
    }
}