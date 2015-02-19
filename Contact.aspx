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
                            Sede operativa via Cairoli, 2/c</p>
                        <p>
                            21052 Busto Arsizio
                        </p>
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
                        Cell. 392 9165724<br />info@civisimmobiliare.it </div>
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