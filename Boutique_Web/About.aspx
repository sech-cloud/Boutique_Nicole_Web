<%@ Page Title="Acerca De" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Boutique_Web.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <!doctype html>
    <html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" rel="stylesheet" type="text/css" />
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
                background-color: #0a5880 !important;
            }

            body {
                background-color: white;
            }
            a{
                color:white !important;
            }
            a:hover{
                color: #808080 !important;
            }

            .GridStyle {
                margin-left: auto;
                margin-right: auto;
                padding: 10px;
                width: 80%;
            }

                .GridStyle th {
                    background: #804444;
                }

                .GridStyle td, th {
                    text-align: center;
                }

            h2 {
                text-align: center;
            }

            footer {
                text-align: center;
            }
        </style>
    </head>
    <body>
    <h2><%: Title %></h2>
    <table class="GridStyle">
		<tr style="color:White;background-color:#6B696B;font-weight:bold;">
			<th scope="col">Nombres</th>

            <th scope="col">Carnet</th>
           
		</tr>
        
        <tr style="background-color:#F7F7DE;">
			<td>Bryan Steve Avalos Acosta</td> <td>25-3519-2017</td>
		</tr><tr style="background-color:White;">
			<td>Saul Enrique Castillo Henriquez</td><td>25-0856-2017</td>
		</tr><tr style="background-color:#F7F7DE;">
			<td>Daniel Ulises Flores Escobar</td><td>25-2534-2016</td>
		</tr><tr style="background-color:White;">
			<td>Marco Antonio Solis Fuentes</td><td>25-1830-2017</td>
	</table>
        </body>
        </html>
</asp:Content>
