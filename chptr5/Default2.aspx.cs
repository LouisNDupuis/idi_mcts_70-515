using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// lesson 3 exo 2
using System.Web.UI.WebControls.WebParts;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // lesson 3 exo 2
    protected void Page_Init(object sender, EventArgs e)
    {
        Page.InitComplete += new EventHandler(GenerateModeList);
    }

    protected void GenerateModeList(object sender, EventArgs e)
    {
        WebPartManager _manager = WebPartManager.GetCurrentWebPartManager(Page);
        String browserModeName = WebPartManager.BrowseDisplayMode.Name;
        DropDownListModes.Items.Clear();

        // Fill the drop-down list with the names of supported display modes
        foreach (WebPartDisplayMode mode in _manager.SupportedDisplayModes)
        {
            String modeName = mode.Name;
            if (mode.IsEnabled(_manager))
            {
                ListItem item = new ListItem(modeName, modeName);
                DropDownListModes.Items.Add(item);
            }
        }

        // Select current mode
        ListItemCollection items = DropDownListModes.Items;
        int selectedIndex = items.IndexOf(items.FindByText(_manager.DisplayMode.Name));
        DropDownListModes.SelectedIndex = selectedIndex;
    }

    protected void DropDownListModes_SelectedIndexChanged(object sender, EventArgs e) 
    {
        WebPartManager manager = WebPartManager.GetCurrentWebPartManager(Page);
        WebPartDisplayMode mode = manager.SupportedDisplayModes[DropDownListModes.SelectedValue];
        if (mode != null) 
        {
            manager.DisplayMode = mode;
        }
    }

}