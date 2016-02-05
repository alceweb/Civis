using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Civis.ImgImm
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cartella = "~/ImgImm/" + Request.QueryString["ID"];
            string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "5091-*.jpg");
            lista.DataSource = immagini;
            lista.DataBind();
        }
    }
}
