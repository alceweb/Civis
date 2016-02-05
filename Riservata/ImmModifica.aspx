<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ImmModifica.aspx.cs" Inherits="Riservata_ImmModifica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina" >Modifica dati immobile</p>
    <p>
        
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
            <table class="ListImm" >
                <tr>
                    <td colspan="4">
                        <asp:Label ID="LabelCodice" runat="server">   Codice: </asp:Label>
                        <asp:TextBox ID="TextBoxCodice" Width="40px" runat="server" Text='<%# Bind("Codice") %>' />
                        <asp:Label ID="LabelCittà" runat="server">   Città: </asp:Label>
                        <asp:TextBox ID="TextBoxCittà" runat="server" Text='<%# Bind("Città") %>' />
                        <asp:Label ID="LabelProvincia" runat="server">   Provincia: </asp:Label>
                        <asp:TextBox ID="TextBoxProvincia" Width="30px" runat="server" Text='<%# Bind("Provincia") %>' />
                        <span class="labRigth">Pubblica
                                    <asp:CheckBox ID="CheckBox11" runat="server" Checked='<%# Bind("Pubblica") %>' /></span>
                        <span class="labRigth">Vetrina
                                    <asp:CheckBox ID="CheckBox12" runat="server" Checked='<%# Bind("Vetrina") %>' /></span>
                    <hr /></td>
                </tr>
                <tr>
                    <td>
                        <span class="labLeft">Categoria:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListCategoria" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="Categoria" DataValueField="Id" SelectedValue='<%# Bind("Categoria") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Categorie] ORDER BY [Categoria]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Tipologia:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListTipologia" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceTipologia" DataTextField="Tipologia" DataValueField="Id" SelectedValue='<%# Bind("Tipologia") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceTipologia" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Tipologie] ORDER BY [Tipologia]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Stato</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListStato" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceStato" DataTextField="Stato" DataValueField="Id" SelectedValue='<%# Bind("Stato") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceStato" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Stato] ORDER BY [Stato]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Prezzo:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="PrezzoTextBox" CssClass="ddlist" runat="server" Text='<%# Bind("Prezzo") %>' />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labLeft">AnnoCostruzione:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="AnnoCostruzioneTextBox" Width="40px" runat="server" Text='<%# Bind("AnnoCostruzione") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Superficie comm. m<sup>2</sup>:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="SuperficieTextBox" Width="100px" runat="server" Text='<%# Bind("Superficie") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Piano:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="PianoTextBox" Width="100px" runat="server" Text='<%# Bind("Piano") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">TotPiani:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="TotPianiTextBox" Width="20px" runat="server" Text='<%# Bind("TotPiani") %>' />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labLeft">NLocali:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="NLocaliTextBox" Width="30px" runat="server" Text='<%# Bind("NLocali") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">NCamereLetto:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="NCamereLettoTextBox" Width="20px" runat="server" Text='<%# Bind("NCamereLetto") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">NSoggiorno:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="NSoggiornoTextBox" Width="20px" runat="server" Text='<%# Bind("NSoggiorno") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Bagni:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="BagniTextBox" Width="20px" runat="server" Text='<%# Bind("Bagni") %>' />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labLeft">Libero:</span>
                        <span class="labRigth">
                            <asp:CheckBox ID="LiberoCheckBox" runat="server" Checked='<%# Bind("Libero") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">SpeseCondominiali mensili:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="SpeseCondominialiTextBox" CssClass="ddlist" runat="server" Text='<%# Bind("SpeseCondominiali") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">ClasseEnergetica:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListClEnergetica" CssClass="ddlist" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceClEnergetica" DataTextField="ClasseEnergetica" DataValueField="Id" SelectedValue='<%# Bind("ClasseEnergetica") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceClEnergetica" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ClEn] ORDER BY [ClasseEnergetica]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">IPE<span style="font-size:11px; text-align:left" > (KWh/mqa)</span>:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="EPITextBox" CssClass="ddlist" runat="server" Text='<%# Bind("EPI") %>' />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labLeft">Cucina:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListCucina" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceCucina" DataTextField="Cucina" DataValueField="Id" SelectedValue='<%# Bind("Cucina") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCucina" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Cucina] ORDER BY [Cucina]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Riscaldamento:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownList2" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceRiscaldamento" DataTextField="Riscaldamento" DataValueField="Id" SelectedValue='<%# Bind("Riscaldamento") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceRiscaldamento" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Riscaldamento] ORDER BY [Riscaldamento]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Box:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListBox" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceBox" DataTextField="Box" DataValueField="Id" SelectedValue='<%# Bind("Box") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceBox" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Box] ORDER BY [Box]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Giardino:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListGiardino" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceGiardino" DataTextField="Giardino" DataValueField="Id" SelectedValue='<%# Bind("Giardino") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceGiardino" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Giardino] ORDER BY [Giardino]"></asp:SqlDataSource>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labLeft">Arredamento:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListArredamento" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceArredamento" DataTextField="Arredamento" DataValueField="Id" SelectedValue='<%# Bind("Arredamento") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceArredamento" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Arredamento] ORDER BY [Arredamento]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Ingresso:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListIngresso" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceIngresso" DataTextField="Ingresso" DataValueField="Id" SelectedValue='<%# Bind("Ingresso") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceIngresso" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Ingresso] ORDER BY [Ingresso]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Ripostiglio:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListRipostiglio" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceRipostiglio" DataTextField="Ripostiglio" DataValueField="Id" SelectedValue='<%# Bind("Ripostiglio") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceRipostiglio" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Ripostiglio] ORDER BY [Ripostiglio]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Cantina:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListCantina" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceCantina" DataTextField="Cantina" DataValueField="Id" SelectedValue='<%# Bind("Cantina") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCantina" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Cantina] ORDER BY [Cantina]"></asp:SqlDataSource>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labLeft">Mansarda:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListMansarda" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceMansarda" DataTextField="Mansarda" DataValueField="Id" SelectedValue='<%# Bind("Mansarda") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceMansarda" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Mansarda] ORDER BY [Mansarda]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Taverna:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListTaverna" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceTaverna" DataTextField="Taverna" DataValueField="Id" SelectedValue='<%# Bind("Taverna") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceTaverna" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Taverna] ORDER BY [Taverna]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Infissi:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListInfissi" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceInfissi" DataTextField="Infissi" DataValueField="Id" SelectedValue='<%# Bind("InfissiInterni") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceInfissi" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Infissi] ORDER BY [Infissi]"></asp:SqlDataSource>
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">ImpiantoTv:</span>
                        <span class="labRigth">
                            <asp:DropDownList ID="DropDownListImpiantoTv" CssClass="ddlist" runat="server" DataSourceID="SqlDataSourceImpiantoTv" DataTextField="ImpiantoTv" DataValueField="Id" SelectedValue='<%# Bind("ImpiantoTv") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceImpiantoTv" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ImpiantoTv] ORDER BY [ImpiantoTv]"></asp:SqlDataSource>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labLeft">Posizione:</span>
                        <span class="labRigth">
                            <asp:TextBox ID="TextBox2" Width="100px" runat="server" Text='<%# Bind("Posizione") %>' />
                        </span>
                    </td>
                    <td>
                        <span class="labLeft">Esposizione:</span>
                        <span class="labRigth">
                        <asp:TextBox ID="TextBox1" Width="40px" Height="20px" runat="server" Text='<%# Bind("Esposizione") %>' />

                        </span>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labRigth">Pannelli solari
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("PannelliSolari") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Pannelli fotov.
                                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("PannelliFotov") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Condizionatore
                                    <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Bind("Condizionatore") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Terrazzo
                                    <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# Bind("Terrazzo") %>' /></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labRigth">Balcone
                                    <asp:CheckBox ID="CheckBox5" runat="server" Checked='<%# Bind("Balcone") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Ascensore
                                    <asp:CheckBox ID="CheckBox6" runat="server" Checked='<%# Bind("Ascensore") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Caminetto
                                    <asp:CheckBox ID="CheckBox7" runat="server" Checked='<%# Bind("Caminetto") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Porta blindata
                                    <asp:CheckBox ID="CheckBox8" runat="server" Checked='<%# Bind("PortaBlindata") %>' /></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="labRigth">Mezzi pubblici
                                    <asp:CheckBox ID="CheckBox9" runat="server" Checked='<%# Bind("MezziPubblici") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Impianto allarme
                                    <asp:CheckBox ID="CheckBox10" runat="server" Checked='<%# Bind("ImpiantoAllarme") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Video citofono
                                    <asp:CheckBox ID="CheckBox15" runat="server" Checked='<%# Bind("VideoCitofono") %>' /></span>
                    </td>
                    <td>
                        <span class="labRigth">Cancello elettrico
                                    <asp:CheckBox ID="CheckBox13" runat="server" Checked='<%# Bind("CancelloElettrico") %>' /></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr />
                        <br />
                        Note:<br />
                        <asp:TextBox ID="NoteTextBox" Width="80%" runat="server" Text='<%# Bind("Note") %>' TextMode="MultiLine" Height="400px" />
                        <br />
                    </td>
                </tr>
            </table>
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
                Bagni:
                <asp:TextBox ID="BagniTextBox" runat="server" Text='<%# Bind("Bagni") %>' />
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
                PannelliSolari:
                <asp:CheckBox ID="PannelliSolariCheckBox" runat="server" Checked='<%# Bind("PannelliSolari") %>' />
                <br />
                PannelliFotov:
                <asp:CheckBox ID="PannelliFotovCheckBox" runat="server" Checked='<%# Bind("PannelliFotov") %>' />
                <br />
                Condizionatore:
                <asp:CheckBox ID="CondizionatoreCheckBox" runat="server" Checked='<%# Bind("Condizionatore") %>' />
                <br />
                Terrazzo:
                <asp:CheckBox ID="TerrazzoCheckBox" runat="server" Checked='<%# Bind("Terrazzo") %>' />
                <br />
                Balcone:
                <asp:CheckBox ID="BalconeCheckBox" runat="server" Checked='<%# Bind("Balcone") %>' />
                <br />
                Ascensore:
                <asp:CheckBox ID="AscensoreCheckBox" runat="server" Checked='<%# Bind("Ascensore") %>' />
                <br />
                Caminetto:
                <asp:CheckBox ID="CaminettoCheckBox" runat="server" Checked='<%# Bind("Caminetto") %>' />
                <br />
                PortaBlindata:
                <asp:CheckBox ID="PortaBlindataCheckBox" runat="server" Checked='<%# Bind("PortaBlindata") %>' />
                <br />
                MezziPubblici:
                <asp:CheckBox ID="MezziPubbliciCheckBox" runat="server" Checked='<%# Bind("MezziPubblici") %>' />
                <br />
                ImpiantoAllarme:
                <asp:CheckBox ID="ImpiantoAllarmeCheckBox" runat="server" Checked='<%# Bind("ImpiantoAllarme") %>' />
                <br />
                CancelloElettrico:
                <asp:CheckBox ID="CancelloElettricoCheckBox" runat="server" Checked='<%# Bind("CancelloElettrico") %>' />
                <br />
                FibraOttica:
                <asp:CheckBox ID="FibraOtticaCheckBox" runat="server" Checked='<%# Bind("FibraOttica") %>' />
                <br />
                VideoCitofono:
                <asp:CheckBox ID="VideoCitofonoCheckBox" runat="server" Checked='<%# Bind("VideoCitofono") %>' />
                <br />
                Codice:
                <asp:TextBox ID="CodiceTextBox" runat="server" Text='<%# Bind("Codice") %>' />
                <br />
                Posizione:
                <asp:TextBox ID="PosizioneTextBox" runat="server" Text='<%# Bind("Posizione") %>' />
                <br />
                Esposizione:
                <asp:TextBox ID="EsposizioneTextBox" runat="server" Text='<%# Bind("Esposizione") %>' />
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
                Bagni:
                <asp:Label ID="BagniLabel" runat="server" Text='<%# Bind("Bagni") %>' />
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
                PannelliSolari:
                <asp:CheckBox ID="PannelliSolariCheckBox" runat="server" Checked='<%# Bind("PannelliSolari") %>' Enabled="false" />
                <br />
                PannelliFotov:
                <asp:CheckBox ID="PannelliFotovCheckBox" runat="server" Checked='<%# Bind("PannelliFotov") %>' Enabled="false" />
                <br />
                Condizionatore:
                <asp:CheckBox ID="CondizionatoreCheckBox" runat="server" Checked='<%# Bind("Condizionatore") %>' Enabled="false" />
                <br />
                Terrazzo:
                <asp:CheckBox ID="TerrazzoCheckBox" runat="server" Checked='<%# Bind("Terrazzo") %>' Enabled="false" />
                <br />
                Balcone:
                <asp:CheckBox ID="BalconeCheckBox" runat="server" Checked='<%# Bind("Balcone") %>' Enabled="false" />
                <br />
                Ascensore:
                <asp:CheckBox ID="AscensoreCheckBox" runat="server" Checked='<%# Bind("Ascensore") %>' Enabled="false" />
                <br />
                Caminetto:
                <asp:CheckBox ID="CaminettoCheckBox" runat="server" Checked='<%# Bind("Caminetto") %>' Enabled="false" />
                <br />
                PortaBlindata:
                <asp:CheckBox ID="PortaBlindataCheckBox" runat="server" Checked='<%# Bind("PortaBlindata") %>' Enabled="false" />
                <br />
                MezziPubblici:
                <asp:CheckBox ID="MezziPubbliciCheckBox" runat="server" Checked='<%# Bind("MezziPubblici") %>' Enabled="false" />
                <br />
                ImpiantoAllarme:
                <asp:CheckBox ID="ImpiantoAllarmeCheckBox" runat="server" Checked='<%# Bind("ImpiantoAllarme") %>' Enabled="false" />
                <br />
                CancelloElettrico:
                <asp:CheckBox ID="CancelloElettricoCheckBox" runat="server" Checked='<%# Bind("CancelloElettrico") %>' Enabled="false" />
                <br />
                FibraOttica:
                <asp:CheckBox ID="FibraOtticaCheckBox" runat="server" Checked='<%# Bind("FibraOttica") %>' Enabled="false" />
                <br />
                VideoCitofono:
                <asp:CheckBox ID="VideoCitofonoCheckBox" runat="server" Checked='<%# Bind("VideoCitofono") %>' Enabled="false" />
                <br />
                Codice:
                <asp:Label ID="CodiceLabel" runat="server" Text='<%# Bind("Codice") %>' />
                <br />
                Posizione:
                <asp:Label ID="PosizioneLabel" runat="server" Text='<%# Bind("Posizione") %>' />
                <br />
                Esposizione:
                <asp:Label ID="EsposizioneLabel" runat="server" Text='<%# Bind("Esposizione") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifica" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Elimina" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuovo" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id"
            InsertCommand="INSERT INTO [Table] ([Categoria], [Tipologia], [Stato], [Libero], [Prezzo], [NLocali], [Superficie], [SpeseCondominiali], [NCamereLetto], [NSoggiorno], [AnnoCostruzione], [Piano], [TotPiani], [ClasseEnergetica], [EPI], [Riscaldamento], [Cucina], [Box], [NPostiAuto], [Bagni], [Giardino], [Arredamento], [Ingresso], [Ripostiglio], [Cantina], [Mansarda], [Taverna], [InfissiInterni], [ImpiantoTv], [Note], [Città], [Provincia], [PannelliSolari], [PannelliFotov], [Condizionatore], [Terrazzo], [Balcone], [Ascensore], [Caminetto], [PortaBlindata], [MezziPubblici], [ImpiantoAllarme], [CancelloElettrico], [FibraOttica], [VideoCitofono], [Codice], [Posizione], [Esposizione], [Vetrina], [Pubblica]) VALUES (@Categoria, @Tipologia, @Stato, @Libero, @Prezzo, @NLocali, @Superficie, @SpeseCondominiali, @NCamereLetto, @NSoggiorno, @AnnoCostruzione, @Piano, @TotPiani, @ClasseEnergetica, @EPI, @Riscaldamento, @Cucina, @Box, @NPostiAuto, @Bagni, @Giardino, @Arredamento, @Ingresso, @Ripostiglio, @Cantina, @Mansarda, @Taverna, @InfissiInterni, @ImpiantoTv, @Note, @Città, @Provincia, @PannelliSolari, @PannelliFotov, @Condizionatore, @Terrazzo, @Balcone, @Ascensore, @Caminetto, @PortaBlindata, @MezziPubblici, @ImpiantoAllarme, @CancelloElettrico, @FibraOttica, @VideoCitofono, @Codice, @Posizione, @Esposizione, @Vetrina, @Pubblica)"
            SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)"
            UpdateCommand="UPDATE [Table] SET [Categoria] = @Categoria, [Tipologia] = @Tipologia, [Stato] = @Stato, [Libero] = @Libero, [Prezzo] = @Prezzo, [NLocali] = @NLocali, [Superficie] = @Superficie, [SpeseCondominiali] = @SpeseCondominiali, [NCamereLetto] = @NCamereLetto, [NSoggiorno] = @NSoggiorno, [AnnoCostruzione] = @AnnoCostruzione, [Piano] = @Piano, [TotPiani] = @TotPiani, [ClasseEnergetica] = @ClasseEnergetica, [EPI] = @EPI, [Riscaldamento] = @Riscaldamento, [Cucina] = @Cucina, [Box] = @Box, [NPostiAuto] = @NPostiAuto, [Bagni] = @Bagni, [Giardino] = @Giardino, [Arredamento] = @Arredamento, [Ingresso] = @Ingresso, [Ripostiglio] = @Ripostiglio, [Cantina] = @Cantina, [Mansarda] = @Mansarda, [Taverna] = @Taverna, [InfissiInterni] = @InfissiInterni, [ImpiantoTv] = @ImpiantoTv, [Note] = @Note, [Città] = @Città, [Provincia] = @Provincia, [PannelliSolari] = @PannelliSolari, [PannelliFotov] = @PannelliFotov, [Condizionatore] = @Condizionatore, [Terrazzo] = @Terrazzo, [Balcone] = @Balcone, [Ascensore] = @Ascensore, [Caminetto] = @Caminetto, [PortaBlindata] = @PortaBlindata, [MezziPubblici] = @MezziPubblici, [ImpiantoAllarme] = @ImpiantoAllarme, [CancelloElettrico] = @CancelloElettrico, [FibraOttica] = @FibraOttica, [VideoCitofono] = @VideoCitofono, [Codice] = @Codice, [Posizione] = @Posizione, [Esposizione] = @Esposizione, [Pubblica] = @Pubblica, [Vetrina] = @Vetrina WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Categoria" Type="Int32" />
                <asp:Parameter Name="Tipologia" Type="Int32" />
                <asp:Parameter Name="Stato" Type="Int32" />
                <asp:Parameter Name="Libero" Type="Boolean" />
                <asp:Parameter Name="Prezzo" Type="Decimal" />
                <asp:Parameter Name="NLocali" Type="Int32" />
                <asp:Parameter Name="Superficie" Type="Int32" />
                <asp:Parameter Name="SpeseCondominiali" Type="Decimal" />
                <asp:Parameter Name="NCamereLetto" Type="Int32" />
                <asp:Parameter Name="NSoggiorno" Type="Int32" />
                <asp:Parameter Name="AnnoCostruzione" Type="Int32" />
                <asp:Parameter Name="Piano" Type="String" />
                <asp:Parameter Name="TotPiani" Type="Int32" />
                <asp:Parameter Name="ClasseEnergetica" Type="Int32" />
                <asp:Parameter Name="EPI" Type="String" />
                <asp:Parameter Name="Riscaldamento" Type="Int32" />
                <asp:Parameter Name="Cucina" Type="Int32" />
                <asp:Parameter Name="Box" Type="Int32" />
                <asp:Parameter Name="NPostiAuto" Type="Int32" />
                <asp:Parameter Name="Bagni" Type="Int32" />
                <asp:Parameter Name="Giardino" Type="Int32" />
                <asp:Parameter Name="Arredamento" Type="Int32" />
                <asp:Parameter Name="Ingresso" Type="Int32" />
                <asp:Parameter Name="Ripostiglio" Type="Int32" />
                <asp:Parameter Name="Cantina" Type="Int32" />
                <asp:Parameter Name="Mansarda" Type="Int32" />
                <asp:Parameter Name="Taverna" Type="Int32" />
                <asp:Parameter Name="InfissiInterni" Type="Int32" />
                <asp:Parameter Name="ImpiantoTv" Type="Int32" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="Città" Type="String" />
                <asp:Parameter Name="Provincia" Type="String" />
                <asp:Parameter Name="PannelliSolari" Type="Boolean" />
                <asp:Parameter Name="PannelliFotov" Type="Boolean" />
                <asp:Parameter Name="Condizionatore" Type="Boolean" />
                <asp:Parameter Name="Terrazzo" Type="Boolean" />
                <asp:Parameter Name="Balcone" Type="Boolean" />
                <asp:Parameter Name="Ascensore" Type="Boolean" />
                <asp:Parameter Name="Caminetto" Type="Boolean" />
                <asp:Parameter Name="PortaBlindata" Type="Boolean" />
                <asp:Parameter Name="MezziPubblici" Type="Boolean" />
                <asp:Parameter Name="ImpiantoAllarme" Type="Boolean" />
                <asp:Parameter Name="CancelloElettrico" Type="Boolean" />
                <asp:Parameter Name="FibraOttica" Type="Boolean" />
                <asp:Parameter Name="VideoCitofono" Type="Boolean" />
                <asp:Parameter Name="Codice" Type="String" />
                <asp:Parameter Name="Posizione" Type="String" />
                <asp:Parameter Name="Esposizione" Type="String" />
                <asp:Parameter Name="Vetrina" Type="Byte" />
                <asp:Parameter Name="Pubblica" Type="Byte" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Categoria" Type="Int32" />
                <asp:Parameter Name="Tipologia" Type="Int32" />
                <asp:Parameter Name="Stato" Type="Int32" />
                <asp:Parameter Name="Libero" Type="Boolean" />
                <asp:Parameter Name="Prezzo" Type="Decimal" />
                <asp:Parameter Name="NLocali" Type="Int32" />
                <asp:Parameter Name="Superficie" Type="Int32" />
                <asp:Parameter Name="SpeseCondominiali" Type="Decimal" />
                <asp:Parameter Name="NCamereLetto" Type="Int32" />
                <asp:Parameter Name="NSoggiorno" Type="Int32" />
                <asp:Parameter Name="AnnoCostruzione" Type="Int32" />
                <asp:Parameter Name="Piano" Type="String" />
                <asp:Parameter Name="TotPiani" Type="Int32" />
                <asp:Parameter Name="ClasseEnergetica" Type="Int32" />
                <asp:Parameter Name="EPI" Type="String" />
                <asp:Parameter Name="Riscaldamento" Type="Int32" />
                <asp:Parameter Name="Cucina" Type="Int32" />
                <asp:Parameter Name="Box" Type="Int32" />
                <asp:Parameter Name="NPostiAuto" Type="Int32" />
                <asp:Parameter Name="Bagni" Type="Int32" />
                <asp:Parameter Name="Giardino" Type="Int32" />
                <asp:Parameter Name="Arredamento" Type="Int32" />
                <asp:Parameter Name="Ingresso" Type="Int32" />
                <asp:Parameter Name="Ripostiglio" Type="Int32" />
                <asp:Parameter Name="Cantina" Type="Int32" />
                <asp:Parameter Name="Mansarda" Type="Int32" />
                <asp:Parameter Name="Taverna" Type="Int32" />
                <asp:Parameter Name="InfissiInterni" Type="Int32" />
                <asp:Parameter Name="ImpiantoTv" Type="Int32" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="Città" Type="String" />
                <asp:Parameter Name="Provincia" Type="String" />
                <asp:Parameter Name="PannelliSolari" Type="Boolean" />
                <asp:Parameter Name="PannelliFotov" Type="Boolean" />
                <asp:Parameter Name="Condizionatore" Type="Boolean" />
                <asp:Parameter Name="Terrazzo" Type="Boolean" />
                <asp:Parameter Name="Balcone" Type="Boolean" />
                <asp:Parameter Name="Ascensore" Type="Boolean" />
                <asp:Parameter Name="Caminetto" Type="Boolean" />
                <asp:Parameter Name="PortaBlindata" Type="Boolean" />
                <asp:Parameter Name="MezziPubblici" Type="Boolean" />
                <asp:Parameter Name="ImpiantoAllarme" Type="Boolean" />
                <asp:Parameter Name="CancelloElettrico" Type="Boolean" />
                <asp:Parameter Name="FibraOttica" Type="Boolean" />
                <asp:Parameter Name="VideoCitofono" Type="Boolean" />
                <asp:Parameter Name="Codice" Type="String" />
                <asp:Parameter Name="Posizione" Type="String" />
                <asp:Parameter Name="Esposizione" Type="String" />
                <asp:Parameter Name="Vetrina" Type="Byte" />
                <asp:Parameter Name="Pubblica" Type="Byte" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </p>
</asp:Content>

