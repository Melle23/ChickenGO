<%-- 
    Document   : contact
    Created on : 2 dic 2024, 3:25:18 p.m.
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Chicken Go - Contacto </title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet" />
    <link href="css/all.min.css" rel="stylesheet" />
	<link href="css/templatemo-style.css" rel="stylesheet" />
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
								<li class="tm-nav-li"><a href="catalogo.jsp" class="tm-nav-link">Catálogo</a></li>
								<li class="tm-nav-li"><a href="about.jsp" class="tm-nav-link">Nosotros</a></li>
								<li class="tm-nav-li"><a href="contact.jsp" class="tm-nav-link active">Contacto</a></li>
							</ul>
						</nav>	
					</div>
				</div>
			</div>
		</div>

		<main>
			<header class="row tm-welcome-section">
				<h1 class="col-12 text-center tm-section-title">Contáctanos</h1>
				<p class="col-12 text-center">
					¿Tienes alguna pregunta o quieres realizar un pedido especial? En Chicken Go, 
					estamos aquí para atenderte. Llámanos, visítanos o completa el formulario de contacto para
					que podamos ofrecerte el mejor servicio y ayudarte a disfrutar del auténtico sabor de
					nuestros pollos a la leña.
				</p>
			</header>

			<div class="tm-container-inner-2 tm-contact-section">
				<div class="row">
					<div class="col-md-6">
						<form action="" method="POST" class="tm-contact-form">
					        <div class="form-group">
					          <input type="text" name="name" class="form-control" placeholder="Nombre" required="" />
					        </div>
					        
					        <div class="form-group">
					          <input type="email" name="email" class="form-control" placeholder="Correo eletrónico" required="" />
					        </div>
				
					        <div class="form-group">
					          <textarea rows="5" name="message" class="form-control" placeholder="Mensaje" required=""></textarea>
					        </div>
					
					        <div class="form-group tm-d-flex">
					          <button type="submit" class="tm-btn tm-btn-success tm-btn-right">
					            Enviar
					          </button>
					        </div>
						</form>
					</div>
					<div class="col-md-6">
						<div class="tm-address-box">
							<h4 class="tm-info-title tm-text-success">Nuestra dirección</h4>
							<address>
								<ul>
								<li><strong>Matriz:</strong> Guerrero #844 Pte. (frente a Plaza Tutuli)<br></li>
								<li><strong>Sucursal Plano Oriente:</strong> No Reelección y Gral Plutarco Elias Calles<br></li>
								<li><strong>Sucursal 300:</strong> Tabasco y 300<br></li>
								<li><strong>Sucursal Kino:</strong> Kino 137 - C (frente al estadio de béisbol ITSON)</li>
								</ul>
							</address>
							<a href="tel:080-090-0110" class="tm-contact-link">
								<i class="fas fa-phone tm-contact-icon"></i>644 407-73-22
							</a>
							<a href="mailto:chickengo@gmail.com" class="tm-contact-link">
								<i class="fas fa-envelope tm-contact-icon"></i>chickengo@gmail.com
							</a>
							<div class="tm-contact-social">
								<a href="https://www.facebook.com/p/Chicken-GO-Pollos-a-la-le%C3%B1a-100063581016962/?locale=es_LA" target="_blank" class="tm-social-link"><i class="fab fa-facebook tm-social-icon"></i></a>
								<a href="https://www.instagram.com/chickengo.obregon/" target="_blank" class="tm-social-link"><i class="fab fa-instagram tm-social-icon"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
            
<!-- How to change your own map point
	1. Go to Google Maps
	2. Click on your location point
	3. Click "Share" and choose "Embed map" tab
	4. Copy only URL and paste it within the src="" field below
-->
			<div class="tm-container-inner-2 tm-map-section">
				<div class="row">
					<div class="col-md-6">
						<div class="tm-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14156.815191255642!2d-109.9476634!3d27.4940367!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86c815f5c4e6d3b7%3A0x8ffe4d83c1d091a1!2sChicken%20Go!5e0!3m2!1ses!2smx!4v1730182724312!5m2!1ses!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>						
							<h5>Sucursal Guerrero</h5>
						</div>
					</div>
					<div class="col-md-6">
						<div class="tm-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28315.749605421577!2d-109.94974721295347!3d27.485795367652628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86c83e400c77a0f9%3A0xa2f7e6222325a422!2sChicken%20Go!5e0!3m2!1ses!2smx!4v1731140404990!5m2!1ses!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
							<h5>Sucursal Plano Oriente</h5>
						</div>
					</div>
				</div>
			</div>
			<div class="tm-container-inner-2 tm-map-section">
				<div class="row">
					<div class="col-md-6">
						<div class="tm-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28321.066177437988!2d-109.97555858437501!3d27.46511!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86c8161b4606390b%3A0x34b4c46296813df5!2sChicken%20Go!5e0!3m2!1ses!2smx!4v1731140586526!5m2!1ses!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
							<h5>Sucursal 300</h5>
						</div>
					</div>
					<div class="col-md-6">
						<div class="tm-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28313.082386932056!2d-110.00688308437498!3d27.496167399999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86c83e400c63348b%3A0x4815d6a89dbcaac6!2sChicken%20GO!5e0!3m2!1ses!2smx!4v1731140614298!5m2!1ses!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
							<h5>Sucursal Kino</h5>
						</div>
					</div>
				</div>
			</div>
		</main>

		<footer class="tm-footer text-center">
			<p>&copy; 2024 Chicken Go</p>
		</footer>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script>
		$(document).ready(function(){
			var acc = document.getElementsByClassName("accordion");
			var i;
			
			for (i = 0; i < acc.length; i++) {
			  acc[i].addEventListener("click", function() {
			    this.classList.toggle("active");
			    var panel = this.nextElementSibling;
			    if (panel.style.maxHeight) {
			      panel.style.maxHeight = null;
			    } else {
			      panel.style.maxHeight = panel.scrollHeight + "px";
			    }
			  });
			}	
		});
	</script>
</body>
</html>
