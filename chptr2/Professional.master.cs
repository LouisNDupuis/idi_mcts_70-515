using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professional : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null) {
            GreetingLabel.Text = "Welcome, " + Session["UserName"] + "!";
        }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
