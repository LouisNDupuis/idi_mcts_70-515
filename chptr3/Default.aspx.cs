using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    /*
     * All page life cycle
     */

    protected void Page_PreInit(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_PreInit");
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_Init");
    }

    protected void Page_InitComplete(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_InitComplete");
    }

    protected void Page_PreLoad(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_PreLoad");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_Load");
        /* lesson1:exo2 */
        if (UserTypeDropDownList.SelectedValue == "Guest") 
        {
            PasswordLabel.Visible = false;
            PasswordTextBox.Visible = false;
            UserNameLabel.Text = "E-mail address: ";
            LogonButton.Text = "Visit";
        }
        else 
        {
            PasswordLabel.Visible = true;
            PasswordTextBox.Visible = true;
            UserNameLabel.Text = "Username: ";
            LogonButton.Text = "Logon";
        }

        /* lesson2:exo1 */
        if (ViewState["clicks"] != null) 
        {
            ViewState["clicks"] = (int)ViewState["clicks"] + 1;
        }
        else 
        {
            ViewState["clicks"] = 1;
        }
        Label1.Text = "ViewState clicks: " + ((int)ViewState["clicks"]).ToString();
        
        /* lesson2:exo2 */
        int clicks = 0;
        int.TryParse(HiddenField1.Value, out clicks);
        ++clicks;
        HiddenField1.Value = clicks.ToString();

        Label2.Text = "HiddenField clicks: " + HiddenField1.Value;

        /* lesson2:exo3 */
        // Read the cookie and increment
        int cookieClicks;
        if (Request.Cookies["clicks"] != null) 
        {
            cookieClicks = int.Parse(Request.Cookies["clicks"].Value) + 1;
        }
        else 
        {
            cookieClicks = 1;
        }
        // Save the cookie to be returned on the next visit
        Response.Cookies["clicks"].Value = cookieClicks.ToString();
        Label3.Text = "Cookie clicks: " + cookieClicks.ToString();

        /* lesson2:exo4 */
        if (!IsPostBack)
        {
            // Read the query string
            int queryClicks;
            if (Request.QueryString["clicks"] != null) 
            {
                queryClicks = int.Parse(Request.QueryString["clicks"]) + 1;
            }
            else 
            {
                queryClicks = 1;
            }

            // Define the query string in the hyperlink
            HyperLink1.NavigateUrl += "?clicks=" + queryClicks.ToString();
            Label4.Text = "Query clicks: " + queryClicks.ToString();
        }
    }

    protected void Page_LoadComplete(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_LoadComplete");
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_PreRender");
    }

    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_PreRenderComplete");
    }

    protected void Page_SaveStateComplete(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_SaveStateComplete");
    }

    protected void Page_Render(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_Render");
    }

    protected void Page_Unload(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("Page_Unload");
    }

    /* lesson1:exo2 */
    protected void LogonButton_Click(object sender, EventArgs e) 
    {
        Response.Redirect("Home.aspx");
    }
}
