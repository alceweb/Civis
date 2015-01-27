<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Immobili.aspx.cs" Inherits="Immobili" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">
        I nostri immobili
    </p>
    <div class="ListImm">
        <div style="text-align: center; width:100%">Fai click sull'intestazione della colonna per ordinare i records<br />
            <asp:LinkButton ID="LinkButton1" ForeColor="green" runat="server" PostBackUrl="~/CercaImmobili.aspx">Cerca il tuo immobile</asp:LinkButton>
        </div>
        <%--        <asp:Label ID="Label9" runat="server" Text="Parametri selezione: "></asp:Label>
        <asp:Label ID="Label8" runat="server" Text="Categoria"></asp:Label>
        <asp:DropDownList ID="DropDownListCat" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Categoria" DataValueField="Id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Categorie] ORDER BY [Categoria]"></asp:SqlDataSource>
        <asp:Label ID="Label7" runat="server" Text="città"></asp:Label>
        <asp:DropDownList ID="DropDownListCit" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCit" DataTextField="Città" DataValueField="Città"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceCit" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Table] WHERE ([Categoria] = @Categoria) ORDER BY [Città]">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListCat" Name="Categoria" PropertyName="SelectedValue" Type="Byte" />
            </SelectParameters>
        </asp:SqlDataSource>--%>
        <asp:GridView ID="GridView1" Width="1024px" runat="server" AllowSorting="True" CellPadding="1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="">
                    <ItemTemplate>
                        <span class="galla">
                            <a href='ImmDett.aspx?id=<%#Eval("id")%>'>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/ImgImm/" +Eval("id") + ".jpg" %>' /></a>
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Codice" HeaderText="Cod." SortExpression="Codice">
                    <ItemStyle HorizontalAlign="Left" Width="40px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Città" SortExpression="Città">
                    <ItemTemplate>
                        <asp:Label CssClass="labLeft" ID="Label1" runat="server" Text='<%# Bind("Città") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pr" SortExpression="Provincia">
                    <ItemTemplate>
                        <asp:Label Width="30px" ID="Label2" runat="server" Text='<%# Bind("Provincia") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" Width="30px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Categoria" SortExpression="Categoria">
                    <ItemTemplate>
                        <asp:Label CssClass="labLeft" ID="Label3" runat="server" Text='<%# Bind("Categoria") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tipologia" SortExpression="Tipologia">
                    <ItemTemplate>
                        <asp:Label CssClass="labLeft" ID="Label4" runat="server" Text='<%# Bind("Tipologia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Stato" SortExpression="Stato">
                    <ItemTemplate>
                        <asp:Label CssClass="labLeft" ID="Label5" runat="server" Text='<%# Bind("Stato") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prezzo" SortExpression="Prezzo" HeaderStyle-Width="130px" HeaderStyle-HorizontalAlign="Right">
                    <ItemTemplate>
                        <asp:Label CssClass="labRigth" wui="130px" ID="Label6" runat="server" Text='<%# Bind("Prezzo", "{0:C0}") %>'></asp:Label>
                    </ItemTemplate>

                    <HeaderStyle HorizontalAlign="Right" Width="130px"></HeaderStyle>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                        SelectCommand="SELECT [Table].[Id], [Table].[Codice], [Table].[Città], [Table].[Prezzo], [Table].[Provincia] , Categorie.categoria, Stato.Stato, Tipologie.Tipologia FROM [Table]  
                                Inner Join Categorie on [Table].[Categoria] = [categorie].[ID]
                                Inner Join Tipologie on [Table].[Tipologia] = [Tipologie].[ID]
                                Inner Join Stato on [Table].[Stato] = [Stato].[ID]
                        WHERE [Table].[Pubblica] = 1">
                    </asp:SqlDataSource>
</asp:Content>

