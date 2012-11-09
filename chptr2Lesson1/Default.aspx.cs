using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_Preinit(object sender, EventArgs e) 
    {
        if (Session["theme"] != null) 
        {
            Page.Theme = (string)Session["theme"];
        }
    }

    protected void SwitchThemeButton_Click(object sender, EventArgs e)
    {
        string theme = Page.Theme;
        // switch theme
        if (theme == "Contoso") {
            Session["theme"] = "Fabrikam";
        } 
        else
        {
            Session["theme"] = "Contoso";
        }
        Server.Transfer(Request.Path);
    }
}
