<%@ Page Title="Gestione file" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GestioneFile.aspx.cs" Inherits="Riservata_GestioneFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <p class="TitoloVetrina"><%: Title %></p><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
<!--- Gestione file PDF--->
    <div >
        <h3>Gestione file <strong>PDF</strong> su tutti gli immobili</h3>
        <div>
            <asp:Label ID="lblDeleteOk" ForeColor="Red" runat="server" Text="Seleziona un file dall'elenco per eliminarlo"></asp:Label><br />
            <asp:ListBox ID="lb2" AutoPostBack="true" runat="server"></asp:ListBox><br />
            <asp:Button ID="btnDelPdf" runat="server" OnClick="btnDelPdf_Click" OnClientClick='return confirm("Stai cancellando il file selezionata. Continuare?")' BackColor="Red" ForeColor="white" Text="Cancella PDF" />
            <asp:Button ID="btnAnnulla" OnClick="btnAnnulla_Click" runat="server" Text="Annulla Selezione" BackColor="Green" ForeColor="White" /><hr />
        </div>
    </div>

<!--- Gestione file JPG--->
<h3>Gestione file <strong>jpg</strong> sull'immobile selezionato</h3><br />
    <div class="float-left">
        <p>Seleziona l'immobile
        <asp:TextBox ID="TextBox1" Width="180" AutoPostBack="true" placeholder="Scrivi parte del codice" runat="server"></asp:TextBox><br />
        </p>
        <asp:ListView ID="ListView1" OnSelectedIndexChanging="ListView1_SelectedIndexChanging" OnDataBound="ListView1_DataBound" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <strong>Codice: </strong>
                <asp:LinkButton runat="server" CommandName="select">
                    <asp:Label ID="lblCategotia" runat="server" Text='<%# Eval("Codice") %>'></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Città") %>'></asp:Label>
                </asp:LinkButton>
            </ItemTemplate>
            <SelectedItemTemplate>
                <div style="text-align:right; background-color:#000; color:#fff">
                ID: <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                Codice: <asp:Label ID="lblCategotia" runat="server" Text='<%# Eval("Codice") %>' Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:Label><br />
                <strong><asp:Label ID="Label3" runat="server" Text='<%# Eval("Città") %>'></asp:Label></strong>-
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Categoria") %>'></asp:Label>-
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Tipologia") %>'></asp:Label>

                </div>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            SelectCommand="SELECT [Table].[Id], [Table].[Codice], [Table].[Città], Categorie.categoria, Tipologie.Tipologia FROM [Table]  
                                Inner Join Categorie on [Table].[Categoria] = [categorie].[ID]
                                Inner Join Tipologie on [Table].[Tipologia] = [Tipologie].[ID] Where ([Codice] LIKE '%' + @Cod + '%') order by Codice">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Cod" Type="String" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <asp:Panel ID="Panel1" Visible="false" runat="server">
        <div style="margin-left: 200px; display:table">
                <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
                        <div class="div1" >

                                <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Value") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>
                                - 
                                    <asp:LinkButton ID="lnkDelete" Text="Cancella" CommandArgument='<%# Eval("Value") %>' OnClientClick='return confirm("Stai cancellando un immagine! Continuare?")' runat="server" OnClick="DeleteFile" /><br />
                                <a target="_blank" href='<%# "/ImgImm/" + Eval("Text") %>'><img src='<%# "/ImgImm/" + Eval("Text") %>' /></a><br />
                        </div>
                    </ItemTemplate>
                </asp:ListView>
        </div>
    </asp:Panel>
</asp:Content>

