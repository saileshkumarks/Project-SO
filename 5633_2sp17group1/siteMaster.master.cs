using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class siteMaster : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        linkBtnLogout.Visible = false;
        linkBtnYourAccount.Visible = false;


        if (Session["user"] != null)
        {
            User customer = (User)Session["currentUser"];

            lblWelcomeNote.Text = "Hello, ";
            //lblCustomerName.Text = customer;
            lblWelcomeNote.Text = " is now logged in";

            linkBtnLogin.Visible = false;
            linkBtnLogout.Visible = true;

            linkBtnYourAccount.Visible = true;

        }
   
    }
    protected void linkBtnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("signin.aspx");
    }
    protected void linkBtnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
}
