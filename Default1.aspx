﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.master" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
	<script type="text/javascript" src="Scripts/jquery-1.2.2.pack.js"></script>
	<script type="text/javascript" src="Scripts/ddaccordion.js"></script>
<style type="text/css">

.dropdown{ /*header of 1st demo*/
cursor: pointer;
text-align:left;
text-decoration:underline;
padding-left:130px;
}
.openlist{
    font-weight:bold; /*class added to contents of 1st demo when they are open*/
}
.list {
    color:#80030b;
    text-align:justify;
    padding-left:130px;
    text-indent:20px;
}
</style>
    <script type="text/javascript">
        ddaccordion.init({
            headerclass: "dropdown",
            contentclass: "list",
            revealtype: "click",
            collapseprev: false,
            defaultexpanded: [],
            onemustopen: false,
            animatedefault: false,
            persiststate: true,
            toggleclass: ["", "openlist"],
            togglehtml: ["none", "", ""],
            animatespeed: "fast",
            oninit: function (expandedindices) { //custom code to run when headers have initalized
                //do nothing
            },
            onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                //do nothing
            }
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="TableVetrina" >
        <tr>
            <td >
                <h3 class="TitoloVetrina">I nostri servizi</h3>
                <h5>
                <img alt="" src="Images/Libri1.jpg" />
                    CONSULENZA NORMATIVA E CONTRATTUALE</h5>
                <p class="dropdown">Assistenza e aggiornamento normativo</p>
                <div class="list">
                    La normativa italiana in materia di compravendite di immobili subisce un aggiornamento costante sia sotto l’aspetto legale che fiscale.<br />
                    La CIVIS IMMOBILIARE offre al cliente la consulenza per ottimizzare il proprio investimento godendo delle detrazioni fiscali, usufruendo delle aliquote agevolate, sfruttando di volta in volta i crediti di imposta maturati con le transazioni.
                    <br /><em><a href="News.aspx">News e aggiornamenti…</a></em><hr />
                </div>
                <p class="dropdown">Preparazione alla vendita</p>
                <div class="list">
                    La vendita di un immobile presuppone una preparazione e l’approfondimento della documentazione relativa al catasto e alla conservatoria dei registri.<br />
                    La CIVIS IMMOBILIARE  si occupa dello studio degli atti di provenienza, della risoluzione di ogni problematica relativa a donazioni o successioni, del reperimento delle visure catastali eipotecarie . Inoltre verifica la conformità della documentazione catastale e reperisce ogni necessario atto amministrativo depositato presso l’amministrazione comunale.
                </div>
                <p class="dropdown">Redazione contrattuale</p>
                <div class="list">
                    La stesura e la sottoscrizione di un contratto tra le parti per la compravendita di un immobile viene regolamentata dal codice civile e aggiornata dalle norme pubblicate sulla gazzetta ufficiale.<br />
                    La CIVIS IMMOBILIARE assiste il cliente venditore e il cliente acquirente nella redazione del contratto preliminare con gli opportuni aggiornamenti legislativi e procede alla registrazione presso l’agenzia delle entrate.
                <hr />
                </div>
                <p class="dropdown">Istruzione pratica notarile</p>
                <div class="list">
                    La preparazione dell’atto di compravendita esige il reperimento e il riordino della documentazione relativa all’immobile da consegnare al notaio rogante.<br />
                    La CIVIS IMMOBILIARE si occupa di mantenere i rapporti con lo studio notarile, di assistere il cliente venditore nel riordino della pratica da consegnare e il cliente acquirente nel reperimento dei certificati  anagrafici.
                <hr />
                </div>
                <p class="dropdown">Consulenza nelle controversie</p>
                <div class="list">
                    Il buon fine di una transazione viene talvolta compromesso da contrasti tra le parti o vizi procedurali correlati alla situazione dell’immobile.<br />
                    La CIVIS IMMOBILIARE fornisce la consulenza per la valutazione dell’impedimento e per la mediazione della  controversia.   
                <hr />
                </div>
                <h5>
                <img src="Images/CasaCostr1.jpg" />
                    CONSULENZA SULLA PROGETTAZIONE E RISTRUTTURAZIONE</h5>
                <p class="dropdown">Progettazione per l'acquirente di un immobile nuovo</p>
                <div class="list">
                    Nell’acquisto di un immobile nuovo spesso nasce l’esigenza di adattare la distribuzione interna alle proprie esigenze.<br />
                    La CIVIS IMMOBILIARE progetta i tavolati interni e le soluzioni di arredo compatibili con le necessità della famiglia che acquista   
                <hr />
                </div>
                <p class="dropdown">Progettazione per l'impresa</p>
                <div class="list">
                    Nella vendita di un’operazione immobiliare è indispensabile la valutazione dei  tagli più efficaci per il mercato attuale.<br />
                    La CIVIS IMMOBILIARE si mette a disposizione delle imprese per lo studio delle tipologie delle unità immobiliari e per ottimizzare la potenzialità commerciale della proposta distributiva.    
                <hr />
                </div>
                <p class="dropdown">Progettazione della ristrutturazione di un immobile usato</p>
                <div class="list">
                    Nell’acquisto di un immobile usato spesso nasce l’esigenza di valutare le potenzialità distributive e i costi di realizzazione di una ristrutturazione.<br />
                    La CIVIS IMMOBILIARE progetta la ristrutturazione, valuta i costi e reperisce e coordina i fornitori e gli esecutori dei lavori.
                <hr />
                </div>
                <p class="dropdown">Fornitura di impianti fotovoltaici</p>
                <div class="list">
                    L’attuale situazione economica e la recente normativa che promuove gli incentivi sulle energie alternative stimola alla valutazione di installazione di impianti fotovoltaici.<br />
                    La CIVIS IMMOBILIARE fornisce la consulenza sulla possibilità e sulla efficacia della installazione di impianto fotovoltaico, contatta il fornitore e coordina la posa.
                <hr />
                </div>
                <h5>
                <img src="Images/AssVendita1.jpg" />
                    VALUTAZIONE E VENDITA DEGLI IMMOBILI</h5>
                <p class="dropdown">Redazione valutazione di mercato</p>
                <div class="list">
                    La facilità e la tempestività della vendita di un immobile sono influenzate dalla coerenza della valutazione con la situazione di mercato.<br />
                    La CIVIS IMMOBILIARE redige valutazioni complete e dettagliate, applicando il metodo analitico e  comparativo con altri immobili sul mercato. Il cliente venditore può verificare  criteri  e parametri, concordare con il consulente il prezzo ottimale per soddisfare le esigenze personali e le richieste del mercato.
                <hr />
                </div>
                <p class="dropdown">Redazione piano di marketing</p>
                <div class="list">
                    Le modalità di gestione della promozione dell’immobile accelerano e semplificano la vendita.<br />
                    La CIVIS IMMOBILIARE attua tutte le possibili strategie di vendita: affissione cartello esterno, pubblicazione sui portali immobiliari, inserzioni su riviste del settore, collaborazione con altre agenzie di fiducia, stampa e distribuzione di volantini dedicati, consultazione banca dati, feedback sull’andamento della vendita. 
                <hr />
                </div>
                <p class="dropdown">Ricerca dell'immobile</p>
                <div class="list">
                    Il mercato attuale offre una vastissima scelta di immobili in vendita e in locazione sui quali è  necessario  operare una selezione in base alle esigenze del cliente.<br />
                    La CIVIS IMMOBILIARE assiste il cliente nella selezione dell’immobile rispondente alle sue necessità attraverso una ricerca sul territorio e la collaborazione con i colleghi di altre agenzie.
                <hr />
                </div>
                <p class="dropdown">Operazioni immobiliari</p>
                <div class="list">
                    L’investimento nel mercato immobiliare è tradizionalmente redditizio ma estremamente influenzato dall’andamento del mercato.<br />
                    La CIVIS IMMOBILIARE offre alle imprese e al cliente privato la valutazione del piano economico relativo ad un investimento immobiliare con il reperimento dell’immobile o il calcolo di costi e ricavi
                <hr />
                </div>
            </td>
            <td>
                <h3 class="TitoloVetrina">Occasioni</h3>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <a href='ImmDett.aspx?id=<%#Eval("id")%>' ><asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/ImgImm/" + Eval("id") + ".jpg" %>' /></a>
                                 </ItemTemplate>
                                <ItemStyle Width="10px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Città" />
                            <asp:BoundField DataField="Tipologia" />
                            <asp:BoundField DataField="Prezzo" DataFormatString="{0:C0}" >
                            <HeaderStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Table].[Id], [Table].[Città], [Table].[Prezzo], [Table].[Superficie], Tipologie.Tipologia FROM [Table]
                        Inner Join Tipologie on [Table].[Tipologia] = [Tipologie].[ID]  
                         WHERE [Table].[Vetrina] = @Vetrina">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="Vetrina" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
            </td>
            <td>

            </td>
        </tr>
    </table>
</asp:Content>

