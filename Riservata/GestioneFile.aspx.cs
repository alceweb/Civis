using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;

public partial class Riservata_GestioneFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lb1Label.Text = lb1.SelectedValue;
    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        string cartella = "~/ImgImm/";
        string[] img = System.IO.Directory.GetFiles(Server.MapPath(cartella), ListView1.SelectedValue + "-*.jpg");
        string[] pdf = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.pdf");
        ListViewImg.DataSource = img;
        ListViewImg.DataBind();
        lb1.DataSource = img;
        lb1.DataBind();
        lb2.DataSource = pdf;
        lb2.DataBind();
        if (ListView1.SelectedIndex != -1)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }

    }
    protected void btnDelPdf_Click(object sender, EventArgs e)
    {
        if (lb2.SelectedValue != "")
        {
            System.IO.File.Delete(lb2.SelectedValue);
            lblDeleteOk.ForeColor = Color.Green;
            lblDeleteOk.Text = "Il file <strong>" + lb2.SelectedValue + "</strong> è stata eliminato!!!";
        }
        else
        {
            lblDeleteOk.ForeColor = Color.Red;
            lblDeleteOk.Text = "Non hai selezionato nessun file.<strong> NESSUN FILE CANCELLATO!!!</strong>";
        }
    }
    protected void btnAnnulla_Click(object sender, EventArgs e)
    {
        lblDeleteOk.Text = "Seleziona un file dalla per cancellarlo";
        lb2.SelectedIndex = -1;
    }
    protected void lb1_DataBound(object sender, EventArgs e)
    {
    }
    protected void btnDelJpg_Click(object sender, EventArgs e)
    {
        if (lb1.SelectedValue != "")
        {
            System.IO.File.Delete(lb1.SelectedValue);
            lblDeleteOkJpg.ForeColor = Color.Green;
            lblDeleteOkJpg.Text = "Il file <strong>" + lb1.SelectedValue + "</strong> è stata eliminato!!!";
        }
        else
        {
            lblDeleteOkJpg.ForeColor = Color.Red;
            lblDeleteOkJpg.Text = "Non hai selezionato nessun file.<strong> NESSUN FILE CANCELLATO!!!</strong>";
        }
    }
    protected void btnAnnullaJpg_Click(object sender, EventArgs e)
    {
        lblDeleteOkJpg.Text = "Seleziona un file dalla per cancellarlo";
        lb1.SelectedIndex = -1;
    }
}