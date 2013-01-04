using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// lesson 3
using System.Web.UI.WebControls.WebParts;

public partial class GetName : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // lesson 3
    private string _name = string.Empty;
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        _name = NameTextBox.Text;
    }

    [ConnectionProvider("User name provider", "GetUserName")]
    public string GetUserName() 
    {
        return _name;
    }
}