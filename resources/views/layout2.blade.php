<!DOCTYPE html>
<html>
<head>
	
	<link href="{{ asset('/css/Nav.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/footer2.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/presentation.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/slider.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/ruban.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/contact.css') }}" rel="stylesheet">

	<link href="{{ asset('/css/bootstrap.min.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/bootstrap.min.css.map') }}" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

	
	<meta charset="utf-8">

	<title> accueil </title>

</head>
<body>

	<!-- Header -->

	<div class="container-fluid">
		<div class="row">

			<div class="col-md-3">
				@foreach ($logo as $logo)
				<img alt="logo" src="{{ $logo->lien_logo }}" width="300px" />
				@endforeach 

			</div>

			<div class="col-md-6">
				<h3 class="titreHeader">
					La route des pains
					
				</h3>
			</div>
			<div class="col-md-3">

				<img alt="logo" src="css/img/GIFMaker.org_T0CK25.gif" width="200px" />

			</div>
		</div>
	</div>



	<!-- Navbar -->

	 <nav id="menu_principal">
    <ul>

      <li class="accueil"> <a href="http://localhost:8000/accueil">Accueil</a></li> 
        <li class="activite"><a href="http://localhost:8000/activites">Activites</a></li>
        <li class="reservation"><a href="http://localhost:8000/reservation">Reservation</a></li>
        <li class="contact" ><a href="http://localhost:8000/contact">Contact</a></li>
        <li class="galerie" ><a href="http://localhost:8000/galerie">Galerie</a></li>
        <li class="livreDor"><a href="http://localhost:8000/livre">Livre d'or</a></li>
      
    </ul>
  </nav>

@yield('contact')


<!-- footer -->
	<!-- <div class="content"></div> -->
	<footer id="myFooter">
		<div class="container2">
			<div class="row">
					<div class="map">
			          <iframe id="map-container" class="maps" frameborder="0" style="border:0" 
			          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d65066.13654092886!2d0.5625408290207262!3d43.88599558709233!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12abd3502c3f58af%3A0xd82aa5af931aeaae!2s32500+Pauilhac!5e0!3m2!1sfr!2sfr!4v1539866377021" width="250" height="250" frameborder="0" style="border:0" allowfullscreen>   
        			</iframe>
      		</div>
				
				<div class="adresse col-sm-2"> 
					<h5>Adresse</h5>
					<h5>"Au Vigneaux"</h5>
					<h5>32500 Pauilhac</h5>
					<h5>Tel : 0986467854</h5>
					<h5>Mail : ghesgfsfksfr@live.fr</h5>
				</div>
			
				<div class=" col-sm-4">
					<h2 class="jours">Les jours d’ouverture </h2>
					@foreach ($horaire as $horaire)
					<ul>
						<li><b>{{ $horaire->titre }} </b> {{ $horaire->info }}</li>
					</ul>
					@endforeach
				</div>

				<div class="imgD col-sm-3"> 
					<h5></h5>
					@foreach ($imageFooterD as $imageFooterD)
					<img class="epi" alt="logo" src="{{$imageFooterD->lien_logo}}" width="130px" />
					@endforeach
				</div>

			</div>
		</div>
	

	</footer>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>