<%-- 
    Document   : index.jsp
    Created on : 2 dic 2024, 3:21:35 p.m.
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Chicken Go</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href="css/templatemo-style.css" rel="stylesheet" />
    </head>

    <body>

        <div class="container">
            <!-- Top box -->
            <!-- Logo & Site Name -->
            <div class="placeholder">
                <div class="parallax-window" data-parallax="scroll" data-image-src="img/logo-chicken.jpeg">
                    <div class="tm-header">
                        <div class="row tm-header-inner">
                            <div class="col-md-6 col-12">
                                <div class="tm-site-text-box">
                                </div>
                            </div>
                            <nav class="col-md-6 col-12 tm-nav">
                                <ul class="tm-nav-ul">
                                    <li class="tm-nav-li"><a href="index.jsp" class="tm-nav-link active">Inicio</a></li>
                                    <li class="tm-nav-li"><a href="catalogo.jsp" class="tm-nav-link">Catálogo</a></li>
                                    <li class="tm-nav-li"><a href="about.jsp" class="tm-nav-link">Nosotros</a></li>
                                    <li class="tm-nav-li"><a href="contact.jsp" class="tm-nav-link">Contacto</a></li>
                                    <%
                                        String usuario = (session != null) ? (String) session.getAttribute("usuario") : null;
                                        if (usuario == null) {
                                    %>
                                    <li class="tm-nav-li"><button type="button" class="btn tm-btn-danger btn-round" data-toggle="modal" data-target="#loginModal">
                                            Iniciar sesión
                                        </button>
                                    </li>
                                    <% } else { %>


                                    <li class="tm-nav-li"><a href="cart.jsp" class="tm-nav-link"><i class="bi bi-cart"></i> </a></li>


                                    <li class="tm-nav-li">
                                        <form action="cerrarSesion" method="post">
                                            <button type="submit" class="btn tm-btn-danger btn-round">
                                                Cerrar sesión
                                            </button>
                                        </form>
                                    </li>
                                    <% } %>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <%if (request.getAttribute("error") != null) {
            %>
            <div class="alert alert-danger text-center" role="alert">
                <%= request.getAttribute("error")%>
            </div>
            <% }%>

            <main>
                <header class="row tm-welcome-section">
                    <h1 class="col-12 text-center tm-section-title">Chicken Go</h1>
                    <p class="col-12 text-center">Los mejores pollos a la leña de Cd.Obregón, con el mejor servicio y
                        atención
                        al cliente, <strong>ya contamos con servicio a domicilio</strong>, visítanos en cualquiera de
                        nuestras cuatro sucursales. ¡No te arrepentirás!</p>
                </header>

                <div class="tm-container-inner tm-featured-image">
                    <div class="row">
                        <div class="col-12">
                            <div class="placeholder-2">
                                <div class="parallax-window-2" data-parallax="scroll" data-image-src="img/pollito.jpg">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tm-section tm-container-inner">
                    <div class="row">
                        <div class="col-md-6">
                            <figure class="tm-description-figure">
                                <img src="img/combo-familiar.jpeg" alt="combo-familiar" class="img-fluid" />
                            </figure>
                        </div>
                        <div class="col-md-6">
                            <div class="tm-description-box">
                                <h2 class="tm-gallery-title">Nosotros</h2>
                                <p class="tm-mb-45">Descubre nuestra historia y la pasión que nos inspira a preparar los
                                    mejores pollos asados. Conoce el sabor, la dedicación y el cariño detrás de cada
                                    plato.</p>
                                <a href="about.jsp" class="tm-btn tm-btn-default tm-right">Conócenos</a>
                            </div>
                        </div>
                        <h2 class="col-12 text-center tm-gallery-title-2">Disfruta Más, Paga Menos en Chicken Go</h2>
                        <p class="col-12 text-center">En Chicken Go, creemos que disfrutar de un delicioso pollo asado no
                            tiene que ser costoso. Nos esforzamos por ofrecer los sabores de siempre a precios bajos y
                            accesibles, para que todos puedan disfrutar de una comida sabrosa y de calidad sin afectar su
                            bolsillo. ¡Ven y descubre cómo el buen sabor y los precios justos pueden ir de la mano en
                            Chicken Go!</p>
                        <div>
                            <figure class="tm-description-figure" style="width: 1100px;">
                                <img src="img/promocion4.jpeg" alt="promocion" class="img-fluid" />
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="tm-container-inner tm-featured-image"></div>
                <div class="row">
                    <div class="col-12">
                        <div class="placeholder-2">
                            <div class="parallax-window-2" data-parallax="scroll" data-image-src="img/pollo.jpg">
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>

        <footer class="tm-footer tm-center">
            <p class="tm-footer2">&copy; 2024 Chicken Go</p>
        </footer>

        <script src="js/jquery.min.js"></script>
        <script src="js/parallax.min.js"></script>
        <script>
            $(document).ready(function () {
                // Handle click on paging links
                $('.tm-paging-link').click(function (e) {
                    e.preventDefault();

                    var page = $(this).text().toLowerCase();
                    $('.tm-gallery-page').addClass('hidden');
                    $('#tm-gallery-page-' + page).removeClass('hidden');
                    $('.tm-paging-link').removeClass('active');
                    $(this).addClass("active");
                });
            });
        </script>

        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header border-bottom-0">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-title text-center">
                            <h4>¡Bienvenido a Chicken-Go!</h4><br>
                        </div>
                        <div class="d-flex flex-column text-center">
                            <form action="iniciar" method="post">
                                <div class="form-group">
                                    <input name="usuario" type="text" class="form-control" id="email1"placeholder="Nombre de usuario..." required>
                                </div>
                                <div class="form-group">
                                    <input name="pass" type="password" class="form-control" id="password1" placeholder="Escribir contraseña..." required>
                                </div>
                                <input type="submit" class="btn tm-btn-primary btn-block btn-round" value="Iniciar sesión">
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <div class="signup-section">¿No tienes cuenta? <a href="registro.jsp" class="text-info"> Regístrate aquí</a></div>
                    </div>
                </div>
            </div>
    </body>

</html>
