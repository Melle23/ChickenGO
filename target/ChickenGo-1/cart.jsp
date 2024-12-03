

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<%@page import="servlet.AddCart"%>
<%@page import="Modelo.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession sesion = request.getSession(false);
    ArrayList<Articulo> carrito = sesion != null ? (ArrayList<Articulo>) sesion.getAttribute("carrito") : null;
    double totalCarrito = 0.0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Carrito de Compras</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <style>
            .btn-wine {
                background-color: #800020;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Carrito de Compras</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Imagen</th>
                        <th>Producto</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Total</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        if (carrito != null && !carrito.isEmpty()) {
                            for (Articulo articulo : carrito) {
                                double subtotal = articulo.getCantidad() * articulo.getPrecioUnitario();
                                totalCarrito += subtotal;
                    %>
                    <tr>
                        <td><img src="<%= articulo.getImagen()%>" alt="<%= articulo.getNombre()%>" width="100"></td>
                        <td><%= articulo.getNombre()%></td>
                        <td><%= articulo.getCantidad()%></td>
                        <td>$<%= articulo.getPrecioUnitario()%></td>
                        <td>$<%= subtotal%></td>
                        <td>
                            <form action="eliminarArticulo" method="get">
                                <input type="hidden" name="nombre" value="<%= articulo.getNombre()%>">
                                <button type="submit" class="btn btn-wine"><i class="bi bi-trash"></i></button>
                            </form>
                        </td>
                    </tr>
                    <%
                            }
                        } else { %>
                    <tr>
                        <td colspan="5">No hay productos en el carrito.</td>
                    </tr>
                    <% } %>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="4" class="text-right"><strong>Total:</strong></td>
                        <td><strong>$<%= totalCarrito %></strong></td>
                        <td>
                    </tr>
                </tfoot>
            </table>
            <div class="d-flex justify-content-between">
                <a href="catalogo.jsp" class="btn btn-wine ml-2">Seguir comprando</a>
                <form action="confirmarCompra.jsp" method="post">
                    <button type="submit" class="btn btn-wine ml-2">Confirmar Compra</button>
                </form>
            </div>
        </div>
    </body>
</html>
