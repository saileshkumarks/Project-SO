using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IsbnDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentuser"] != null)
        {
            btnSellBook.Enabled = true;
        }
        else
        {
            btnSellBook.Enabled = false;
        }

        if(!IsPostBack) //Page.IsPostBack = true, says that the page is loading for the first time
        {
            string isbnNumber = (String)Session["isbnNum"];
            FillValues(isbnNumber);
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btnSellBook_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "sellYourBook();", true);

        if (Session["currentUser"] != null)
        {
            //SoldBook customerBooks = (SoldBook)Session["currentUser"];
            User customer = (User)Session["currentUser"];

            //customerBooks.isbnNumber = txtISBN.Text;
            //customerBooks.title = txtTitle.Text;
            //customerBooks.soldDate = DateTime.Today.ToString("d");
            //5/3/2012 - d
            //Thursday, May 03, 2012 - D
            //5/3/2012 12:00 AM - g
            //5/3/2012 12:00:00 AM - DateTime.Today.ToString() 

            string soldDate = DateTime.Today.ToString("d");

            SqlConnection SqlServerConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
            string insert_user_deatils_query = "INSERT INTO dbo.KaraikurichS_WADfl15_Transactions " +
            "(EmailAddress, ISBN, DateSold) " +
            "VALUES " +
            "('" + customer.emailAddress + "', '" + 
            txtISBN.Text + "', '" +
            soldDate + "');";
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
    protected void txtISBN_TextChanged(object sender, EventArgs e)
    {

    }
       
    
    protected void ISBN_submit_button_Click(object sender, EventArgs e)
    {
        //ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "Before " + txtISBN.Text, true);
        string[] isbnGetQuote = Application["ISBN_Num"] as string[];
        //ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "After " + txtISBN.Text, true);
        string isbnNumberGetQuote = txtISBN.Text;

        if (isbnGetQuote.Contains(isbnNumberGetQuote))
        {   
            FillValues(isbnNumberGetQuote);            
        }
        else
        {
            txtISBN.Text = String.Empty;
            txtTitle.Text = String.Empty;
            txtAuthor.Text = String.Empty;
            txtBuyPrice.Text = String.Empty;
            imgBookImage.ImageUrl = "";
            Response.Write("<script>alert('Sorry. The ISBN Number you entered is not found in our database.')</script>");
        }
    }

    public void FillValues(string bookIsbnNum)
    {

        string[] getQuoteIsbn = Application["ISBN_Num"] as string[];
        string[] getQuoteTitle = Application["Title"] as string[];
        string[] getQuoteAuthor = Application["Author"] as string[];
        double[] getQuotePrice = Application["Price"] as double[];

        int dataLocation = Array.IndexOf(getQuoteIsbn, bookIsbnNum);

        txtISBN.Text = getQuoteIsbn.GetValue(dataLocation).ToString();
        txtTitle.Text = getQuoteTitle.GetValue(dataLocation).ToString();
        txtAuthor.Text = getQuoteAuthor.GetValue(dataLocation).ToString();
        txtBuyPrice.Text = getQuotePrice.GetValue(dataLocation).ToString();

        imgBookImage.ImageUrl = "images/bookImages/" + bookIsbnNum + ".png";
    }
}