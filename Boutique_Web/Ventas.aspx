<%@ Page Title="Reporte de Ventas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="Boutique_Web.Ventas" %>

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

       
        <h2><%: Title %> </h2> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="DataVentas" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" CssClass="GridStyle">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
            <asp:BoundField DataField="Cliente" HeaderText="Cliente" SortExpression="Cliente" />
            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            <asp:BoundField DataField="Costo_Unitario" HeaderText="Costo_Unitario" SortExpression="Costo_Unitario" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    <asp:SqlDataSource ID="DataVentas" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:boutique_bd %>" 
        SelectCommand="Select i.id as Codigo,
        E.name As Cliente, 
        ind.description As Producto, 
        ind.price As Precio,
        ind.unitPrice As Costo_Unitario, 
        ind.quantity As Cantidad, 
        i.date As Fecha
        from invoices as I 
        inner join invoice_details as ind 
        on ind.invoice_id = i.id 
        inner join entities as E
        on E.id = i.customer_id">

    </asp:SqlDataSource>
        </body>
        </html>
</asp:Content>

