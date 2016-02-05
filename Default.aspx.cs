using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Threading.Thread.CurrentThread.CurrentCulture
            = new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture
             = new System.Globalization.CultureInfo("it-IT");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (pnlMappa.Visible.Equals(false))
        {
            pnlSede.Visible = false;
            pnlMappa.Visible = true;
            LinkButton1.Text = "Mostra sede";
        }
        else 
        {
            pnlSede.Visible = true;
            pnlMappa.Visible = false;
            LinkButton1.Text = "Mostra mappa";
        }
    }
}