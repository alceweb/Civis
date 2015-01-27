using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CercaImmobili : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Threading.Thread.CurrentThread.CurrentCulture
            = new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture
             = new System.Globalization.CultureInfo("it-IT");
    }
    protected void DDLProvincia_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListView1.SelectedIndex = -1;
    }
    protected void DDLCittà_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListView1.SelectedIndex = -1;
    }
    protected void DDLTipologia_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListView1.SelectedIndex = -1;
    }
}