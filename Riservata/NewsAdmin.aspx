<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewsAdmin.aspx.cs" Inherits="Riservata_NewsAddmin" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">Gestione News e aggiornamenti</p>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color: #e6e6fb">
                <td style="width:300px">
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td style="vertical-align:top">
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td style="vertical-align:top">
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:d}") %>' />
                </td>
                <td style="vertical-align:top">
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                </td>
                <td style="text-align: left">
                </td>
            </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td style="vertical-align:top">
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td style="vertical-align:top">
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td style="vertical-align:top">
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:d}") %>' />
                </td>
                <td style="vertical-align:top">
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                </td>
                <td  style="text-align: left">
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #630109">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                </td>
                <td>

                </td>
                    </tr>
                    <tr style="background-color: #6f010a">
                        <td>
                        </td>
                                <td colspan="4">
	               <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Testo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                <br /></td>
            </tr>
        </EditItemTemplate>
        <InsertItemTemplate>
            <tr style="border: thin solid #68020A; background-color: #6e87a6;">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="DataTextBox" Width="100px"  runat="server" Text='<%# Bind("Data") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                </td>
                <td>
	                  <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Testo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                    <asp:Label ID="TestoLabl" runat="server" Width="100%"  Text="Il testo lo inserisci in un secondo momento, quando hai inserito la news passa in modifica" TextMode="MultiLine" />
                </td>
            </tr>
        </InsertItemTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                </td>
                <td>
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                </td>
                <td>
                    <asp:Label ID="TestoLabel" runat="server" Text='<%# Eval("Testo") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td style="vertical-align:top" id="Td1" runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="Tr2" runat="server" style="">
                                <th id="Th1" runat="server"></th>
                                <th id="Th2" runat="server">Id</th>
                                <th id="Th3" runat="server">Data</th>
                                <th id="Th4" runat="server">Titolo</th>
                                <th id="Th5" runat="server"></th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [News] ([Data], [Titolo], [Testo]) VALUES (@Data, @Titolo, @Testo)" 
            SelectCommand="SELECT * FROM [News] ORDER BY [Data]" 
            UpdateCommand="UPDATE [News] SET [Data] = @Data, [Titolo] = @Titolo, [Testo] = @Testo WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="Data" />
                <asp:Parameter Name="Titolo" Type="String" />
                <asp:Parameter Name="Testo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Data" />
                <asp:Parameter Name="Titolo" Type="String" />
                <asp:Parameter Name="Testo" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>
</asp:Content>

