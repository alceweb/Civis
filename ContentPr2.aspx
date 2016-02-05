<%@ Page Title="" Language="C#" MasterPageFile="~/Prestigio.master" AutoEventWireup="true" CodeFile="ContentPr2.aspx.cs" Inherits="ContentPr2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="h2content">Immobile due
        <span>
            <asp:LinkButton CssClass="linkBtn" ID="LinkButton1" OnClick="LinkButton1_Click" runat="server" Text="Descrizione generale" BorderStyle="None" ></asp:LinkButton>
            <asp:LinkButton CssClass="linkBtn" ID="LinkButton2" OnClick="LinkButton2_Click" runat="server" Text="Galleria fotografica" BorderStyle="None" ></asp:LinkButton>
       </span>
    </h2>
    <asp:Panel ID="PanelImg" Visible="true" runat="server">
        <img class="bodyImg" src="Images/Slides/Prestigio2.jpg" />
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <div class="descrizione">
            <h1>Descrizione dettagliata dell'immobile
            </h1>
            <p>
                Qui potrai descrivere tutte le caratteristiche dell'immobile.<br />
                Potrai inseriire <strong>Testo in grassetto</strong> <em>In italico</em> <strong><em>In italico grassetto</em></strong>
                <span style="color: red">testo colorato</span>
                <span style="color: yellow">testo colorato</span>
                <span style="color: green">testo colorato</span>
                <br />
            </p>
            <p>
                Potrai inserire elenchi puntati
            </p>
            <ul>
                <li>primo elenco</li>
                <li>secondo elenco</li>
                <li>terzo elenco</li>
            </ul>
            <p>
                Potrai inserire elenchi numerati
            </p>
            <ol>
                <li>primo elenco</li>
                <li>secondo elenco</li>
                <li>terzo elenco</li>
            </ol>
            <p>
                Insomma potrai scrivere il cazzo che vuoi per convincere il tuo cliente a comprare!!!
            </p>
            <p>Potrai inserire immagini</p>
            <img src="Images/Slides/3.png" /><img src="Images/Slides/2.png" />
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" Visible="false" runat="server">
        <div class="descrizione1">
        <div class="caption">
            <a href="Images/Slides/Prestigio2.jpg"><img src="Images/Slides/Prestigio2.jpg" alt="" />
            <span>
                <strong>Il parco</strong>
                Bla bla clwe  parlo tanto epr parlare ma poi non è così impostante patrlare di questo immobile. bla bla bla Bla bla clwe  parlo tanto epr parlare ma poi non è così impostante patrlare di questo immobile. bla bla blaBla bla clwe  parlo tanto epr parlare ma poi non è così impostante patrlare di questo immobile. bla bla bla
            </span>

            </a>
        </div>
        <div class="caption">
            <a href="Images/Slides/Prestigio2.jpg"><img src="Images/Slides/Prestigio2.jpg" alt="" />
            <span>
                <strong>La piscina</strong>
                Questo immobile è veramente fantastico conun parco stuendo, un apiscina incredibile, un atttico enorme un garage pieno di ferrari ecc ecc
            </span></a>
        </div>
        <div class="caption">
            <a href="Images/Slides/Prestigio2.jpg"><img src="Images/Slides/Prestigio2.jpg" alt="" />
            <span>
                <strong>Le stanze interne</strong>
                Questo immobile è veramente fantastico conun parco stuendo, un apiscina incredibile, un atttico enorme un garage pieno di ferrari ecc ecc
            </span></a>
        </div>
        <div class="caption">
            <a href="Images/Slides/Prestigio2.jpg"><img src="Images/Slides/Prestigio2.jpg" alt="" />
            <span>
                <strong>La posizione</strong>
                Questo immobile è veramente fantastico conun parco stuendo, un apiscina incredibile, un atttico enorme un garage pieno di ferrari ecc ecc
            </span></a>
        </div>

        </div>
    </asp:Panel>
    <div>
    </div>
</asp:Content>

