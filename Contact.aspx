<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div>
        <table class="tbl1"  >
            <tr>
                <td style="width:400px">
                    <section class="contact">
                        <header>
                            <h3>Email:</h3>
                        </header>
                        <p>
                            <span class="label">Civis:</span>
                            <span><a href="mailto:Support@example.com">info@civisimmobiliare.it</a></span>
                        </p>
                        <p>
                            <span class="label">Giorgio:</span>
                            <span><a href="mailto:Marketing@example.com">info@civisimmobiliare.it</a></span>
                        </p>
                        <p>
                            <span class="label">Elena:</span>
                            <span><a href="mailto:Marketing@example.com">epoggi@civisimmobiliare.it</a></span>
                        </p>
                    </section>

                    <section class="contact">
                        <header>
                            <h3></h3>
                        </header>
                        <p>
                        </p>
                        <p>
                        </p>
                        <p>
                        </p>
                    </section>

                    <section class="contact">
                        <header>
                            <h3>Indirizzo:</h3>
                        </header>
                        <p>
                            Sede legale via Ghioldi, 7</p>
                        <p>
                            21057 Olgiate Olona</p>
                        <p>
                            Sede operativa Piazza Trento Trieste, 10</p>
                        <p>
                            21052 Busto Arsizio
                        </p>
            <div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2791.0083587567633!2d8.8539621!3d45.610476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47868b88e22d9b0d%3A0xeb74e60ef9dfaf93!2sPiazza+Trento+e+Trieste%2C+10%2C+21052+Busto+Arsizio+VA!5e0!3m2!1sit!2sit!4v1429003881803" width="380" height="290" frameborder="0" style="border: 0"></iframe>
            </div>
                        <h5></h5>
                    </section>
                </td>
                <td style="width:250px">
                    <hgroup class="title">
                        <h1>Giorgio Amadei</h1>
                    </hgroup>
                    <div style="display:inline-block" >
                        <img style="margin-right:10px; height:230px" src="Images/giorgioAmadei.jpeg" />

                    </div>
                    <div ><br />
                        Cell. 335.6447322<br />info@civisimmobiliare.it </div>
                </td>
                <td>
                </td>
                <td style="width:250px">
                    <hgroup class="title">
                        <h1>Arch. Elena Poggi</h1>
                    </hgroup>
                    <div style="display:inline-block" >
                        <img style="margin-right:10px; height:230px" src="Images/ElenaPoggi.jpeg" /><br />

                    </div>
                    <div ><br />
                        Cell. 392 9165724<br />epoggi@civisimmobiliare.it </div>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>