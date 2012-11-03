using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/**
 * class
 */
public partial class _Default : System.Web.UI.Page
{
    /* page load */
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    // from the exemple
    protected void TimeLabel_Load(object sender, EventArgs e)
    {
        TimeLabel.Text = DateTime.Now.ToString();
    }
}
