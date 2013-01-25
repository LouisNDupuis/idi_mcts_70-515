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
        // bidouillage pour autoincrement de la bd qui a été omi
        int a = GridView1.Rows.Count;
        ++a;
        TextBoxID.Value = Convert.ToString(a);
    }

    /**
     * exo 1 & 2
     */
    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        //exo2
        System.Threading.Thread.Sleep(3000);
        //exo1
        SqlDataSource1.Insert();
        GridView1.DataBind();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        // switch image
    }
}
