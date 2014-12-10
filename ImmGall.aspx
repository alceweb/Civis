<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ImmGall.aspx.cs" Inherits="ImmGall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/style.css" rel="stylesheet" />
    <link href="source/swipebox.css" rel="stylesheet" />
    	<meta name="Robots" content="All" />
<%--                <script src="lib/ios-orientationchange-fix.js"></script>--%>
                <script src="lib/jquery-2.0.3.min.js"></script>
<%--                <script src="lib/jquery.isotope.min.js"></script>--%>
                <script src="source/jquery.swipebox.js"></script>
<script type="text/javascript">
    jQuery(function ($) {

        /* Basic Gallery */
        $(".swipebox").swipebox();

        /* Video */
        $(".swipebox-video").swipebox();


        /* Dynamic Gallery */
        //$("#gallery").click(function (e) {
        //    e.preventDefault();
        //    $.swipebox([
        //        { href: 'http://swipebox.brutaldesign.com/assets/full/reine.jpg', title: 'My Caption' },
        //        { href: 'http://swipebox.brutaldesign.com/assets/full/nuke.jpg', title: 'My Second Caption' }
        //    ]);
        //});


        /* Isotope */
        var swipeboxInstance = $(".swipebox-isotope:not(.isotope-hidden .swipebox-isotope)").swipebox();

        var $container = $('#grid');
        var optionFilter = $('#filter'),
        optionFilterLinks = optionFilter.find('a');
        optionFilterLinks.attr('href', '#');

        onAnimationCompleted = function () {
            swipeboxInstance.refresh();
        };

        optionFilterLinks.click(function () {
            var selector = $(this).attr('data-filter');
            $container.isotope({
                filter: '.' + selector,
                itemSelector: '.item',
                layoutMode: 'fitRows',
                animationEngine: 'best-available',
            }, onAnimationCompleted);

            // Highlight the correct filter
            optionFilterLinks.removeClass('active');
            $(this).addClass('active');


            return false;
        });
    });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="TitoloVetrina">Galleria fotografica immobile</p>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                        <EmptyDataTemplate>
                            <table id="Table1" runat="server" style="">
                                <tr>
                                    <td>Non è stato restituito alcun dato.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <td id="Td1" runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <ItemTemplate>
                            <td id="Td2" runat="server" style="">ID:<%# Eval("ID")  %>-<asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Codice") %>' />
                                Città:
                                    <em><asp:Label ID="CittàLabel" runat="server" Text='<%# Eval("Città") %>' /></em>
                            </td>
                            <td>
                                Prezzo: <em><asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo", "{0:c0}") %>' /></em>
                            </td>
                            <td>
                                Superficie Mq: <em><asp:Label ID="SupLabel" runat="server" Text='<%# Eval("Superficie") %>' /></em>
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table id="Table2" runat="server">
                                <tr id="Tr1" runat="server">
                                    <td id="Td3" runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr id="Tr2" runat="server">
                                    <td id="Td4" runat="server" style=""></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                        SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)"
                        UpdateCommand="UPDATE [Table] SET [Categoria] = @Categoria, [Tipologia] = @Tipologia, [Stato] = @Stato, [Libero] = @Libero, [Prezzo] = @Prezzo, [NLocali] = @NLocali, [Superficie] = @Superficie, [SpeseCondominiali] = @SpeseCondominiali, [NCamereLetto] = @NCamereLetto, [NSoggiorno] = @NSoggiorno, [AnnoCostruzione] = @AnnoCostruzione, [Piano] = @Piano, [TotPiani] = @TotPiani, [ClasseEnergetica] = @ClasseEnergetica, [EPI] = @EPI, [Riscaldamento] = @Riscaldamento, [Cucina] = @Cucina, [Box] = @Box, [NPostiAuto] = @NPostiAuto, [Bagni] = @Bagni, [Giardino] = @Giardino, [Arredamento] = @Arredamento, [Ingresso] = @Ingresso, [Ripostiglio] = @Ripostiglio, [Cantina] = @Cantina, [Mansarda] = @Mansarda, [Taverna] = @Taverna, [InfissiInterni] = @InfissiInterni, [ImpiantoTv] = @ImpiantoTv, [Note] = @Note, [Città] = @Città, [Provincia] = @Provincia, [PannelliSolari] = @PannelliSolari, [PannelliFotov] = @PannelliFotov, [Condizionatore] = @Condizionatore, [Terrazzo] = @Terrazzo, [Balcone] = @Balcone, [Ascensore] = @Ascensore, [Caminetto] = @Caminetto, [PortaBlindata] = @PortaBlindata, [MezziPubblici] = @MezziPubblici, [ImpiantoAllarme] = @ImpiantoAllarme, [CancelloElettrico] = @CancelloElettrico, [FibraOttica] = @FibraOttica, [VideoCitofono] = @VideoCitofono, [Codice] = @Codice, [Posizione] = @Posizione, [Esposizione] = @Esposizione, [Pubblica] = @Pubblica, [Vetrina] = @Vetrina WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
    <table>
        <tr>
            <td>
            <div id="main">
                <div class="wrap">
                    <section id="exemple" class="clearfix">
                        <div id="try"></div>
    <asp:Repeater ID="lista" runat="server">
        <HeaderTemplate>
            <div class="galla">
            </div>
        </HeaderTemplate>
        <ItemTemplate>
                           <a class="swipebox" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                                <img style="border: thin solid #9C9C9C; margin: 8px;" src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                            </a>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
                    </section>
                </div>

            </div>

            </td>

        </tr>
    </table>
</asp:Content>

