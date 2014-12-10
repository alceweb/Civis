<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GestioneImmobile.aspx.cs" Inherits="Riservata_GestioneImmobile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <p class="TitoloVetrina">Gestione Immagini</p>
    <p class="float-left"><a href="ListaImm.aspx">Torna alla lista</a></p>
    <hr />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <EmptyDataTemplate>
                <table id="Table1" runat="server" style="">
                    <tr>
                        <td>Non è stato restituito alcun dato.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td id="Td1" runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td id="Td2" runat="server" style="text-align: center; font-size: large; font-weight: bold; font-style: italic">ID:<strong><em><%# Eval("ID")  %>-<asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Codice") %>' /></em></strong>
                    Città:<strong><em><asp:Label ID="CittàLabel" runat="server" Text='<%# Eval("Città") %>' /></em></strong></>
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr id="Tr1" >
                        <td id="Td3" runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2" runat="server">
                        <td id="Td4" runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)"
            UpdateCommand="UPDATE [Table] SET [Categoria] = @Categoria, [Tipologia] = @Tipologia, [Stato] = @Stato, [Libero] = @Libero, [Prezzo] = @Prezzo, [NLocali] = @NLocali, [Superficie] = @Superficie, [SpeseCondominiali] = @SpeseCondominiali, [NCamereLetto] = @NCamereLetto, [NSoggiorno] = @NSoggiorno, [AnnoCostruzione] = @AnnoCostruzione, [Piano] = @Piano, [TotPiani] = @TotPiani, [ClasseEnergetica] = @ClasseEnergetica, [EPI] = @EPI, [Riscaldamento] = @Riscaldamento, [Cucina] = @Cucina, [Box] = @Box, [NPostiAuto] = @NPostiAuto, [Bagni] = @Bagni, [Giardino] = @Giardino, [Arredamento] = @Arredamento, [Ingresso] = @Ingresso, [Ripostiglio] = @Ripostiglio, [Cantina] = @Cantina, [Mansarda] = @Mansarda, [Taverna] = @Taverna, [InfissiInterni] = @InfissiInterni, [ImpiantoTv] = @ImpiantoTv, [Note] = @Note, [Città] = @Città, [Provincia] = @Provincia, [PannelliSolari] = @PannelliSolari, [PannelliFotov] = @PannelliFotov, [Condizionatore] = @Condizionatore, [Terrazzo] = @Terrazzo, [Balcone] = @Balcone, [Ascensore] = @Ascensore, [Caminetto] = @Caminetto, [PortaBlindata] = @PortaBlindata, [MezziPubblici] = @MezziPubblici, [ImpiantoAllarme] = @ImpiantoAllarme, [CancelloElettrico] = @CancelloElettrico, [FibraOttica] = @FibraOttica, [VideoCitofono] = @VideoCitofono, [Codice] = @Codice, [Posizione] = @Posizione, [Esposizione] = @Esposizione, [Pubblica] = @Pubblica, [Vetrina] = @Vetrina WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <table>
        <tr runat="server" style="border-bottom-style: solid; border-width: thin; border-color: #000000">
            <td style="width:600px">
                <img style="margin: 10px; height:150px" src="../ImgImm/<%=Request.QueryString["ID"] %>.jpg" />
                <h2>Immagine principale</h2>
                 <p>Questa immagine apparira nella lista di fianco all'immobile con ID:<strong><%=Request.QueryString["ID"] %></strong></p>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                <asp:Button ID="UploadImgButton" runat="server" Text="Carica immagine" OnClick="UploadImgButton_Click"></asp:Button>
                <asp:Label ID="UploadStatusLabel1" runat="server" CssClass="error" />
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td style="text-align: right"  >
                <h2>Imagini galleria</h2>
                <p>Queste immagini comporranno la galleria dell'immobile con ID:<strong><%=Request.QueryString["ID"] %></strong></p>
                <asp:FileUpload ID="FileUpload2" runat="server" /><br />
                <asp:Button ID="UploadgallButton" runat="server" Text="Carica immagina per galleria" OnClick="UploadgallButton_Click"></asp:Button>
                <asp:Label ID="UploadStatusLabel2" runat="server" CssClass="error" />
            </td>
            <td style="vertical-align:top">
                <div>
                    <asp:Repeater ID="lista" runat="server" EnableTheming="False" >
                        <HeaderTemplate>
                            <div>

                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                                    <img style="margin: 5px; height: 100px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                            </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>

