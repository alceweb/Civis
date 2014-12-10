<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="Riservata_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Categoria:
            <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
            <br />
            Tipologia:
            <asp:TextBox ID="TipologiaTextBox" runat="server" Text='<%# Bind("Tipologia") %>' />
            <br />
            Stato:
            <asp:TextBox ID="StatoTextBox" runat="server" Text='<%# Bind("Stato") %>' />
            <br />
            Libero:
            <asp:CheckBox ID="LiberoCheckBox" runat="server" Checked='<%# Bind("Libero") %>' />
            <br />
            Prezzo:
            <asp:TextBox ID="PrezzoTextBox" runat="server" Text='<%# Bind("Prezzo") %>' />
            <br />
            NLocali:
            <asp:TextBox ID="NLocaliTextBox" runat="server" Text='<%# Bind("NLocali") %>' />
            <br />
            Superficie:
            <asp:TextBox ID="SuperficieTextBox" runat="server" Text='<%# Bind("Superficie") %>' />
            <br />
            SpeseCondominiali:
            <asp:TextBox ID="SpeseCondominialiTextBox" runat="server" Text='<%# Bind("SpeseCondominiali") %>' />
            <br />
            NCamereLetto:
            <asp:TextBox ID="NCamereLettoTextBox" runat="server" Text='<%# Bind("NCamereLetto") %>' />
            <br />
            NSoggiorno:
            <asp:TextBox ID="NSoggiornoTextBox" runat="server" Text='<%# Bind("NSoggiorno") %>' />
            <br />
            AnnoCostruzione:
            <asp:TextBox ID="AnnoCostruzioneTextBox" runat="server" Text='<%# Bind("AnnoCostruzione") %>' />
            <br />
            Piano:
            <asp:TextBox ID="PianoTextBox" runat="server" Text='<%# Bind("Piano") %>' />
            <br />
            TotPiani:
            <asp:TextBox ID="TotPianiTextBox" runat="server" Text='<%# Bind("TotPiani") %>' />
            <br />
            ClasseEnergetica:
            <asp:TextBox ID="ClasseEnergeticaTextBox" runat="server" Text='<%# Bind("ClasseEnergetica") %>' />
            <br />
            EPI:
            <asp:TextBox ID="EPITextBox" runat="server" Text='<%# Bind("EPI") %>' />
            <br />
            Riscaldamento:
            <asp:TextBox ID="RiscaldamentoTextBox" runat="server" Text='<%# Bind("Riscaldamento") %>' />
            <br />
            Cucina:
            <asp:TextBox ID="CucinaTextBox" runat="server" Text='<%# Bind("Cucina") %>' />
            <br />
            Box:
            <asp:TextBox ID="BoxTextBox" runat="server" Text='<%# Bind("Box") %>' />
            <br />
            NPostiAuto:
            <asp:TextBox ID="NPostiAutoTextBox" runat="server" Text='<%# Bind("NPostiAuto") %>' />
            <br />
            Giardino:
            <asp:TextBox ID="GiardinoTextBox" runat="server" Text='<%# Bind("Giardino") %>' />
            <br />
            Arredamento:
            <asp:TextBox ID="ArredamentoTextBox" runat="server" Text='<%# Bind("Arredamento") %>' />
            <br />
            Ingresso:
            <asp:TextBox ID="IngressoTextBox" runat="server" Text='<%# Bind("Ingresso") %>' />
            <br />
            Ripostiglio:
            <asp:TextBox ID="RipostiglioTextBox" runat="server" Text='<%# Bind("Ripostiglio") %>' />
            <br />
            Cantina:
            <asp:TextBox ID="CantinaTextBox" runat="server" Text='<%# Bind("Cantina") %>' />
            <br />
            Mansarda:
            <asp:TextBox ID="MansardaTextBox" runat="server" Text='<%# Bind("Mansarda") %>' />
            <br />
            Taverna:
            <asp:TextBox ID="TavernaTextBox" runat="server" Text='<%# Bind("Taverna") %>' />
            <br />
            InfissiInterni:
            <asp:TextBox ID="InfissiInterniTextBox" runat="server" Text='<%# Bind("InfissiInterni") %>' />
            <br />
            ImpiantoTv:
            <asp:TextBox ID="ImpiantoTvTextBox" runat="server" Text='<%# Bind("ImpiantoTv") %>' />
            <br />
            Note:
            <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
            <br />
            Città:
            <asp:TextBox ID="CittàTextBox" runat="server" Text='<%# Bind("Città") %>' />
            <br />
            Provincia:
            <asp:TextBox ID="ProvinciaTextBox" runat="server" Text='<%# Bind("Provincia") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aggiorna" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Categoria:
            <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
            <br />
            Tipologia:
            <asp:TextBox ID="TipologiaTextBox" runat="server" Text='<%# Bind("Tipologia") %>' />
            <br />
            Stato:
            <asp:TextBox ID="StatoTextBox" runat="server" Text='<%# Bind("Stato") %>' />
            <br />
            Libero:
            <asp:CheckBox ID="LiberoCheckBox" runat="server" Checked='<%# Bind("Libero") %>' />
            <br />
            Prezzo:
            <asp:TextBox ID="PrezzoTextBox" runat="server" Text='<%# Bind("Prezzo") %>' />
            <br />
            NLocali:
            <asp:TextBox ID="NLocaliTextBox" runat="server" Text='<%# Bind("NLocali") %>' />
            <br />
            Superficie:
            <asp:TextBox ID="SuperficieTextBox" runat="server" Text='<%# Bind("Superficie") %>' />
            <br />
            SpeseCondominiali:
            <asp:TextBox ID="SpeseCondominialiTextBox" runat="server" Text='<%# Bind("SpeseCondominiali") %>' />
            <br />
            NCamereLetto:
            <asp:TextBox ID="NCamereLettoTextBox" runat="server" Text='<%# Bind("NCamereLetto") %>' />
            <br />
            NSoggiorno:
            <asp:TextBox ID="NSoggiornoTextBox" runat="server" Text='<%# Bind("NSoggiorno") %>' />
            <br />
            AnnoCostruzione:
            <asp:TextBox ID="AnnoCostruzioneTextBox" runat="server" Text='<%# Bind("AnnoCostruzione") %>' />
            <br />
            Piano:
            <asp:TextBox ID="PianoTextBox" runat="server" Text='<%# Bind("Piano") %>' />
            <br />
            TotPiani:
            <asp:TextBox ID="TotPianiTextBox" runat="server" Text='<%# Bind("TotPiani") %>' />
            <br />
            ClasseEnergetica:
            <asp:TextBox ID="ClasseEnergeticaTextBox" runat="server" Text='<%# Bind("ClasseEnergetica") %>' />
            <br />
            EPI:
            <asp:TextBox ID="EPITextBox" runat="server" Text='<%# Bind("EPI") %>' />
            <br />
            Riscaldamento:
            <asp:TextBox ID="RiscaldamentoTextBox" runat="server" Text='<%# Bind("Riscaldamento") %>' />
            <br />
            Cucina:
            <asp:TextBox ID="CucinaTextBox" runat="server" Text='<%# Bind("Cucina") %>' />
            <br />
            Box:
            <asp:TextBox ID="BoxTextBox" runat="server" Text='<%# Bind("Box") %>' />
            <br />
            NPostiAuto:
            <asp:TextBox ID="NPostiAutoTextBox" runat="server" Text='<%# Bind("NPostiAuto") %>' />
            <br />
            Giardino:
            <asp:TextBox ID="GiardinoTextBox" runat="server" Text='<%# Bind("Giardino") %>' />
            <br />
            Arredamento:
            <asp:TextBox ID="ArredamentoTextBox" runat="server" Text='<%# Bind("Arredamento") %>' />
            <br />
            Ingresso:
            <asp:TextBox ID="IngressoTextBox" runat="server" Text='<%# Bind("Ingresso") %>' />
            <br />
            Ripostiglio:
            <asp:TextBox ID="RipostiglioTextBox" runat="server" Text='<%# Bind("Ripostiglio") %>' />
            <br />
            Cantina:
            <asp:TextBox ID="CantinaTextBox" runat="server" Text='<%# Bind("Cantina") %>' />
            <br />
            Mansarda:
            <asp:TextBox ID="MansardaTextBox" runat="server" Text='<%# Bind("Mansarda") %>' />
            <br />
            Taverna:
            <asp:TextBox ID="TavernaTextBox" runat="server" Text='<%# Bind("Taverna") %>' />
            <br />
            InfissiInterni:
            <asp:TextBox ID="InfissiInterniTextBox" runat="server" Text='<%# Bind("InfissiInterni") %>' />
            <br />
            ImpiantoTv:
            <asp:TextBox ID="ImpiantoTvTextBox" runat="server" Text='<%# Bind("ImpiantoTv") %>' />
            <br />
            Note:
            <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
            <br />
            Città:
            <asp:TextBox ID="CittàTextBox" runat="server" Text='<%# Bind("Città") %>' />
            <br />
            Provincia:
            <asp:TextBox ID="ProvinciaTextBox" runat="server" Text='<%# Bind("Provincia") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserisci" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Categoria:
            <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Bind("Categoria") %>' />
            <br />
            Tipologia:
            <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Bind("Tipologia") %>' />
            <br />
            Stato:
            <asp:Label ID="StatoLabel" runat="server" Text='<%# Bind("Stato") %>' />
            <br />
            Libero:
            <asp:CheckBox ID="LiberoCheckBox" runat="server" Checked='<%# Bind("Libero") %>' Enabled="false" />
            <br />
            Prezzo:
            <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Bind("Prezzo") %>' />
            <br />
            NLocali:
            <asp:Label ID="NLocaliLabel" runat="server" Text='<%# Bind("NLocali") %>' />
            <br />
            Superficie:
            <asp:Label ID="SuperficieLabel" runat="server" Text='<%# Bind("Superficie") %>' />
            <br />
            SpeseCondominiali:
            <asp:Label ID="SpeseCondominialiLabel" runat="server" Text='<%# Bind("SpeseCondominiali") %>' />
            <br />
            NCamereLetto:
            <asp:Label ID="NCamereLettoLabel" runat="server" Text='<%# Bind("NCamereLetto") %>' />
            <br />
            NSoggiorno:
            <asp:Label ID="NSoggiornoLabel" runat="server" Text='<%# Bind("NSoggiorno") %>' />
            <br />
            AnnoCostruzione:
            <asp:Label ID="AnnoCostruzioneLabel" runat="server" Text='<%# Bind("AnnoCostruzione") %>' />
            <br />
            Piano:
            <asp:Label ID="PianoLabel" runat="server" Text='<%# Bind("Piano") %>' />
            <br />
            TotPiani:
            <asp:Label ID="TotPianiLabel" runat="server" Text='<%# Bind("TotPiani") %>' />
            <br />
            ClasseEnergetica:
            <asp:Label ID="ClasseEnergeticaLabel" runat="server" Text='<%# Bind("ClasseEnergetica") %>' />
            <br />
            EPI:
            <asp:Label ID="EPILabel" runat="server" Text='<%# Bind("EPI") %>' />
            <br />
            Riscaldamento:
            <asp:Label ID="RiscaldamentoLabel" runat="server" Text='<%# Bind("Riscaldamento") %>' />
            <br />
            Cucina:
            <asp:Label ID="CucinaLabel" runat="server" Text='<%# Bind("Cucina") %>' />
            <br />
            Box:
            <asp:Label ID="BoxLabel" runat="server" Text='<%# Bind("Box") %>' />
            <br />
            NPostiAuto:
            <asp:Label ID="NPostiAutoLabel" runat="server" Text='<%# Bind("NPostiAuto") %>' />
            <br />
            Giardino:
            <asp:Label ID="GiardinoLabel" runat="server" Text='<%# Bind("Giardino") %>' />
            <br />
            Arredamento:
            <asp:Label ID="ArredamentoLabel" runat="server" Text='<%# Bind("Arredamento") %>' />
            <br />
            Ingresso:
            <asp:Label ID="IngressoLabel" runat="server" Text='<%# Bind("Ingresso") %>' />
            <br />
            Ripostiglio:
            <asp:Label ID="RipostiglioLabel" runat="server" Text='<%# Bind("Ripostiglio") %>' />
            <br />
            Cantina:
            <asp:Label ID="CantinaLabel" runat="server" Text='<%# Bind("Cantina") %>' />
            <br />
            Mansarda:
            <asp:Label ID="MansardaLabel" runat="server" Text='<%# Bind("Mansarda") %>' />
            <br />
            Taverna:
            <asp:Label ID="TavernaLabel" runat="server" Text='<%# Bind("Taverna") %>' />
            <br />
            InfissiInterni:
            <asp:Label ID="InfissiInterniLabel" runat="server" Text='<%# Bind("InfissiInterni") %>' />
            <br />
            ImpiantoTv:
            <asp:Label ID="ImpiantoTvLabel" runat="server" Text='<%# Bind("ImpiantoTv") %>' />
            <br />
            Note:
            <asp:Label ID="NoteLabel" runat="server" Text='<%# Bind("Note") %>' />
            <br />
            Città:
            <asp:Label ID="CittàLabel" runat="server" Text='<%# Bind("Città") %>' />
            <br />
            Provincia:
            <asp:Label ID="ProvinciaLabel" runat="server" Text='<%# Bind("Provincia") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifica" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Elimina" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuovo" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Categoria], [Tipologia], [Stato], [Libero], [Prezzo], [NLocali], [Superficie], [SpeseCondominiali], [NCamereLetto], [NSoggiorno], [AnnoCostruzione], [Piano], [TotPiani], [ClasseEnergetica], [EPI], [Riscaldamento], [Cucina], [Box], [NPostiAuto], [Giardino], [Arredamento], [Ingresso], [Ripostiglio], [Cantina], [Mansarda], [Taverna], [InfissiInterni], [ImpiantoTv], [Note], [Città], [Provincia]) VALUES (@Categoria, @Tipologia, @Stato, @Libero, @Prezzo, @NLocali, @Superficie, @SpeseCondominiali, @NCamereLetto, @NSoggiorno, @AnnoCostruzione, @Piano, @TotPiani, @ClasseEnergetica, @EPI, @Riscaldamento, @Cucina, @Box, @NPostiAuto, @Giardino, @Arredamento, @Ingresso, @Ripostiglio, @Cantina, @Mansarda, @Taverna, @InfissiInterni, @ImpiantoTv, @Note, @Città, @Provincia)" SelectCommand="SELECT [Id], [Categoria], [Tipologia], [Stato], [Libero], [Prezzo], [NLocali], [Superficie], [SpeseCondominiali], [NCamereLetto], [NSoggiorno], [AnnoCostruzione], [Piano], [TotPiani], [ClasseEnergetica], [EPI], [Riscaldamento], [Cucina], [Box], [NPostiAuto], [Giardino], [Arredamento], [Ingresso], [Ripostiglio], [Cantina], [Mansarda], [Taverna], [InfissiInterni], [ImpiantoTv], [Note], [Città], [Provincia] FROM [Table]" UpdateCommand="UPDATE [Table] SET [Categoria] = @Categoria, [Tipologia] = @Tipologia, [Stato] = @Stato, [Libero] = @Libero, [Prezzo] = @Prezzo, [NLocali] = @NLocali, [Superficie] = @Superficie, [SpeseCondominiali] = @SpeseCondominiali, [NCamereLetto] = @NCamereLetto, [NSoggiorno] = @NSoggiorno, [AnnoCostruzione] = @AnnoCostruzione, [Piano] = @Piano, [TotPiani] = @TotPiani, [ClasseEnergetica] = @ClasseEnergetica, [EPI] = @EPI, [Riscaldamento] = @Riscaldamento, [Cucina] = @Cucina, [Box] = @Box, [NPostiAuto] = @NPostiAuto, [Giardino] = @Giardino, [Arredamento] = @Arredamento, [Ingresso] = @Ingresso, [Ripostiglio] = @Ripostiglio, [Cantina] = @Cantina, [Mansarda] = @Mansarda, [Taverna] = @Taverna, [InfissiInterni] = @InfissiInterni, [ImpiantoTv] = @ImpiantoTv, [Note] = @Note, [Città] = @Città, [Provincia] = @Provincia WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Categoria" Type="Byte" />
            <asp:Parameter Name="Tipologia" Type="Byte" />
            <asp:Parameter Name="Stato" Type="Byte" />
            <asp:Parameter Name="Libero" Type="Boolean" />
            <asp:Parameter Name="Prezzo" Type="Decimal" />
            <asp:Parameter Name="NLocali" Type="Int32" />
            <asp:Parameter Name="Superficie" Type="Int32" />
            <asp:Parameter Name="SpeseCondominiali" Type="Decimal" />
            <asp:Parameter Name="NCamereLetto" Type="Int32" />
            <asp:Parameter Name="NSoggiorno" Type="Int32" />
            <asp:Parameter Name="AnnoCostruzione" Type="Int32" />
            <asp:Parameter Name="Piano" Type="Int32" />
            <asp:Parameter Name="TotPiani" Type="Int32" />
            <asp:Parameter Name="ClasseEnergetica" Type="Byte" />
            <asp:Parameter Name="EPI" Type="Byte" />
            <asp:Parameter Name="Riscaldamento" Type="Byte" />
            <asp:Parameter Name="Cucina" Type="Byte" />
            <asp:Parameter Name="Box" Type="Byte" />
            <asp:Parameter Name="NPostiAuto" Type="Int32" />
            <asp:Parameter Name="Giardino" Type="Byte" />
            <asp:Parameter Name="Arredamento" Type="Byte" />
            <asp:Parameter Name="Ingresso" Type="Byte" />
            <asp:Parameter Name="Ripostiglio" Type="Byte" />
            <asp:Parameter Name="Cantina" Type="Byte" />
            <asp:Parameter Name="Mansarda" Type="Byte" />
            <asp:Parameter Name="Taverna" Type="Byte" />
            <asp:Parameter Name="InfissiInterni" Type="Byte" />
            <asp:Parameter Name="ImpiantoTv" Type="Byte" />
            <asp:Parameter Name="Note" Type="String" />
            <asp:Parameter Name="Città" Type="String" />
            <asp:Parameter Name="Provincia" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Categoria" Type="Byte" />
            <asp:Parameter Name="Tipologia" Type="Byte" />
            <asp:Parameter Name="Stato" Type="Byte" />
            <asp:Parameter Name="Libero" Type="Boolean" />
            <asp:Parameter Name="Prezzo" Type="Decimal" />
            <asp:Parameter Name="NLocali" Type="Int32" />
            <asp:Parameter Name="Superficie" Type="Int32" />
            <asp:Parameter Name="SpeseCondominiali" Type="Decimal" />
            <asp:Parameter Name="NCamereLetto" Type="Int32" />
            <asp:Parameter Name="NSoggiorno" Type="Int32" />
            <asp:Parameter Name="AnnoCostruzione" Type="Int32" />
            <asp:Parameter Name="Piano" Type="Int32" />
            <asp:Parameter Name="TotPiani" Type="Int32" />
            <asp:Parameter Name="ClasseEnergetica" Type="Byte" />
            <asp:Parameter Name="EPI" Type="Byte" />
            <asp:Parameter Name="Riscaldamento" Type="Byte" />
            <asp:Parameter Name="Cucina" Type="Byte" />
            <asp:Parameter Name="Box" Type="Byte" />
            <asp:Parameter Name="NPostiAuto" Type="Int32" />
            <asp:Parameter Name="Giardino" Type="Byte" />
            <asp:Parameter Name="Arredamento" Type="Byte" />
            <asp:Parameter Name="Ingresso" Type="Byte" />
            <asp:Parameter Name="Ripostiglio" Type="Byte" />
            <asp:Parameter Name="Cantina" Type="Byte" />
            <asp:Parameter Name="Mansarda" Type="Byte" />
            <asp:Parameter Name="Taverna" Type="Byte" />
            <asp:Parameter Name="InfissiInterni" Type="Byte" />
            <asp:Parameter Name="ImpiantoTv" Type="Byte" />
            <asp:Parameter Name="Note" Type="String" />
            <asp:Parameter Name="Città" Type="String" />
            <asp:Parameter Name="Provincia" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

