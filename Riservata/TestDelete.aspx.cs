using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Riservata_TestDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Directory.Exists("~/ImgImm/" + Request.QueryString["ID"] + "/")==false)
        //{
        //    Directory.CreateDirectory("~/ImgImm/" + Request.QueryString["ID"]);
        //}
        string cartella = "~/ImgImm/" + Request.QueryString["ID"];
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.jpg");
        lista.DataSource = immagini;
        lista.DataBind();
        string saveDir = Server.MapPath("~/ImgImm/" + Request.QueryString["ID"] + "/");
    }
    protected void ButtonDeleteFile_Click(object sender, EventArgs e)
    {
        LabelDelete.Text = "string";
    }
}