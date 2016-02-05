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
    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        string cartella = "~/ImgImm/";
        string[] pdf = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.pdf");
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
        string[] filePaths = Directory.GetFiles(Server.MapPath(cartella), ListView1.SelectedValue + "-*jpg*");
        List<ListItem> files = new List<ListItem>();
        foreach (string filePath in filePaths)
        {
            files.Add(new ListItem(Path.GetFileName(filePath), filePath));
        }
        ListView2.DataSource = files;
        ListView2.DataBind();

    }
    protected void ListView1_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
    {
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
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
    protected void DeleteFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        File.Delete(filePath);
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}