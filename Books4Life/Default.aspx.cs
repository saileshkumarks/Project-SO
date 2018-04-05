using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        linkBtnLogout.Visible = false;
        linkBtnYourAccount.Visible = false;
        linkBtnWhatYouSold.Visible = false;
        txtISBNDefault.Focus();

        if(Session["currentUser"] != null)
        {
            User customer = (User)Session["currentUser"];            

            //lblWelcomeNote.Text = "Hello, ";
            lblCustomerName.Text = customer.name;
            lblWelcomeNote.Text = " is now logged in";

            linkBtnRegister.Visible = false;
            linkBtnLogin.Visible = false;
            linkBtnLogout.Visible = true;

            linkBtnYourAccount.Visible = true;
            linkBtnWhatYouSold.Visible = true;

            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "toggleLoginRegButtons", "hideLoginRegister()", true);

        }
    }
    protected void ISBN_submit_button_Click(object sender, EventArgs e)
    {        
        string[] isbnDefault = Application["ISBN_Num"] as string[];

        string isbnNumber = txtISBNDefault.Text;

        if (isbnDefault.Contains(isbnNumber))
        {
            Session["isbnNum"] = txtISBNDefault.Text;
            Response.Redirect("getQuote.aspx");
        }
        else
        {
            Response.Write("<script>alert('Sorry. The ISBN Number you entered is not found in our database.')</script>");
        }
    }
    protected void linkBtnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginOrRegister.aspx");
    }
    protected void linkBtnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginOrRegister.aspx");
    }
    protected void linkBtnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void lnkBtnYourAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("userAccount.aspx");
    }
    protected void lnkBtnWhatYouSold_Click(object sender, EventArgs e)
    {
        Response.Redirect("whatYouSold.aspx");
    }
}