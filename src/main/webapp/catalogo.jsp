<%-- 
    Document   : catalogo
    Created on : 2 dic 2024, 3:24:47 p.m.
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% HttpSession sesion = request.getSession(false);
    boolean usuarioLogueado = (sesion != null && sesion.getAttribute("usuario") != null); %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
        <title>Chicken Go - Catálogo</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
        <link href="css/templatemo-style.css" rel="stylesheet" />

        <style> .form-inline .form-control {
            width: auto;
            display: inline-block;
        }
        .btn-primary {
            background-color: #800020; /* Rojo vino */
            border-color: #800020;
        }
        .btn-primary:hover {
            background-color: #a00028;
            border-color: #a00028;
        } </style>
    </head>
    <!--

    Simple House

    https://templatemo.com/tm-539-simple-house

    -->

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
                                    <li class="tm-nav-li"><a href="index.jsp" class="tm-nav-link">Inicio</a></li>
                                    <li class="tm-nav-li"><a href="catalogo.jsp" class="tm-nav-link active">Catálogo</a></li>
                                    <li class="tm-nav-li"><a href="about.jsp" class="tm-nav-link">Nosotros</a></li>
                                    <li class="tm-nav-li"><a href="contact.jsp" class="tm-nav-link">Contacto</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

            <main>
                <div class="tm-paging-links">
                    <nav>
                        <ul>
                            <li class="tm-paging-item"><a href="#" class="tm-paging-link active">Pollos</a></li>
                            <li class="tm-paging-item"><a href="#" class="tm-paging-link">Guarniciones</a></li>
                            <li class="tm-paging-item"><a href="#" class="tm-paging-link">Promociones</a></li>
                        </ul>
                    </nav>
                </div>

                <!-- Gallery -->
                <div class="row tm-gallery">
                    <!-- gallery page 1 -->
                    <div id="tm-gallery-page-pollos" class="tm-gallery-page">
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                            <figure>
                                <img src="img/pollo.jpg" class="img-fluid tm-gallery-img" />
                                <figcaption>
                                    <h4>1/2 Pollo</h4>
                                    <p class="tm-gallery-description">Incluye: papas, cebolla, chile, tortillas, y salsa de la casa</p>
                                    <p class="tm-gallery-price">$85.00</p>
                                    <% if (usuarioLogueado) { %>
                                    <form action="AddCart" method="post">
                                        <input type="hidden" name="nombre" value="1/2 Pollo" />
                                        <input type="hidden" name="img" value="img/pollo.jpg" />
                                        <input type="hidden" name="precio" value="85.00" />
                                        <input type="number" name="cantidad" value="1" min="1" />
                                        <button type="submit" class="btn btn-primary">
                                            <i class="bi bi-cart-plus"></i>
                                        </button>
                                    </form> <%
                                    } else { %> <p class="text-danger"></p> <% }%>
                                </figcaption>
                            </figure>
                        </article>

                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                                <figure>
                                    <img src="img/unoPollo.png" alt="1-pollo" class="img-fluid tm-gallery-img" />
                                    <figcaption>
                                        <h4>1 Pollo</h4>
                                        <p class="tm-gallery-description">Incluye: papas, cebolla, chile, tortillas, y salsa de la casa</p>
                                        <p class="tm-gallery-price">$170.00</p>
                                        <% if (usuarioLogueado) { %>
                                        <form action="AddCart" method="post">
                                            <input type="hidden" name="nombre" value="1 Pollo" />
                                            <input type="hidden" name="img" value="img/unoPollo.png" />
                                            <input type="hidden" name="precio" value="170.00" />
                                            <input type="number" name="cantidad" value="1" min="1" />
                                            <button type="submit" class="btn btn-primary">
                                                <i class="bi bi-cart-plus"></i>
                                            </button>
                                        </form> <%
                                                    } else { %> <p class="text-danger"></p> <% }%>
                                    </figcaption>
                                </figure>


                            </article>
                        </article>

                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                            <figure>
                                <img src="img/pollo.jpg" alt="1y1/2-pollo" class="img-fluid tm-gallery-img" />
                                <figcaption>
                                    <h4>1 y 1/2 Pollos</h4>
                                    <p class="tm-gallery-description">Incluye: papas, cebolla, chile, tortillas, y salsa de la casa</p>
                                    <p class="tm-gallery-price">$240.00</p>
                                    <% if (usuarioLogueado) { %>
                                    <form action="AddCart" method="post">
                                        <input type="hidden" name="nombre" value="1 y 1/2 Pollo" />
                                        <input type="hidden" name="img" value="img/unoPollo.png" />
                                        <input type="hidden" name="precio" value="240.00" />
                                        <input type="number" name="cantidad" value="1" min="1" />
                                        <button type="submit" class="btn btn-primary">
                                            <i class="bi bi-cart-plus"></i>
                                        </button>
                                    </form> <%
                                    } else { %> <p class="text-danger"></p> <% }%>
                                </figcaption>
                            </figure>
                        </article>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                            <figure>
                                <img src="img/dosPollo.png" alt="2-pollos" class="img-fluid tm-gallery-img" />
                                 <figcaption>
                                    <h4>2 Pollo</h4>
                                    <p class="tm-gallery-description">Incluye: papas, cebolla, chile, tortillas, y salsa de la casa</p>
                                    <p class="tm-gallery-price">$320.00</p>
                                    <% if (usuarioLogueado) { %>
                                    <form action="AddCart" method="post">
                                        <input type="hidden" name="nombre" value="1 Pollo" />
                                        <input type="hidden" name="img" value="img/dosPollo.png" />
                                        <input type="hidden" name="precio" value="320.00" />
                                        <input type="number" name="cantidad" value="1" min="1" />
                                        <button type="submit" class="btn btn-primary">
                                            <i class="bi bi-cart-plus"></i>
                                        </button>
                                    </form> <%
                                    } else { %> <p class="text-danger"></p> <% }%>
                                </figcaption>
                            </figure>
                        </article>
                    </div> <!-- gallery page 1 -->

                    <!-- gallery page 2 -->
                    <div id="tm-gallery-page-guarniciones" class="tm-gallery-page hidden">
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                            <figure>
                                <img src="img/sopa.jpg" alt="sopa" class="img-fluid tm-gallery-img" />
                                <figcaption>
                                    <h4>Sopa</h4>
                                    <p class="tm-gallery-description">Incluye: papas, cebolla, chile, tortillas, y salsa de la casa</p>
                                    <p class="tm-gallery-price">$21.00</p>
                                    <% if (usuarioLogueado) { %>
                                    <form action="AddCart" method="post">
                                        <input type="hidden" name="nombre" value="Sopa" />
                                        <input type="hidden" name="img" value="img/sopa.jpg" />
                                        <input type="hidden" name="precio" value="21.00" />
                                        <input type="number" name="cantidad" value="1" min="1" />
                                        <button type="submit" class="btn btn-primary">
                                            <i class="bi bi-cart-plus"></i>
                                        </button>
                                    </form> <%
                                    } else { %> <p class="text-danger"></p> <% }%>
                                </figcaption>
                            </figure>
                        </article>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                            <figure>
                                <img src="img/frijol.jpg" alt="frijol" class="img-fluid tm-gallery-img" />
                                <figcaption>
                                    <h4>Frijol</h4>
                                    <p class="tm-gallery-description">Incluye: papas, cebolla, chile, tortillas, y salsa de la casa</p>
                                    <p class="tm-gallery-price">$21.00</p>
                                    <% if (usuarioLogueado) { %>
                                    <form action="AddCart" method="post">
                                        <input type="hidden" name="nombre" value="Frijol" />
                                        <input type="hidden" name="img" value="img/frijol.jpg" />
                                        <input type="hidden" name="precio" value="21.00" />
                                        <input type="number" name="cantidad" value="1" min="1" />
                                        <button type="submit" class="btn btn-primary">
                                            <i class="bi bi-cart-plus"></i>
                                        </button>
                                    </form> <%
                                    } else { %> <p class="text-danger"></p> <% }%>
                                </figcaption>
                            </figure>
                        </article>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                            <figure>
                                <img src="img/arroz.jpg" alt="arroz" class="img-fluid tm-gallery-img" />
                               <figcaption>
                                    <h4>Arroz</h4>
                                    <p class="tm-gallery-description">Incluye: papas, cebolla, chile, tortillas, y salsa de la casa</p>
                                    <p class="tm-gallery-price">$21.00</p>
                                    <% if (usuarioLogueado) { %>
                                    <form action="AddCart" method="post">
                                        <input type="hidden" name="nombre" value="Arroz" />
                                        <input type="hidden" name="img" value="img/arroz.jpg" />
                                        <input type="hidden" name="precio" value="21.00" />
                                        <input type="number" name="cantidad" value="1" min="1" />
                                        <button type="submit" class="btn btn-primary">
                                            <i class="bi bi-cart-plus"></i>
                                        </button>
                                    </form> <%
                                    } else { %> <p class="text-danger"></p> <% }%>
                                </figcaption>
                            </figure>
                        </article>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                            <figure>
                                <img src="img/spaghetti.jpg" alt="spaghetti" class="img-fluid tm-gallery-img" />
                                 <figcaption>
                                    <h4>Spaghetti</h4>
                                    <p class="tm-gallery-description">Incluye: papas, cebolla, chile, tortillas, y salsa de la casa</p>
                                    <p class="tm-gallery-price">$50.00</p>
                                    <% if (usuarioLogueado) { %>
                                    <form action="AddCart" method="post">
                                        <input type="hidden" name="nombre" value="Spaghetti" />
                                        <input type="hidden" name="img" value="img/spaghetti.jpg" />
                                        <input type="hidden" name="precio" value="50.00" />
                                        <input type="number" name="cantidad" value="1" min="1" />
                                        <button type="submit" class="btn btn-primary">
                                            <i class="bi bi-cart-plus"></i>
                                        </button>
                                    </form> <%
                                    } else { %> <p class="text-danger"></p> <% }%>
                                </figcaption>
                            </figure>
                        </article>
                    </div> <!-- gallery page 2 -->

                    <!-- gallery page 3 -->
                    <div id="tm-gallery-page-promociones" class="tm-gallery-page hidden">
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-description-figure">
                            <figure>
                                <img src="img/promo1.jpg" alt="promo-findesemana" class="img-fluid tm-gallery-img" />
                                <figcaption>
                                    <h4>Promo fin de semana</h4>
                                </figcaption>
                            </figure>
                        </article>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-description-figure">
                            <figure>
                                <img src="img/promo-dia-de-muertos.jpeg" alt="promo-diademuertos" class="img-fluid tm-gallery-img" />
                                <figcaption>
                                    <h4>Promo día de muertos</h4>
                                </figcaption>
                            </figure>
                        </article>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-description-figure">
                            <figure>
                                <img src="img/promo-otoño.jpg" alt="promo-otoño" class="img-fluid tm-gallery-img" />
                                <figcaption>
                                    <h4>Promo otoño</h4>
                                </figcaption>
                            </figure>
                        </article>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-description-figure">
                            <figure>
                                <img src="img/promo-noviembre.jpg" alt="promo-noviembre" class="img-fluid tm-gallery-img" />
                                <figcaption>
                                    <h4>Promo mes noviembre</h4>
                                </figcaption>
                            </figure>
                        </article>

                       <h3 class="tm-footer text-center bg-danger text-white py-3" style="width: 100%; text-align: center;">¡Promociónes válidas solo en sucursales!</h3>


                    </div> <!-- gallery page 3 -->

                </div>
            </main>
            <footer class="tm-footer text-center bg-danger text-white py-3">
                <p>&copy; 2024 Chicken Go</p>
            </footer>
        </div>
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
    </body>

</html>
