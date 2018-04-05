/// <summary>
/// Summary description for SoldBook
/// </summary>
public class SoldBook
{
	public SoldBook()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private string IsbnNumber;
    public string isbnNumber
    {
        get { return IsbnNumber; }
        set { this.IsbnNumber = value; }
    }

    private string Title;
    public string title
    {
        get { return Title; }
        set { this.Title = value; }
    }

    public string SoldDate;
    public string soldDate
    {
        get { return SoldDate; }
        set { this.SoldDate = value; }
    } 
}