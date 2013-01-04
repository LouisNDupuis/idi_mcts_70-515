using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string data = args.Value;
        args.IsValid = false;
        // check length
        if (data.Length < 6 || data.Length > 14) 
        {
            return;
        }
        // check for upper, lower and number
        bool uc = false, lc = false, num = false;
        foreach (char c in data) 
        {
            if (char.IsUpper(c)) 
            {
                uc = true;
            }
            else if (char.IsLower(c)) 
            {
                lc = true;
            }
            else if (char.IsNumber(c)) 
            {
                num = true;
            }

            if (uc && lc && num) 
            {
                args.IsValid = true;
                break;
            }
        }
    }
}