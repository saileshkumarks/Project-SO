using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class whatYouSold : System.Web.UI.Page
{   
    SqlDataAdapter adapter;
    DataSet tableDataSet;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentUser"] != null)
        {

            List<User> allUsersList = Application["AllUsersList"] as List<User>;
            
            User customer = (User)Session["currentUser"];

            lblWhatYouSoldUserName.Text = customer.name.ToString();
            lblWhatYouSoldUserEmailAddress.Text = customer.emailAddress.ToString();

            BindGridView();

            //SoldBook customerBooks = (SoldBook)Session["currentUser"];

            //string[] isbn = new String[10];
            //string[] title = new String[10];
            //string[] dateSold = new String[10];
            //double[] soldPrice = new double[10];

            //string isbn1 = customerBooks.isbnNumber;


          
            

            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "toggleLoginRegButtons", "hideLoginRegister()", true);

        }
    }
    protected void btnWhatYouSoldMainPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btnWhatYouSoldSellAnotherBook_Click(object sender, EventArgs e)
    {
        Response.Redirect("getQuote.aspx");
    }

   public void  BindGridView()
    {
        SqlConnection SqlServerConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        string isbn_query = "SELECT A.ISBN, B.Title, A.DateSold, B.BuyPrice " + 
            "FROM dbo.KaraikurichS_WADfl15_Transactions A, dbo.KaraikurichS_WADfl15_BookInfor B " +
            "WHERE A.ISBN = B.ISBN AND A.EmailAddress = '" + lblWhatYouSoldUserEmailAddress.Text + "';";
        SqlCommand cmd = new SqlCommand(isbn_query, SqlServerConnection);
        cmd.CommandType = CommandType.Text;
        adapter = new SqlDataAdapter(cmd);
        tableDataSet = new DataSet();
        adapter.Fill(tableDataSet);
        gridViewUserTransactions.DataSource = tableDataSet;
        gridViewUserTransactions.DataBind();


    }

}