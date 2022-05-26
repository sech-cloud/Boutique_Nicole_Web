<%@ Page Title="Reporte de Productos" Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Boutique_Web.Productos" MasterPageFile="~/Site.Master" %>

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

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Codigo" DataSourceID="DataProductos" ForeColor="#333333" GridLines="None" CssClass="GridStyle">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
                <asp:BoundField DataField="Cantidad_Inicial" HeaderText="Cantidad_Inicial" SortExpression="Cantidad_Inicial" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />


        </asp:GridView>

        <asp:SqlDataSource ID="DataProductos" runat="server" ConnectionString="<%$ ConnectionStrings:boutique_bd %>" SelectCommand="Select p.id as Codigo,  
        p.name as Nombre,  
        p.price as Precio, 
        p.cost as Costo,
        p.initialQuantity as Cantidad_Inicial,
        p.quantityAvailable as Stock,
        C.name as Categoria,
        B.name as Marca
        from ((products as p
        inner join categories as C on p.category_id = C.id)
        inner join brands as B on p.brand_id = B.id)"></asp:SqlDataSource>
    </body>
    </html>
</asp:Content>
