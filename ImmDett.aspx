﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ImmDett.aspx.cs" Inherits="ImmDett" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">Scheda immobile</p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
    <ItemTemplate>
    <table class="ListImm">
        <tr>
            <td style="padding-left: 10px" colspan="4">
                <span style="float: left; margin-left: 40px">Codice immobile: 
                    <asp:Label ID="IdLabel" CssClass="LabelForm" runat="server" Text='<%# Eval("Codice") %>' /></span>
                <asp:Label ID="LabelCittà" runat="server">Città: </asp:Label>
                <asp:Label ID="LabelBoxCittà1" CssClass="LabelForm" runat="server" Text='<%# Bind("Città") %>' />
                <asp:Label ID="LabelProvincia" runat="server">Provincia: </asp:Label>
                <asp:Label ID="LabelProvincia1" CssClass="LabelForm" Width="30px" runat="server" Text='<%# Bind("Provincia") %>' />
                <a class="labRigth" style="color:#942b2b" href="ImmGall.aspx?id=<%# Eval("Id")%>">
                    Galleria fotografica<img Style="border-style: none; height:24px; float:right " src="Images/Picture.png" /></a>
                <hr />
            </td

        </tr>
        <tr>
            <td style="padding-left:20px">
                <span class="labLeft">Categoria:</span>
                <span class="labRigth">
                <asp:label ID="LabelCat" runat="server" Text='<%# Bind("Cat") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Tipologia:</span>
                <span class="labRigth">
                <asp:label ID="Label1" runat="server" Text='<%# Bind("Tip") %>' />
            </span>
            </td>
            <td>
                <span class="labLeft">Stato</span>
            <span class="labRigth">
                <asp:label ID="Label2" runat="server" Text='<%# Bind("Stat") %>' />
            </span>
            </td>
            <td>
                <span class="labLeft">Prezzo:</span>
                <span class="labRigth">
                <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Bind("Prezzo", "{0:C0}") %>' />
            </span>
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px">
                <span class="labLeft">Anno costruzione:</span>
            <span class="labRigth">
                <asp:Label ID="AnnoCostruzioneLabel" Width="40px" runat="server" Text='<%# Bind("AnnoCostruzione") %>' />
            </span>
            </td>
            <td>
                <span class="labLeft">Superficie (m<sup>2</sup>):</span>
            <span class="labRigth">
                <asp:Label ID="SuperficieLabel" Width="100px" runat="server" Text='<%# Bind("Superficie") %>' />
            </span>
            </td>
            <td>
                <span class="labLeft">Piano:</span>
            <span class="labRigth">
                <asp:Label ID="PianoLabel" runat="server" Text='<%# Bind("Piano") %>' />
            </span>
            </td>
            <td>
                <span class="labLeft">TotPiani:</span>
            <span class="labRigth">
                <asp:Label ID="TotPianiLabel" Width="20px" runat="server" Text='<%# Bind("TotPiani") %>' />
            </span>
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px">
                <span class="labLeft">NLocali: </span>
            <span class="labRigth">
                <asp:Label ID="NLocaliLabel" Width="30px" runat="server" Text='<%# Bind("NLocali") %>' />
            </span>
            </td>
            <td>
                <span class="labLeft">NCamereLetto: </span>
            <span class="labRigth">
                <asp:Label ID="NCamereLettoLabel" Width="20px" runat="server" Text='<%# Bind("NCamereLetto") %>' />
            </span>
            </td>
            <td>
                <span class="labLeft">NSoggiorno:</span>
            <span class="labRigth">
                <asp:Label ID="NSoggiornoLabel" Width="20px" runat="server" Text='<%# Bind("NSoggiorno") %>' />
            </span>
            </td>
            <td>
                <span class="labLeft">Bagni: </span>
            <span class="labRigth">
                <asp:Label ID="BagniLabel" Width="20px" runat="server" Text='<%# Bind("Bagni") %>' />
            </span>
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px">
                <span class="labLeft">Libero: </span>
                <span class="labRigth">
                    <asp:CheckBox ID="LiberoCheckBox" runat="server" Checked='<%# Bind("Libero") %>' Enabled="False" />
                </span>
            </td>
            <td>
                <span class="labLeft">Spese cond. mensili: </span>
                <span class="labRigth">
                    <asp:Label ID="SpeseCondominialiLabel" CssClass="ddlist" runat="server" Text='<%# Bind("SpeseCondominiali", "{0:C}") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Cl. energetica:</span>
                <span class="labRigth">
                    <asp:Label ID="Label4" CssClass="ddlist" runat="server" Text='<%# Bind("Cla") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">IPE <span style="font-size:10px;">(KWh/mqa)</span>:</span>
                <span class="labRigth">
                    <asp:Label ID="EPILabel" CssClass="ddlist" runat="server" Text='<%# Bind("EPI") %>' />
                </span>
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px" colspan="4">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px">
                <span class="labLeft">Cucina:</span>
                <span class="labRigth">
                    <asp:Label ID="Label3" CssClass="ddlist" runat="server" Text='<%# Bind("Cuc") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Riscaldamento:</span>
                <span class="labRigth">
                    <asp:Label ID="Label5" CssClass="ddlist" runat="server" Text='<%# Bind("Ris") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Box:</span>
                <span class="labRigth">
                    <asp:Label ID="Label6" CssClass="ddlist" runat="server" Text='<%# Bind("Bo") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Giardino:</span>
                <span class="labRigth">
                    <asp:Label ID="Label7" CssClass="ddlist" runat="server" Text='<%# Bind("Gia") %>' />
                </span>
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px">
                <span class="labLeft">Arredamento:</span>
                <span class="labRigth">
                    <asp:Label ID="Label8" CssClass="ddlist" runat="server" Text='<%# Bind("Arr") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Ingresso:</span>
                <span class="labRigth">
                    <asp:Label ID="Label9" CssClass="ddlist" runat="server" Text='<%# Bind("Ing") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Ripostiglio:</span>
                <span class="labRigth">
                    <asp:Label ID="Label10" CssClass="ddlist" runat="server" Text='<%# Bind("Rip") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Cantina:</span>
                <span class="labRigth">
                    <asp:Label ID="Label11" CssClass="ddlist" runat="server" Text='<%# Bind("Can") %>' />
                </span>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 20px">
                <span class="labLeft">Mansarda:</span>
                <span class="labRigth">
                    <asp:Label ID="Label12" CssClass="ddlist" runat="server" Text='<%# Bind("Man") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Taverna:</span>
                <span class="labRigth">
                    <asp:Label ID="Label13" CssClass="ddlist" runat="server" Text='<%# Bind("Tav") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Infissi:</span>
                <span class="labRigth">
                    <asp:Label ID="Label14" CssClass="ddlist" runat="server" Text='<%# Bind("Inf") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">ImpiantoTv:</span>
                <span class="labRigth">
                    <asp:Label ID="Label15" CssClass="ddlist" runat="server" Text='<%# Bind("Itv") %>' />
                </span>
            </td>
        </tr>
        <tr>
            <td>
                <span class="labLeft">Posizione:</span>
                <span class="labRigth">
                    <asp:Label ID="Label16" CssClass="ddlist" runat="server" Text='<%# Bind("Posizione") %>' />
                </span>
            </td>
            <td>
                <span class="labLeft">Esposizione:</span>
                <span class="labRigth">
                    <asp:Label ID="Label17" CssClass="ddlist" runat="server" Text='<%# Bind("Esposizione") %>' />
                </span>
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="4">
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <span class="labRigth">Pannelli solari
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("PannelliSolari") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Pannelli fotov.
                                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("PannelliFotov") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Condizionatore
                                    <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Bind("Condizionatore") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Terrazzo
                                    <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# Bind("Terrazzo") %>' Enabled="False" /></span>
            </td>
        </tr>
        <tr>
            <td>
                <span class="labRigth">Balcone
                                    <asp:CheckBox ID="CheckBox5" runat="server" Checked='<%# Bind("Balcone") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Ascensore
                                    <asp:CheckBox ID="CheckBox6" runat="server" Checked='<%# Bind("Ascensore") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Caminetto
                                    <asp:CheckBox ID="CheckBox7" runat="server" Checked='<%# Bind("Caminetto") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Porta blindata
                                    <asp:CheckBox ID="CheckBox8" runat="server" Checked='<%# Bind("PortaBlindata") %>' Enabled="False" /></span>

            </td>
        </tr>
        <tr>
            <td>
                <span class="labRigth">Mezzi pubblici
                                    <asp:CheckBox ID="CheckBox9" runat="server" Checked='<%# Bind("MezziPubblici") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Impianto allarme
                                    <asp:CheckBox ID="CheckBox10" runat="server" Checked='<%# Bind("ImpiantoAllarme") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Video citofono
                                    <asp:CheckBox ID="CheckBox15" runat="server" Checked='<%# Bind("VideoCitofono") %>' Enabled="False" /></span>
            </td>
            <td>
                <span class="labRigth">Cancello elettrico
                                    <asp:CheckBox ID="CheckBox13" runat="server" Checked='<%# Bind("CancelloElettrico") %>' Enabled="False" /></span>
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px; font-weight:bold; text-transform: uppercase;" colspan="4">
                <hr />
                Descrizione:<br />
                <span >
                <asp:TextBox style="width:95%; height:400px; background-color: #a6bbcf"  ID="NoteLabel" runat="server" Text='<%# Bind("Note") %>' TextMode="MultiLine" CssClass="ListImm" />
                </span><br /><br />
            </td>
        </tr>
    </table>
    </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT *, 
        Categorie.categoria as Cat, 
        Stato.Stato as Stat, 
        Tipologie.Tipologia as Tip,
        ClEn.ClasseEnergetica as Cla,
        Cucina.Cucina as Cuc, 
        Riscaldamento.Riscaldamento as Ris, 
        Box.Box as Bo, 
        Giardino.Giardino as Gia, 
        Arredamento.Arredamento as Arr, 
        Ingresso.Ingresso as Ing, 
        Ripostiglio.Ripostiglio as Rip, 
        Cantina.Cantina as Can, 
        Mansarda.Mansarda as Man, 
        Taverna.Taverna as Tav, 
        Infissi.Infissi as Inf, 
        ImpiantoTv.ImpiantoTv as Itv
        FROM [Table]
                Inner Join Categorie on [Table].[Categoria] = [categorie].[ID]
                Inner Join Tipologie on [Table].[Tipologia] = [Tipologie].[ID]
                Inner Join Stato on [Table].[Stato] = [Stato].[ID] 
                Inner Join ClEn on [Table].[ClasseEnergetica] = [ClEn].[ID] 
                Inner Join Cucina on [Table].[Cucina] = [Cucina].[ID] 
                Inner Join Riscaldamento on [Table].[Riscaldamento] = [Riscaldamento].[ID] 
                Inner Join Box on [Table].[Box] = [Box].[ID] 
                Inner Join Giardino on [Table].[Giardino] = [Giardino].[ID] 
                Inner Join Arredamento on [Table].[Arredamento] = [Arredamento].[ID] 
                Inner Join Ingresso on [Table].[Ingresso] = [Ingresso].[ID] 
                Inner Join Ripostiglio on [Table].[Ripostiglio] = [Ripostiglio].[ID] 
                Inner Join Cantina on [Table].[Cantina] = [Cantina].[ID] 
                Inner Join Mansarda on [Table].[Mansarda] = [Mansarda].[ID] 
                Inner Join Taverna on [Table].[Taverna] = [Taverna].[ID] 
                Inner Join Infissi on [Table].[InfissiInterni] = [Infissi].[ID] 
                Inner Join ImpiantoTv on [Table].[ImpiantoTv] = [ImpiantoTv].[ID] 
        WHERE ([Table].[Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

