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

    }
    /* lesson1 */
    protected void AddButton_Click(object sender, EventArgs e)
    {
        if ( !(NameTextBox.Text == String.Empty) ) 
        {
            DestinationCheckBoxList.Items.Add(Server.HtmlEncode(NameTextBox.Text));
            NameTextBox.Text = null;
        }
    }
    /* lesson1 */
    protected void ShipButton_Click(object sender, EventArgs e)
    {
        if ((ShippingTypeRadioButtonList.SelectedValue == String.Empty) ||
            (DestinationCheckBoxList.SelectedValue == String.Empty)) 
        {
            ShippingConfirmationLabel.Text = "You must select a shipping type and at least one destination.";
        }
        else 
        {
            ShippingConfirmationLabel.Text = string.Format("Using {0} shipping to:<br/>", 
                ShippingTypeRadioButtonList.SelectedValue);
            foreach (ListItem li in DestinationCheckBoxList.Items) 
            {
                if (li.Selected) 
                {
                    ShippingConfirmationLabel.Text += li.Value + "<br/>";
                }
            }
        }
    }
}