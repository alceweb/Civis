<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ImmImg.aspx.cs" Inherits="Riservata_ImmImg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">Gestione immagini immobile</p>
    <table>
        <tr>
            <td style="width:200px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Codice" HeaderText="Codice" SortExpression="Codice" />
                <asp:BoundField DataField="Città" HeaderText="Città" SortExpression="Città" />
                <asp:CommandField ShowSelectButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Codice], [Città] FROM [Table]"></asp:SqlDataSource>

            </td>
            <td style="border-left-style: solid; border-width: 1px; border-color: #C0C0C0">

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <span class="TitoloVetrina" ><hr />Codice:
                        <asp:Label ID="CodiceLabel" runat="server" Text='<%# Eval("Codice") %>' />
                        <hr />
                        </span>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <span style="">Codice:
                        <asp:Label ID="CodiceLabel" runat="server" Text='<%# Eval("Codice") %>' />
                        <br /><br />

                        </span>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Codice] FROM [Table] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
        </tr>


    </table>
    <p>
<ajaxtoolkit:ajaxfileupload ID="AjaxFileUpload1"
    ThrobberID="myThrobber"
    ContextKeys="fred"
    AllowedFileTypes="jpg,jpeg"
    MaximumNumberOfFiles=10
    runat="server"/>
        <asp:Timer ID="Timer1" runat="server"></asp:Timer>
</asp:Content>

