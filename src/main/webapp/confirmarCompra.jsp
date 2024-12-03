<%-- 
    Document   : confirmarCompra
    Created on : 2 dic 2024, 22:32:48
    Author     : molin
--%>

<%@page import="servlet.AddCart"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession sesion = request.getSession(false);
    if (sesion != null) {
        AddCart.limpiarCarrito(sesion);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Compra Confirmada</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Compra Confirmada</h1>
            <p>¡Gracias por su compra!</p>
            <a href="index.jsp" class="btn btn-primary">Volver al inicio</a>
        </div>
    </body>
</html>
