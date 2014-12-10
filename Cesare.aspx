<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cesare.aspx.cs" Inherits="Cesare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">Lista</p>
    <asp:Repeater ID="lista" runat="server">
        <HeaderTemplate>
            <table>
                <tr>

                </tr>
                </table>
        </HeaderTemplate>
        <ItemTemplate>
            <td>
                <a href="#nogo"><img src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" style="width: 120px" /></a>
            </td>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
</asp:Content>

