using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Riservata_NewsImgAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void UploadImgButton_Click(object sender, EventArgs e)
    {
        //recupero l'ID della news che identifica la cartella e l'inizio del file immagine
        string Testa = Request.QueryString["ID"];
        //Imposto la cartella di destinazione
        string saveDir = Server.MapPath("~/ImgNews/" + Testa + "/");
        if (FileUpload1.HasFile)
        {
            //Recupero l'estensione del file
            string Estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
            //Imposto il nuovo path completo del file
            string savePath = saveDir + Testa + "." + Estensione;
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
}