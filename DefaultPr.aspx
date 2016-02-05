<%@ Page Title="" Language="C#" MasterPageFile="~/Prestigio.master" AutoEventWireup="true" CodeFile="DefaultPr.aspx.cs" Inherits="DefaultPr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Slideshow/css/demo.css" rel="stylesheet" />
    <link href="Slideshow/css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-ui-1.8.24.js"></script>
    <script src="Scripts/jquery.eislideshow.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper">
         <div id="ei-slider" style="z-index:0" class="ei-slider">
             <ul class="ei-slider-large">
                         <li>
                             <img style="margin: 5px; height: 100px; float: left" src="Images/Slides/Prestigio1.jpg" />
                             <div class="ei-title" style="font-family: 'Kunstler Script'">
                             <h2><a href="ContentPr1.aspx" style="color:white; text-decoration:none">Immobile uno</a></h2>
                             <h3>
                                <a style="float:left; color:red" href="ContentPr1.aspx">dettaglio</a>
                                 Descrizione immobile uno<br />
                                Tanto gentile e tanto onesta pare
                                la donna mia quand’ella altrui saluta,
                                ch’ogne lingua deven tremando muta,
                                e li occhi no l’ardiscon di guardare.
                                Ella si va, sentendosi laudare,
                                benignamente d’umiltà vestuta;
                                e par che sia una cosa venuta
                                da cielo in terra a miracol mostrare.
                                Mostrasi sì piacente a chi la mira,
                                che dà per li occhi una dolcezza al core,
                                che ’ntender no la può chi no la prova:<br />
                             </h3>

                             </div>
                         </li>
                         <li>
                             <img style="margin: 5px; height: 100px; float: left" src="Images/Slides/Prestigio2.jpg" />
                             <div class="ei-title" style="font-family: 'Kunstler Script'">
                                 <h2>Immobile due</h2>
                             <h3>
                                <a style="float:left; color:red" href="ContentPr2.aspx">dettaglio</a>
                                 Descrizione immobile due<br />
                                Tanto gentile e tanto onesta pare
                                la donna mia quand’ella altrui saluta,
                                ch’ogne lingua deven tremando muta,
                                e li occhi no l’ardiscon di guardare.
                                Ella si va, sentendosi laudare,
                                benignamente d’umiltà vestuta;
                                e par che sia una cosa venuta
                                da cielo in terra a miracol mostrare.
                                Mostrasi sì piacente a chi la mira,
                                che dà per li occhi una dolcezza al core,
                                che ’ntender no la può chi no la prova:<br />
                             </h3>

                             </div>
                         </li>
                         <li>
                             <img style="margin: 5px; height: 100px; float: left" src="Images/Slides/Prestigio3.jpg" />
                             <div class="ei-title" style="font-family: 'Kunstler Script'">
                             <h2>Immobile tre</h2>
                             <h3>
                                <a style="float:left; color:red" href="ContentPr3.aspx">dettaglio</a>
                                 Descrizione immobile tre<br />
                                Tanto gentile e tanto onesta pare
                                la donna mia quand’ella altrui saluta,
                                ch’ogne lingua deven tremando muta,
                                e li occhi no l’ardiscon di guardare.
                                Ella si va, sentendosi laudare,
                                benignamente d’umiltà vestuta;
                                e par che sia una cosa venuta
                                da cielo in terra a miracol mostrare.
                                Mostrasi sì piacente a chi la mira,
                                che dà per li occhi una dolcezza al core,
                                che ’ntender no la può chi no la prova:<br />
                             </h3>

                             </div>
                         </li>
                         <li>
                             <img style="margin: 5px; height: 100px; float: left" src="Images/Slides/Prestigio4.jpg" />
                             <div class="ei-title" style="font-family: 'Kunstler Script'">
                             <h2>Immobile quattro</h2>
                             <h3>
                                <a style="float:left; color:red" href="ContentPr4.aspx">dettaglio</a>
                                 Descrizione immobile quattro<br />
                                Tanto gentile e tanto onesta pare
                                la donna mia quand’ella altrui saluta,
                                ch’ogne lingua deven tremando muta,
                                e li occhi no l’ardiscon di guardare.
                                Ella si va, sentendosi laudare,
                                benignamente d’umiltà vestuta;
                                e par che sia una cosa venuta
                                da cielo in terra a miracol mostrare.
                                Mostrasi sì piacente a chi la mira,
                                che dà per li occhi una dolcezza al core,
                                che ’ntender no la può chi no la prova:<br />
                             </h3>

                             </div>
                         </li>
             </ul>
             <ul class="ei-slider-thumbs">
                 <li class="ei-slider-element">Current</li>
                         <li><a href="Contentpr.aspx?id=1"></a>
                             <img style="margin: 5px; height: 100px; float: left" src="Images/Slides/Prestigio1.jpg" />
                         </li>
                         <li><a href="Contentpr.aspx?id=2"></a>
                             <img style="margin: 5px; height: 100px; float: left" src="Images/Slides/Prestigio2.jpg" />
                         </li>
                         <li><a href="Contentpr.aspx?id=3"></a>
                             <img style="margin: 5px; height: 100px; float: left" src="Images/Slides/Prestigio3.jpg" />
                         </li>
                         <li><a href="Contentpr.aspx?id=4"></a>
                             <img style="margin: 5px; height: 100px; float: left" src="Images/Slides/Prestigio4.jpg" />
                         </li>
             </ul>
         </div>
    </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
        <script type="text/javascript" src="Slideshow/js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="Slideshow/js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#ei-slider').eislideshow({
                    animation: 'center',
                    autoplay: true,
                    slideshow_interval: 3000,
                    titlesFactor: 0
                });
            });
        </script><br /><br />
</asp:Content>

