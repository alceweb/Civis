<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ImmElimina.aspx.cs" Inherits="ImmElimina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">Lista immobili obsoleti/non pubblicati</p>
    <h3 style="text-align:center"><strong>ATTENZIONE </strong>Per essere eliminato un immobile non deve essere pubblicato<br />
        Quelli che appaiono nella lista qui sotto NON sono pubblicati.
    </h3>
    <div class="ListImm">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <AlternatingItemTemplate>
            <tr >
                <td>
                    <asp:Button ID="DeleteButton" runat="server" OnClientClick="return confirm('Prima di eliminare l\'immobile, ricordati di eliminare le fotografie. Elimino l\'immobile?')" CommandName="Delete" Text="Elimina" ForeColor="White" BackColor="#B30000" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="CodiceLabel" runat="server" Text='<%# Eval("Codice") %>' />
                </td>
                <td>
                    <asp:Label ID="CittàLabel" runat="server" Text='<%# Eval("Città") %>' />
                </td>
                <td>
                    <asp:Label ID="ProvinciaLabel" runat="server" Text='<%# Eval("Provincia") %>' />
                </td>
                <td>
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo", "{0:C0}") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #F0F0F0">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" OnClientClick="return confirm('Prima di eliminare l\'immobile, ricordati di eliminare le fotografie. Elimino l\'immobile?')" CommandName="Delete" Text="Elimina" ForeColor="White" BackColor="#000066" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="CodiceLabel" runat="server" Text='<%# Eval("Codice") %>' />
                </td>
                <td>
                    <asp:Label ID="CittàLabel" runat="server" Text='<%# Eval("Città") %>' />
                </td>
                <td>
                    <asp:Label ID="ProvinciaLabel" runat="server" Text='<%# Eval("Provincia") %>' />
                </td>
                <td>
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo", "{0:C0}") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr>
                                <td></td>
                            </tr>
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">Codice</th>
                                <th runat="server">Città</th>
                                <th runat="server">Provincia</th>
                                 <th runat="server">Prezzo</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                </td>
                <td>
                    <asp:Label ID="CodiceLabel" runat="server" Text='<%# Eval("Codice") %>' />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="CittàLabel" runat="server" Text='<%# Eval("Città") %>' />
                </td>
                <td>
                    <asp:Label ID="ProvinciaLabel" runat="server" Text='<%# Eval("Provincia") %>' />
                </td>
                <td>
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Categoria], [Tipologia], [Stato], [Libero], [Prezzo], [NLocali], [Superficie], [SpeseCondominiali], [NCamereLetto], [NSoggiorno], [AnnoCostruzione], [Piano], [TotPiani], [ClasseEnergetica], [EPI], [Riscaldamento], [Cucina], [Box], [NPostiAuto], [Bagni], [Giardino], [Arredamento], [Ingresso], [Ripostiglio], [Cantina], [Mansarda], [Taverna], [InfissiInterni], [ImpiantoTv], [Note], [Città], [Provincia], [PannelliSolari], [PannelliFotov], [Condizionatore], [Terrazzo], [Balcone], [Ascensore], [Caminetto], [PortaBlindata], [MezziPubblici], [ImpiantoAllarme], [CancelloElettrico], [FibraOttica], [VideoCitofono], [Codice], [Posizione], [Esposizione], [Pubblica], [Vetrina]) VALUES (@Categoria, @Tipologia, @Stato, @Libero, @Prezzo, @NLocali, @Superficie, @SpeseCondominiali, @NCamereLetto, @NSoggiorno, @AnnoCostruzione, @Piano, @TotPiani, @ClasseEnergetica, @EPI, @Riscaldamento, @Cucina, @Box, @NPostiAuto, @Bagni, @Giardino, @Arredamento, @Ingresso, @Ripostiglio, @Cantina, @Mansarda, @Taverna, @InfissiInterni, @ImpiantoTv, @Note, @Città, @Provincia, @PannelliSolari, @PannelliFotov, @Condizionatore, @Terrazzo, @Balcone, @Ascensore, @Caminetto, @PortaBlindata, @MezziPubblici, @ImpiantoAllarme, @CancelloElettrico, @FibraOttica, @VideoCitofono, @Codice, @Posizione, @Esposizione, @Pubblica, @Vetrina)" SelectCommand="SELECT * FROM [Table] WHERE ([Pubblica] = @Pubblica)" UpdateCommand="UPDATE [Table] SET [Categoria] = @Categoria, [Tipologia] = @Tipologia, [Stato] = @Stato, [Libero] = @Libero, [Prezzo] = @Prezzo, [NLocali] = @NLocali, [Superficie] = @Superficie, [SpeseCondominiali] = @SpeseCondominiali, [NCamereLetto] = @NCamereLetto, [NSoggiorno] = @NSoggiorno, [AnnoCostruzione] = @AnnoCostruzione, [Piano] = @Piano, [TotPiani] = @TotPiani, [ClasseEnergetica] = @ClasseEnergetica, [EPI] = @EPI, [Riscaldamento] = @Riscaldamento, [Cucina] = @Cucina, [Box] = @Box, [NPostiAuto] = @NPostiAuto, [Bagni] = @Bagni, [Giardino] = @Giardino, [Arredamento] = @Arredamento, [Ingresso] = @Ingresso, [Ripostiglio] = @Ripostiglio, [Cantina] = @Cantina, [Mansarda] = @Mansarda, [Taverna] = @Taverna, [InfissiInterni] = @InfissiInterni, [ImpiantoTv] = @ImpiantoTv, [Note] = @Note, [Città] = @Città, [Provincia] = @Provincia, [PannelliSolari] = @PannelliSolari, [PannelliFotov] = @PannelliFotov, [Condizionatore] = @Condizionatore, [Terrazzo] = @Terrazzo, [Balcone] = @Balcone, [Ascensore] = @Ascensore, [Caminetto] = @Caminetto, [PortaBlindata] = @PortaBlindata, [MezziPubblici] = @MezziPubblici, [ImpiantoAllarme] = @ImpiantoAllarme, [CancelloElettrico] = @CancelloElettrico, [FibraOttica] = @FibraOttica, [VideoCitofono] = @VideoCitofono, [Codice] = @Codice, [Posizione] = @Posizione, [Esposizione] = @Esposizione, [Pubblica] = @Pubblica, [Vetrina] = @Vetrina WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="Pubblica" Type="Boolean" />
        </SelectParameters>
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
            <asp:Parameter Name="Piano" Type="String" />
            <asp:Parameter Name="TotPiani" Type="Int32" />
            <asp:Parameter Name="ClasseEnergetica" Type="Byte" />
            <asp:Parameter Name="EPI" Type="String" />
            <asp:Parameter Name="Riscaldamento" Type="Byte" />
            <asp:Parameter Name="Cucina" Type="Byte" />
            <asp:Parameter Name="Box" Type="Byte" />
            <asp:Parameter Name="NPostiAuto" Type="Int32" />
            <asp:Parameter Name="Bagni" Type="Int32" />
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
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Vetrina" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </div>
</asp:Content>

