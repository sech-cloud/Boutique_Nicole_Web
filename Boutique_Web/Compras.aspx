<%@ Page Title="Reporte de Compras" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="Boutique_Web.Compras" %>

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
            a{
                color:white !important;
            }
            a:hover{
                color: #808080 !important;
            }

            body {
                background-color: white;
            }

            .GridStyle {
                margin-left: auto;
                margin-right: auto;
                padding: 10px;
                width: 100%;
            }

                .GridStyle th {
                    background: #2461BF;
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Codigo" DataSourceID="DataCompras" ForeColor="#333333" GridLines="None" CssClass="GridStyle">
            <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                    <asp:BoundField DataField="Vendedor" HeaderText="Vendedor" SortExpression="Vendedor" />
                    <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                    <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
                    <asp:BoundField DataField="Costo_Unitario" HeaderText="Costo_Unitario" SortExpression="Costo_Unitario" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                </Columns>
              <EditRowStyle BackColor="#2461BF" />
              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="DataCompras" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:boutique_bd %>" 
                                SelectCommand="Select P.id as Codigo,
                                E.name As Vendedor, 
                                pd.description As Producto, 
                                pd.cost As Costo,
                                pd.unitCost As Costo_Unitario, 
                                pd.quantity As Cantidad, 
                                P.date As Fecha
                                from Purchases as P 
                                inner join purchase_details as pd 
                                on pd.purchase_id = P.id 
                                inner join entities as E
                                on E.id = P.provider_id">

            </asp:SqlDataSource>            
        </body>
        </html>
</asp:Content>

