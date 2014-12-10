<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PlugInAdmin.aspx.cs" Inherits="Riservata_PlugInAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
	<script type="text/javascript" src="../Scripts/jquery-1.2.2.pack.js"></script>
	<script type="text/javascript" src="../Scripts/ddaccordion.js"></script>
<style type="text/css">

.dropdown{ /*header of 1st demo*/
cursor: pointer;
padding: 2px 5px;
border: 1px solid gray;
background: #7091c0;
}
.openlist{ /*class added to contents of 1st demo when they are open*/
background: #824e58;
color:white;
}
</style>
    <script type="text/javascript">
        ddaccordion.init({
            headerclass: "dropdown", 
            contentclass: "list", 
            revealtype: "click", 
            collapseprev: false, 
            defaultexpanded: [0], 
            onemustopen: false, 
            animatedefault: false, 
            persiststate: true,
            toggleclass: ["", "openlist"], 
            togglehtml: ["none", "", ""], 
            animatespeed: "fast", 
            oninit: function (expandedindices) { //custom code to run when headers have initalized
                //do nothing
            },
            onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                //do nothing
            }
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">
        Plug in DropDownList manager</p><hr />
    <p>Seleziona i plug-in-list da modificare.<br />
        I plug-in-list sono le voci delle Drop Down List - <asp:DropDownList ID="DropDownList1" Width="160px" runat="server">
            <asp:ListItem>Questo è un esempio</asp:ListItem>
            <asp:ListItem>Plug-in-list 1</asp:ListItem>
            <asp:ListItem>Plug-in-list 2</asp:ListItem>
        </asp:DropDownList>  -  che usi per inserire alcuni parametri quando sei nella fase di inserimento/modifica degli immobili
    </p>
    <table class="TblPlugIn">
        <tr>
            <td>
    <h3 class="dropdown">Categoria</h3>
    <div class="list">
        <asp:ListView ID="ListViewCategoria" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSourceCategoria" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFF8DC;">
                    <td class="labLeft">
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td class="labLeft">
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #DCDCDC; color: #000000;">
                    <td class="labLeft">
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td class="labLeft">
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #008A8C; color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td class="labLeft">
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    </td>
                    <td class="labLeft">
                        <asp:TextBox ID="CategoriaTextBox" Width="100px" runat="server" Text='<%# Bind("Categoria") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td1" runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="Tr2" runat="server" style="background-color: #DCDCDC; color: #000000;">
                                    <th id="Th1" runat="server"></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr3" runat="server">
                        <td id="Td2" runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Categorie] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Categorie] ([Categoria]) VALUES (@Categoria)" SelectCommand="SELECT * FROM [Categorie] ORDER BY [Categoria]" UpdateCommand="UPDATE [Categorie] SET [Categoria] = @Categoria WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Categoria" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Categoria" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
            </td>
            <td>
    <h3 class="dropdown">Tipologia</h3>
    <div class="list">
        <asp:ListView ID="ListViewTipologia" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSourceTipologia" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFF8DC;">
                    <td class="labLeft">
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td class="labLeft">
                        <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Eval("Tipologia") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #DCDCDC; color: #000000;">
                    <td class="labLeft">
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td class="labLeft">
                        <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Eval("Tipologia") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #008A8C; color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                        <asp:TextBox ID="TipologiaTextBox" runat="server" Text='<%# Bind("Tipologia") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td class="labLeft">
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    </td>
                    <td class="labLeft">
                        <asp:TextBox ID="TipologiaTextBox" Width="100px" runat="server" Text='<%# Bind("Tipologia") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                    <th runat="server"></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceTipologia" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Tipologie] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Tipologie] ([Tipologia]) VALUES (@Tipologia)" SelectCommand="SELECT * FROM [Tipologie] ORDER BY [Tipologia]" UpdateCommand="UPDATE [Tipologie] SET [Tipologia] = @Tipologia WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Tipologia" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tipologia" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
            </td>
            <td>
    <h3 class="dropdown">Stato</h3>
    <div class="list">
        <asp:ListView ID="ListViewStato" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSourceStato" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td class="labLeft">
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td class="labLeft">
                        <asp:Label ID="StatoLabel" runat="server" Text='<%# Eval("Stato") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td class="labLeft">
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td class="labLeft">
                        <asp:Label ID="StatoLabel" runat="server" Text='<%# Eval("Stato") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StatoTextBox" runat="server" Text='<%# Bind("Stato") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td class="labLeft">
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    </td>
                    <td class="labLeft">
                        <asp:TextBox ID="StatoTextBox" Width="100px" runat="server" Text='<%# Bind("Stato") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceStato" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Stato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Stato] ([Stato]) VALUES (@Stato)" SelectCommand="SELECT * FROM [Stato] ORDER BY [Stato]" UpdateCommand="UPDATE [Stato] SET [Stato] = @Stato WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Stato" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Stato" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

            </td>
            <td>
    <h3 class="dropdown">Classe energetica</h3>
    <div class="list">
        <asp:ListView ID="ListView4" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSourceClEn" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFF8DC;">
                    <td class="labLeft">
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td class="labLeft">
                        <asp:Label ID="ClasseEnergeticaLabel" runat="server" Text='<%# Eval("ClasseEnergetica") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #DCDCDC; color: #000000;">
                    <td class="labLeft">
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td class="labLeft">
                        <asp:Label ID="ClasseEnergeticaLabel" runat="server" Text='<%# Eval("ClasseEnergetica") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #008A8C; color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ClasseEnergeticaTextBox" runat="server" Text='<%# Bind("ClasseEnergetica") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td class="labLeft">
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    </td>
                    <td class="labLeft">
                        <asp:TextBox ID="ClasseEnergeticaTextBox" Width="100px" runat="server" Text='<%# Bind("ClasseEnergetica") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                    <th runat="server"></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceClEn" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ClEn] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ClEn] ([ClasseEnergetica]) VALUES (@ClasseEnergetica)" SelectCommand="SELECT * FROM [ClEn] ORDER BY [ClasseEnergetica]" UpdateCommand="UPDATE [ClEn] SET [ClasseEnergetica] = @ClasseEnergetica WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ClasseEnergetica" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClasseEnergetica" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

            </td>
        </tr>
    </table>
</asp:Content>

