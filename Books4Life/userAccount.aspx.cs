using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<User> allUsersList = Application["AllUsersList"] as List<User>;

        User customer = (User)Session["currentUser"]; 
            
            txUpdatetName.Text = customer.name;
            txtUpdateAddressLine1.Text = customer.addressLine1.ToString();
            txtUpdateAddressLine2.Text = customer.addressLine2.ToString();
            txtUpdateCity.Text = customer.city.ToString();
            txtUpdateZip.Text = customer.zip.ToString();
            ddlUpdateState.Text = customer.state.ToString();
            txtUpdateEmail.Text = customer.emailAddress.ToString();            
            txtUpdatePwd.Text = customer.password.ToString();
            txtUpdateConfirmPassword.Text = String.Empty;            

            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "toggleLoginRegButtons", "hideLoginRegister()", true);
        
    }
    protected void btnUserAccountMainPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btnUserAccountUpdate_Click(object sender, EventArgs e)
    {
        updateUserDetails();
    }
    protected void btnUserAccountCompleteReg_Click(object sender, EventArgs e)
    {
        updateUserDetails();
        Response.Redirect("Default.aspx");
    }

    public void updateUserDetails()
    {

        List<User> allUsersList = Application["AllUsersList"] as List<User>;

        User customer = (User)Session["currentUser"]; 

        customer.name = txUpdatetName.Text;
        customer.addressLine1 = txtUpdateAddressLine1.Text;
        customer.addressLine2 = txtUpdateAddressLine2.Text;
        customer.city = txtUpdateCity.Text;
        customer.zip = txtUpdateZip.Text;
        customer.state = ddlUpdateState.Text;
        customer.emailAddress = txtUpdateEmail.Text;
        customer.password = txtUpdatePwd.Text;
    }
}