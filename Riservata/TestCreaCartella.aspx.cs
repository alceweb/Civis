using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;

public partial class Riservata_TestCreaCartella : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string utente = "civis\\cesare";
        WebRequest request = WebRequest.Create("ftp://waws-prod-am2-003.ftp.azurewebsites.windows.net/site/wwwroot/ImgImm/254444444444");
        request.Method = WebRequestMethods.Ftp.MakeDirectory;
        request.Credentials = new NetworkCredential(utente, "1Bassaidai");
        using (var resp = (FtpWebResponse)request.GetResponse())
        {
            Console.WriteLine(resp.StatusCode);
        }
    }
}