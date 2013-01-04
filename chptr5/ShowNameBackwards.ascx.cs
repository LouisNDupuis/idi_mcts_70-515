using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class ShowNameBackwards : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // lesson 3
    [ConnectionConsumer("User name consumer", "GetName")]
    public void GetName(String Name) 
    {
        char[] NameCharArray = Name.ToCharArray();
        Array.Reverse(NameCharArray);
        BackwardsLabel.Text = "Your name backwards is: " + new string(NameCharArray);
    }
}