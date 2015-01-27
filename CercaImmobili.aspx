﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CercaImmobili.aspx.cs" Inherits="CercaImmobili" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">
        Cerca il tuo immobile
    </p>
    <table>
        <tr>
            <td style="float:left">
                <table style="width:200px; left:0px">
                    <tr>
                        <td>
                            <asp:Label ID="LabelProvincia" runat="server" Text="Provincia"></asp:Label>

                        </td>
                        <td>
                            <asp:DropDownList ID="DDLProvincia" runat="server" OnSelectedIndexChanged="DDLProvincia_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDSProvincia" DataTextField="Provincia" DataValueField="Provincia"></asp:DropDownList><br />
                            <asp:SqlDataSource ID="SqlDSProvincia" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Provincia] FROM [Table] ORDER BY [Provincia]"></asp:SqlDataSource>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelCittà" runat="server" Text="Città"></asp:Label>

                        </td>
                        <td>
                            <asp:DropDownList ID="DDLCittà" OnSelectedIndexChanged="DDLCittà_SelectedIndexChanged" runat="server" AutoPostBack="True" DataSourceID="SqlDSCittà" DataTextField="Città" DataValueField="Città"></asp:DropDownList><br />
                            <asp:SqlDataSource ID="SqlDSCittà" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                                SelectCommand="SELECT DISTINCT [Città] FROM [Table] WHERE ([Provincia] = @Provincia) ORDER BY [Città]">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DDLProvincia" Name="Provincia" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelTipo" runat="server" Text="Tipologia"></asp:Label>

                        </td>
                        <td>
                            <asp:DropDownList ID="DDLTipologia" OnSelectedIndexChanged="DDLTipologia_SelectedIndexChanged" runat="server" AutoPostBack="True" DataSourceID="SqlDSTipo" DataTextField="Tipo" DataValueField="Tipologia"></asp:DropDownList><br />
                            <asp:SqlDataSource ID="SqlDSTipo" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                                SelectCommand="SELECT distinct [Table].[Tipologia], [Tipologie].[Tipologia] as tipo FROM [Table] join [Tipologie] on [Table].[Tipologia]=[Tipologie].[Id] WHERE (([Provincia]=@Provincia) and ([Città] = @Città)) ORDER BY [Tipo]">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DDLProvincia" Name="Provincia" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="DDLCittà" Name="Città" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </td>
                    </tr>
                </table>
                <hr />
                <asp:ListView ID="ListView1" runat="server" SelectedIndex="-1" DataKeyNames="Id" DataSourceID="SqlDSListView1">
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <EmptyDataTemplate>
                        <span>Non è stato restituito alcun dato.</span>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">
                            <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Cat") %>' />
                            <asp:Label ID="StatoLabel" runat="server" Text='<%# " - " + Eval("St") %>' />
                            <asp:Label ID="PrezzoLabel" runat="server" Text='<%# " - " + Eval("Prezzo", "{0:C0}") %>' />
                        </asp:LinkButton></span>
                    </ItemTemplate>
                    <SelectedItemTemplate>
                        <span style="color: #FFFFFF; background-color: #000000;"  style="">
                            <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Cat") %>' />
                            <asp:Label ID="StatoLabel" runat="server" Text='<%# " - " + Eval("St") %>' />
                            <asp:Label ID="PrezzoLabel" runat="server" Text='<%# " - " + Eval("Prezzo", "{0:C0}") %>' />
                        </span>
                    </SelectedItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDSListView1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT *, [Categorie].[Categoria] as Cat, [Stato].[Stato] as St FROM [Table] inner join [Categorie] on [Table].[Categoria] =[Categorie].[Id] inner join [Stato] on [Table].[Stato] = [Stato].[Id] WHERE (([Provincia]=@Provincia) and ([Città] = @Città) and ([Tipologia] = @Tipologia)) Order By [Prezzo]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDLProvincia" Name="Provincia" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DDLCittà" Name="Città" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DDLTipologia" Name="Tipologia" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
    <asp:FormView ID="FormView1" Visible="true" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
    <ItemTemplate>
    <table class="ListImm">
        <tr>
            <td style="padding-left: 10px; height:55px; background-color: #3E5873; color: #FFFFFF;" colspan="4">
                <span style="float: left; margin-left: 40px">Codice immobile: 
                    <asp:Label ID="IdLabel" CssClass="LabelForm" runat="server" Text='<%# Eval("Codice") %>' /></span>
                <asp:Label ID="LabelCittà" runat="server"> - Città: </asp:Label>
                <asp:Label ID="LabelBoxCittà1" CssClass="LabelForm" runat="server" Text='<%# Bind("Città") %>' />
                <asp:Label ID="LabelProvincia" runat="server"> - Provincia: </asp:Label>
                <asp:Label ID="LabelProvincia1" CssClass="LabelForm" Width="30px" runat="server" Text='<%# Bind("Provincia") %>' />
                <span class="galla">
                <a class="labRigth" style="color:#fff" href="ImmGall.aspx?id=<%# Eval("Id")%>">
                    <img Style="border-style: none; margin-right:20px; height:46px" src='<%#"ImgImm/" +Eval("id") + ".jpg" %>' />    Galleria fotografica</a>

                </span>
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
            <td  style="padding-left: 20px">
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
        WHERE [Table].[Id] = @Idi">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView1" Name="Idi" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>
