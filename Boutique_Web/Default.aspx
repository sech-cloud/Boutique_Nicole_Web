<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Boutique_Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!doctype html>
    <html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" rel="stylesheet" type="text/css" />
        <!--<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">-->
        <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>

        <style>
            html {
                font-size: 100%;
                font-family: 'Montserrat', sans-serif;
                font-weight: 300;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Montserrat', sans-serif;
            }
            .navbar {
                background-color:#0a5880 !important;
            }
            #main_banner .superbanner_home {
                width: 100%;
                margin: 0 auto;
            }

            .container {
                max-width: 100%;
                position: relative;
            }
            .navbar a{
                color:white !important;
            }
            .navbar a:hover{
                color: #808080 !important;
            }
            .slider-desktop {
                display: block;
            }

            .slick-slider {
                position: relative;
                display: block;
                box-sizing: border-box;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                -webkit-touch-callout: none;
                -ms-touch-action: pan-y;
                touch-action: pan-y;
                -webkit-tap-highlight-color: transparent;
            }

            footer {
                text-align: center;
            }

            .footer__pages {
                display: flex;
                flex-direction: row;
                background: red;
                font-size: 14px;
                justify-content: center;
                background: white;
            }

                .footer__pages .section {
                    display: flex;
                    flex-direction: column;
                    padding: 10px;
                }

                    .footer__pages .section .title {
                        font-weight: bold;
                    }

                    .footer__pages .section .options ul li a {
                        text-decoration: none;
                        color: black;
                    }

                    .footer__pages .section .options ul li {
                        list-style: none;
                        margin-top: 5px;
                        font-size: 12px;
                    }

            .section.special div {
                margin-bottom: 5px;
            }

            .subscribe {
                width: 200px;
                height: 30px;
                color: white;
                background: black;
                border: none;
            }
        </style>
    </head>
    <body>

        <div id="content" class="container">
            <div id="main_banner" class="superbanner_home" style="max-width: 100vw;">
                <div class="slider multiple-items slider-desktop">

                    <img src="https://pierrecardin.com.sv/public/images/banners/3e351362d4a520aa9da960ad0a2853c5.jpg" alt="">

                    <img src="https://pierrecardin.com.sv/public/images/banners/40c6c1edbc36c6291273ffbce0a534ac.jpg" alt="">

                    <img src="https://pierrecardin.com.sv/public/images/banners/0e0daabd3eea8963b9ecf8ded07b71aa.png" alt="">

                    <img src="https://pierrecardin.com.sv/public/images/banners/64235c4fe4c7f1950e377c367ff84252.png" alt="">
                </div>
            </div>
        </div>

        <div class="footer__pages">
            <div class="section">
                <div class="title">ATENCIÓN AL CLIENTE</div>
                <div class="options">
                    <ul>
                        <li>Escríbenos (503) 7777-7777</li>

                    </ul>

                </div>

            </div>
            <div class="section">

                <div class="title">POLÍTICAS</div>

                <div class="options">

                    <ul>

                        <li><a href="#compra">Política de compra</a></li>
                        <li><a href="#devolucion">Política de devoluciones</a></li>
                        <li><a href="#envios">Política de envío</a></li>
                        <li><a href="#seguridad">Política de privacidad y seguridad</a></li>
                        <li><a href="#terminos">Terminos y condiciones</a></li>

                    </ul>

                </div>
            </div>
            <div class="section">
                <div class="title">BOUTIQUE NICOLE</div>
                <div class="options">

                    <ul>

                        <li><a runat="server" href="~/About">Acerca de Boutique Nicole</a></li>
                        <li><a href="https://www.indtopaz.com/quienes-somos">Sobre Nosotros</a></li>
                        <li><a href="https://www.indtopaz.com/quienes-somos">Mision y vision</a></li>
                        <li><a href="/terminos-y-condiciones.html#seguridad">Política de privacidad y seguridad</a></li>

                    </ul>



                </div>
            </div>
            <div class="section special">
                <div class="title">SIGUENOS EN REDES SOCIALES</div>
                <div class="options">


                    <div class="text"></div>

                    <div class="button" style="display: none;">
                        <button class="subscribe">SUSCRIBIRME</button>


                    </div>

                </div>
            </div>
        </div>

    </body>
    </html>
    <script>
        $('.slider-desktop').slick({
            dots: true,
            autoplay: true,
            autoplaySpeed: 3000,
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
        });
    </script>
</asp:Content>
