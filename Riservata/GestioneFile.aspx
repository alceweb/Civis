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
        <asp:TextBox ID="TextBox1" Width="180" AutoPostBack="true" placeholder="Scrivi parte del codice" runat="server"></asp:TextBox><br />
        <asp:ListView ID="ListView1" OnDataBound="ListView1_DataBound" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
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
                <asp:Label ID="lblCategotia" runat="server" Text='<%# Eval("Codice") %>' Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:Label>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            SelectCommand="SELECT * from [Table] Where ([Codice] LIKE '%' + @Cod + '%') order by Codice">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Cod" Type="String" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <asp:Panel ID="Panel1" Visible="false" runat="server">
        <div style="margin-left: 200px">
            <asp:Label ID="lblDeleteOkJpg" runat="server"></asp:Label><br />
            <asp:ListBox ID="lb1" AutoPostBack="true" OnDataBound="lb1_DataBound" runat="server"></asp:ListBox>
            <asp:Label ID="lb1Label" runat="server"></asp:Label>
            <br />
            <asp:Button ID="btnDelJpg" runat="server" OnClick="btnDelJpg_Click" OnClientClick='return confirm("Stai cancellando il file selezionata. Continuare?")' BackColor="Red" ForeColor="white" Text="Cancella JPG" />
            <asp:Button ID="btnAnnullaJpg" OnClick="btnAnnullaJpg_Click" runat="server" Text="Annulla Selezione" BackColor="Green" ForeColor="White" /><br />
        </div>
        <div style="margin-left: 200px">
            <asp:ListView ID="ListViewImg" runat="server">
                <ItemTemplate>
                    <div class="galla" style="float: left">
                        <a href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>
                            <img style="box-shadow: 0px 0px 4px #000" height="90" title='<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                        </a>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </asp:Panel>
</asp:Content>

