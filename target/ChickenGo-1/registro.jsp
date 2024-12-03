<%-- 
    Document   : registro
    Created on : 2 dic 2024, 3:46:31 p.m.
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Chicken Go - Registrar</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

        <link href="css/templatemo-style.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <main>
                <header class="row-4 tm-welcome-section">
                    <h1 class="col-12 text-center tm-section-title">Regístrate en Chicken Go</h1>
                </header>

                <div class="tm-section tm-container-inner form-container">
                <form action="nuevousuario" method="post" class="form">
                    <div class="mb-3">
                        <label for="n">Tu nombre de usuario:</label>
                        <input type="text" name="usuario" class="form-control" placeholder="Ingresa nuevo nombre de usuario" required>
                    </div>
                    <div class="mb-3">
                        <label for="ps">Contraseña:</label>
                        <input type="password" name="pass" class="form-control" placeholder="Ingresa nueva contraseña" required>
                    </div>
                    <input type="submit" class="btn tm-btn-primary btn-block btn-round" value="Registrar">
                </form>
            </div>
            </main>
        </div>
    </body>
    <footer class="tm-footer tm-center">
        <p class="tm-footer2">&copy; 2024 Chicken Go</p>
    </footer>
</html>
