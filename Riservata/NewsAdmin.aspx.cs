﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_NewsAddmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Threading.Thread.CurrentThread.CurrentCulture= new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture= new System.Globalization.CultureInfo("it-IT");
    }
}