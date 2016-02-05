<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Civis.ImgImm.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
     <script src="/Scripts/jquery-2.1.1.min.js"></script>
   <script src="/Scripts/jquery.colorbox.js"></script>
    <link href="/Content/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="main">
        <div class="wrap">
            <section id="exemple" class="clearfix">
                <script type="text/javascript">
                    $(document).ready(function () {
                        //Examples of how to assign the Colorbox event to elements
                        $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
                    });
                </script>
                <p class="TitoloVetrina">Galleria fotografica</p>
                <asp:Repeater ID="lista" runat="server">
                    <HeaderTemplate>
                        <div>
                        </div>

                    </HeaderTemplate>
                    <ItemTemplate>
                        <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                            <img src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" style="height: 120px; margin: 5px" />
                        </a>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>

            </section>
        </div>
    </div>
</asp:Content>

