using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

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
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Label LabelBoxCodice = FormView1.FindControl("LabelBoxCodice") as Label;
        Label LabelBoxCittà = FormView1.FindControl("LabelBoxCittà") as Label;
        Label LabelBoxPrezzo = FormView1.FindControl("LabelBoxPrezzo") as Label;
        Label LabelBoxTipologia = FormView1.FindControl("LabelBoxTipologia") as Label;
        LabelCodice.Text = LabelBoxCodice.Text;
        LabelCittà.Text = LabelBoxCittà.Text;
        LabelPrezzo.Text = LabelBoxPrezzo.Text;
        LabelTipologia.Text = LabelBoxTipologia.Text;
    }
    protected void ButtonInvia_Click(object sender, EventArgs e)
    {
        //INVIO LA MAIL
        ////Preparo i campi della mail
        String from = "webservice@civisimmobiliare.eu";
        String to = "cesare@cr-consult.eu";
        //Istanzio la classe che rappresenta il messaggio 
        MailMessage mMailMessage = new MailMessage();
        //Aggiungo il Mittente 
        mMailMessage.From = new MailAddress(from);
        //Aggiungo il destinatario 
        mMailMessage.To.Add(new MailAddress(to));
        mMailMessage.To.Add(new MailAddress("info@civisimmobiliare.eu "));
        //L'oggetto 
        mMailMessage.Subject = "Richiesta on-line dal sito web civisimmobiliare.eu";
        //Il corpo 
        mMailMessage.Body = DateTime.Now.ToLongDateString() +
            "<hr/><strong>Codice immobilee: </strong>" + LabelCodice.Text +
            "<br/><strong>Tipologia: </strong>" + LabelTipologia.Text +
            "<br/><strong>Prezzo:</strong> " + LabelPrezzo.Text +
            "<br/><strong>Nome:</strong> " + TextBox1.Text +
            "<br/><strong>Tel:</strong> " + TextBox2.Text +
            "<br/><strong>Mail:</strong> " + TextBox3.Text +
            "<br/><strong>Richiesta: </strong>" + TextBoxMessaggio.Text;
        //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
        mMailMessage.IsBodyHtml = true;
        //Setto la priorità 
        mMailMessage.Priority = MailPriority.Normal;
        //configurazione nel web.config 
        SmtpClient mSmtpClient = new SmtpClient();
        //Invio il messaggio 
        mSmtpClient.Send(mMailMessage);
        Panel3.Visible = true;
        Panel1.Visible = false;
    }
    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        LabelCodice.Text = "";
        LabelCittà.Text = "";
        LabelPrezzo.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        LabelCodice.Text = "";
        LabelCittà.Text = "";
        LabelPrezzo.Text = "";
    }
}