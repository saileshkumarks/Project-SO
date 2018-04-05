/// <summary>
/// Summary description for User
/// </summary>
public class User
{
	public User()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private string Name;
    public string name
    {
        get { return Name; }
        set { this.Name = value; }

    }

    private string AddressLine1;
    public string addressLine1
    {
        get { return AddressLine1; }
        set { this.AddressLine1 = value; }
    }

    private string AddressLine2;
    public string addressLine2
    {
        get { return AddressLine2; }
        set { this.AddressLine2 = value; }
    }

    private string City;
    public string city
    {
        get { return City; }
        set { this.City = value; }
    }

    private string Zip;
    public string zip
    {
        get { return Zip; }
        set { this.Zip = value; }
    }

    private string State;
    public string state
    {
        get { return State; }
        set { this.State = value; }
    }

    private string EmailAddress;
    public string emailAddress
    {
        get { return EmailAddress; }
        set { EmailAddress = value; }
    }

    private string Password;
    public string password
    {
        get { return Password; }
        set { this.Password = value; }
    }

    private string LogonPassword;
    public string logonPassword
    {
        get { return LogonPassword; }
        set { this.LogonPassword = value; }
    }

    private SoldBook[] Soldbooks;
    public SoldBook[] soldbooks
    {
        get { return Soldbooks; }
        set { this.Soldbooks = value; }
    }
}