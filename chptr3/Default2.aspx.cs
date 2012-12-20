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
        /* lesson2:exo1 */
        if (ViewState["clicks"] != null) {
            ViewState["clicks"] = (int)ViewState["clicks"] + 1;
        }
        else {
            ViewState["clicks"] = 1;
        }
        Label1.Text = "ViewState clicks: " + ((int)ViewState["clicks"]).ToString();

        /* lesson2:exo4 */
        if (!IsPostBack) {
            // Read the query string
            int queryClicks;
            if (Request.QueryString["clicks"] != null) {
                queryClicks = int.Parse(Request.QueryString["clicks"]) + 1;
            }
            else {
                queryClicks = 1;
            }

            // Define the query string in the hyperlink
            HyperLink2.NavigateUrl += "?clicks=" + queryClicks.ToString();
            Label4.Text = "Query clicks: " + queryClicks.ToString();
        }

        /* lesson3:exo1 */
        Application.Lock();
        Application["clicks_lesson_3"] = ((int)Application["clicks_lesson_3"]) + 1;
        Application.UnLock();

        Label5.Text = string.Format("Application clicks: {0}", Application["clicks_lesson_3"].ToString());

        /* lesson3:exo2 */
        Session["session_clicks"] = (int)Session["session_clicks"] + 1;
        Label6.Text = string.Format("Session clicks: {0}", Session["session_clicks"].ToString());
    }
}