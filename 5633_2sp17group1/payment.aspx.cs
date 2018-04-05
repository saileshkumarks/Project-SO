using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitPay_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "Ticket Confirmation", "fnConfirmation()", true);
    }
    protected void btnPriceCalc_Click(object sender, EventArgs e)
    {
        int qty = Convert.ToInt32(txtTicketQty.Text);
        double ticketPrice = 25 * qty;

        lblticketPrice.Text = Convert.ToString(ticketPrice);
    }
    protected void btnGotoHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}