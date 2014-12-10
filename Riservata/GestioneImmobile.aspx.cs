using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Security.AccessControl;

public partial class Riservata_GestioneImmobile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cartella = "~/ImgImm/" ;
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), Request.QueryString["ID"] + "-*.*");
        lista.DataSource = immagini;
        lista.DataBind();
    }
    protected void UploadImgButton_Click(object sender, EventArgs e)
    {
        //recupero l'ID dell'immobile che identifica la cartella e l'inizio del file immagine
        string Testa = Request.QueryString["ID"];
        //Imposto la cartella di destinazione
        string saveDir = Server.MapPath("~/ImgImm/");
        if (FileUpload1.HasFile)
        {
            //Recupero l'estensione del file
            string Estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
            //Imposto il nuovo path completo del file
            string savePath = saveDir + Testa +  "." + Estensione;
            FileUpload1.SaveAs(savePath);
            // Avvisa dell'avvenuto upload.
            UploadStatusLabel1.Text = "Immagine caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            UploadStatusLabel2.Text = "Non hai scelto l'immagine per la galleria.";
        }
    }
    protected void UploadgallButton_Click(object sender, EventArgs e)
    {
        string Testa = Request.QueryString["ID"];
        string saveDir = Server.MapPath("~/ImgImm/");

        if (FileUpload2.HasFile)
        {
            string Estensione = System.IO.Path.GetExtension(FileUpload2.PostedFile.FileName).Substring(1);
            //Imposto il nome file in base alla data giorno mese anno - ora minuti secondi
            string NomeFile = DateTime.Now.ToString("ddMMyyyy-HHmmss");
            //Imposto il nuovo path completo del file
            string savePath = saveDir + Testa + "-" + NomeFile + "." + Estensione;
            FileUpload2.SaveAs(savePath);
            UploadStatusLabel2.Text = "Immagine caricata corretamente.";
        }
        else
        {
            UploadStatusLabel2.Text = "Non hai scelto l'immagine per la galleria.";
        }


    }
    protected void ButtonDeleteFile_Clock(object sender, EventArgs e)
    {

    }
}
