<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>SunFlower</title>
	<link rel="stylesheet" type="text/css" href="assets/css/boot.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>
	<header class="main-header">
		 <div class="container">
		 	 <div class="center">
		 	 	 <a href="tel:62991346028" class="btn-phone"><i class="fas fa-phone-volume" title="Ligue Agora"></i> Ligue Agora</a>
			 	 	 <div class="box-logo">
			 	 	 	 <a href="">
			 	 	 	 	<img src="assets/images/logo.jpg" alt="" title="">
			 	 	 	 </a>
			 	 	 </div>
		 	 	 <a href="" class="btn-whatsapp desktop"><i class="fab fa-whatsapp" title="Encomenda Rápida"></i> Encomenda Rápida</a>
		 	 	 <a href="" class="btn-whatsapp smartphone"><i class="fab fa-whatsapp" title="Encomenda Rápida"></i> Encomenda Rápida</a>
		 	 </div>
		 </div>
		 <div class="desc-container">
		 	  <p>
		 	  	Seja para uma data especial ou simplesmente para reafirmar o carinho que você sente, esses<br>
				presentes realmente vão surpreender.
		 	  </p>
		 	  <p>
		 	  	Em nosso site, você vai encontrar flores, cestas e presentes que procura e outras para servir de<br>
				inspiração para seu presente.
		 	  </p>
		 </div>
	</header>
	<!-- end header -->
	<main class="main-container">
		<div class="container">
			 <header class="title-header">
				<h1>Presentei quem você ama!</h1>
		     </header>

		     <section class="content-article">
		     	 <?php for($i = 1; $i <= 8; $i++): ?>
		     	 	  <article>
		     	  		  <div class="box-image">
		     	  		  	  <img src="assets/images/product.jpg" alt="" title="">
		     	  		  </div>
		     	  		  <a href="" class="btn-product desktop" title="Baldes Personalizados">Baldes Personalizados</a>
		     	  		  <a href="" class="btn-product smartphone" title="Baldes Personalizados">Baldes Personalizados</a>
		     	      </article>
		     	 <?php endfor; ?>
		     </section>
		     <header class="title-header">
				<h1>POR QUE COMPRAR CONOSCO?</h1>
		     </header>
		</div>
		<div class="opt-in-footer">
			<div class="container opt-flex">
				 <div class="items m-r">
					 	 <span class="fas fa-gift"></span>
					 	 <h2>Montagem <br>Personalizada</h2>
				 </div>
				 <div class="items m-r left">
					 	 <span class="fas fa-truck"></span>
					 	 <h2>Entrega <br>Rápida</h2>
				 </div>
				 <div class="items">
					 	 <span class="far fa-star"></span>
					 	 <h2>Produtos de <br>Alta Qualidade</h2>
				 </div>
			</div>
		</div>
		<a href="" class="float desktop">
			<img src="assets/images/float.png" alt="Whatssap">
		</a>

		<!-- vesão mobil -->
		<a href="" class="float smartphone">
			<img src="assets/images/float.png" alt="Whatssap">
		</a>
	</main>
   
	<footer class="main-footer">
		<div class="container">
			<div class="social-footer">
				<a href="" class="icon-social" title="Siga no Instagram"><i class="fab fa-instagram"></i></a>
				<a href="" class="icon-social" title="Ligue Agora"><i style="transform: rotate(-40deg);" class="fas fa-phone-volume"></i></a>
				<a href="" class="icon-social desktop" title="Enviar uma Mensagem"><i class="fab fa-whatsapp"></i></a>
				<a href="" class="icon-social smartphone" title="Enviar uma Mensagem"><i class="fab fa-whatsapp"></i></a>
			</div>
			<p>
				Rua Finlândia Qd. 87 Lt. 15 Nº305
				Jardim Europa, Goiânia-GO, Cep: 74.330-150, 
			</p>
		</div>
	</footer>

	<!-- scripts -->
	<script src="https://kit.fontawesome.com/86f5b0a58f.js" crossorigin="anonymous"></script>
</body>
</html>