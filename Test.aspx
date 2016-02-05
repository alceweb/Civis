<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
        <asp:Panel ID="PnlCookie" runat="server">
            <div class="divCook">
               <span>
                Questo sito utilizza cookie di profilazione, propri o di altri.<br />
                Se accedi a un qualunque elemento del sito acconsenti all'uso del cookie. 
                 Se vuoi saperne di più o negare il consenso a tutti o alcuni cookie clicca <a href="CookiesInfo.aspx" runat="server" id="Cookies">qui</a>.
               </span><br /><br />
                <div style="text-align:center">
                <asp:Button ID="CookieButton" runat="server" OnClick="CookieButton_Click" Text="Acconsenti"></asp:Button>

                </div>
            </div>

        </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Pagina di test cookieTest</h2>
    <p>
        Ciao Giorgio<br />
        Questa è la pagina di test per il plug-in della legge sulla gestione dei cookies
    </p>
    <p>Ho cercato di farla il meno invasiva possibile.<br />
        Questo rettangolo che è appena passato dal video resterà attivo ogni volta che si entra nel sito fino a che l'utente non cliccherà sul pulsante <strong><em>Acconsenti</em></strong> dopo di che si riattiverà dopo 180 giorni in attesa di un altro click.<br />
        Naturalmente per permetterti di visualizzare più volte l'animazione in questa pagina test il plug-in non viene mai disattivato.<br />
        Dagli un'occhiata, se va bene la pubblico sul sito ufficiale.
    </p>
    <p>
        Ciao!!!!
    </p>
</asp:Content>

