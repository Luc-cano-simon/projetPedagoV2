<!DOCTYPE html>
<html>
<head>
	
	<meta charset="utf-8">
	<title> accueil </title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="{{ asset('/css/Nav.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/footer.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/presentation.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/slider.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/ruban.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/contact.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/galerie.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/activites.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/livre.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/reservation.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/bootstrap.min.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/bootstrap.min.css.map') }}" rel="stylesheet">


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

@yield('livre')
@yield('accueil')
@yield('activites')
@yield('galerie')
@yield('reservation')


<!-- footer -->
	<!-- <div class="content"></div> -->
	<footer id="myFooter">
		<div class="container2">
			<div class="row">
				<div class="imgG col-sm-3">
					@foreach ($imageFooterG as $imageFooterG)
					<img alt="" src="{{$imageFooterG->lien_logo}}" width="255px" />
					@endforeach
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

</body>
</html>