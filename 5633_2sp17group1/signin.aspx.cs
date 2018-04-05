using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        int newid=0;       

        SqlConnection SqlServerConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["groupDBCS"].ConnectionString);
        string id_query = "SELECT MAX(A.Id)+1 AS 'NEWID' FROM dbo.USER_DETAILS A;";
        SqlCommand cmd = new SqlCommand(id_query, SqlServerConnection);
        SqlServerConnection.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            newid = reader.GetInt32(0);
        }
        SqlServerConnection.Close();
        
        string insert_user_deatils_query = "INSERT INTO dbo.USER_DETAILS " +
        "(ID, NAME, ADDRESS, PHONE, EMAIL) " +
        "VALUES " +
        "('" + newid + "', '" +
        txtName.Text + "', '" +
        txtAddress.Text + "', '" +
        txtPhone.Text + "', '" +
        txtEmail.Text + "');";

        string insert_user_credentials_query = "INSERT INTO dbo.USER_CREDENTIALS " +
        "(USERNAME, PASSWORD, EMAIL) " +
        "VALUES " +
        "('" + txtCreateUsername.Text + "', '" +
        txtCreatePassword.Text + "', '" +
        txtEmail.Text + "');";
        SqlCommand cmd1 = new SqlCommand(insert_user_deatils_query, SqlServerConnection);
        SqlCommand cmd2 = new SqlCommand(insert_user_credentials_query, SqlServerConnection);
        try
        {
            SqlServerConnection.Open();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
        }
        finally
        {
            SqlServerConnection.Close();
            SqlServerConnection.Dispose();
        }

        Response.Redirect("Home.aspx");
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Session["user"] = txtLoginUsername.Text;
    }
}