using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;

public partial class Default2 : System.Web.UI.Page
{
    string[,] cart = new string[10, 4];

    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            calDatePickerFrom.Visible = false;
           // calDatePickerTo.Visible = false;
            gridViewSeatsAvailability.Visible = false;
        }
    }

    protected void txtDateFrom_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void imgFromDatePicker_Click(object sender, ImageClickEventArgs e)
    {
        if (calDatePickerFrom.Visible == true)
        {
            calDatePickerFrom.Visible = false;
        }
        else
        {
            calDatePickerFrom.Visible = true;
        }      
    }
    //protected void imgToDatePicker_Click(object sender, ImageClickEventArgs e)
    //{
    //    if (calDatePickerTo.Visible == true)
    //    {
    //        calDatePickerTo.Visible = false;
    //    }
    //    else
    //    {
    //        calDatePickerTo.Visible = true;
    //    }      
    //}
    protected void calDatePickerFrom_SelectionChanged(object sender, EventArgs e)
    {
        txtDateFrom.Text = calDatePickerFrom.SelectedDate.ToString("MM/dd/yyyy");
        calDatePickerFrom.Visible = false;
    }

    //protected void calDatePickerTo_SelectionChanged(object sender, EventArgs e)
    //{
    //    txtDateTo.Text = calDatePickerTo.SelectedDate.ToString();
    //}
    protected void btnLookupSeatAvailability_Click(object sender, EventArgs e)
    {
        //string from = ddlLocationFrom.SelectedValue.ToString();
        //string to = ddlLocationTo.SelectedItem.ToString();
        //string time = ddlTime.SelectedItem.ToString();
        //string date = txtDateFrom.Text.ToString();
        //lblSampleOutput.Text = from + ", " + to + ", " + time + ", " + date;
        gridViewSeatsAvailability.Visible = true;

    }
    protected void btnSubmitReserveTicket_Click(object sender, EventArgs e)
    {
        //check to see if user is logged in
        //if not redirect to login page
        //if yes, redirect to payment page to book the ticket4

        Response.Redirect("payment.aspx");


    }
    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        int rowCountCart = 0;

        string from = ddlLocationFrom.SelectedValue.ToString();
        string to = ddlLocationTo.SelectedItem.ToString();
        string time = ddlTime.SelectedItem.ToString();
        string date = txtDateFrom.Text.ToString();

        cart[rowCountCart, 0] = date;
        cart[rowCountCart, 0] = time;
        cart[rowCountCart, 0] = from;
        cart[rowCountCart, 0] = to;

        
    }
}