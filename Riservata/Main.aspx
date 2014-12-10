<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Riservata_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">Main area riservata</p>
    <ul>
        <li><a href="AddImmobile.aspx">Aggiungi immobile</a></li>
        <li><a href="ListaImm.aspx">Lista immobili / modifica</a></li>
        <li><a href="ImmElimina.aspx" title="Per essere eliminato l'immobile non deve essere pubblicato">Elimina immobili</a></li>
        <li><a href="PlugInAdmin.aspx">Plugin drop box list</a></li>
        <li><a href="NewsAdmin.aspx">News e aggiornamenti</a></li>
        <li><a href="ftp://waws-prod-am2-003.ftp.azurewebsites.windows.net">Gestisci trafite ftp</a></li>
    </ul>
</asp:Content>

