<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TestNews.aspx.cs" Inherits="TestNews" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">Test news</p>
    <div>
        <table>
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT id, Data, Titolo FROM [News]">

        </asp:SqlDataSource>
                </td>
                <td>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>Non è stato restituito alcun dato.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EditItemTemplate>

                            <tr style="">
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
                                <tr>
                                    <td colspan="5">
                                        <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Testo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                                    </td>

                                </tr>
                            </tr>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TestoTextBox" runat="server" Text='<%# Bind("Testo") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="">
                                <td>
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
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                            <tr runat="server" style="">
                                                <th runat="server"></th>
                                                <th runat="server">Id</th>
                                                <th runat="server">Data</th>
                                                <th runat="server">Titolo</th>
                                                <th runat="server">Testo</th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder">
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
                    </asp:ListView>                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                        SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)" 
                        DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" 
                        InsertCommand="INSERT INTO [News] ([Data], [Titolo], [Testo]) VALUES (@Data, @Titolo, @Testo)" 
                        UpdateCommand="UPDATE [News] SET [Data] = @Data, [Titolo] = @Titolo, [Testo] = @Testo WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter DbType="Date" Name="Data" />
                            <asp:Parameter Name="Titolo" Type="String" />
                            <asp:Parameter Name="Testo" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter DbType="Date" Name="Data" />
                            <asp:Parameter Name="Titolo" Type="String" />
                            <asp:Parameter Name="Testo" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
	                  <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Testo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

