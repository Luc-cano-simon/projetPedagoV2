@extends('layout')





@section('accueil')
		<div class="container-fluid">
			<div class="row">
				<div class="videG col-md-3"></div>
				<div class="col-md-6">
					<p class="cadre text-center"></p>

					<div id="fond"> 
						<div class="ruban">     
							@foreach ($presentation as $presentation)
							<h2>{{ $presentation->titre }}</h2>     
						</div>     
						<div class="ruban_gauche"></div>
						<div class="ruban_droit"></div>
					</div>
					<b>{{ $presentation->contenu }}</b>
					@endforeach
				</p>
			</div>
		</div>
	</div>








	<!-- partie slider -->

	<div class="container">
		<div id="demo" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ul class="carousel-indicators mb-0 pb-0">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>


			<!-- The slideshow -->

			<div class="carousel-inner no-padding my-5">
				<div class="carousel-item active">
					<div class="col-xs-4 col-sm-4 col-md-4">
						<img class="img-fluid card-img-top" src="css/slider/image_14.JPG">
						<div class="card-img-overlay t_img">
						</div>                   
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<img class="img-fluid card-img-top rounded-bottom" src="css/slider/image_20.JPG">
						<div class="card-img-overlay t_img">
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<img class="img-fluid card-img-top rounded-bottom" src="css/slider/image_27.JPG">
						<div class="card-img-overlay t_img">
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="col-xs-4 col-sm-4 col-md-4">
						<img class="img-fluid card-img-top" src="css/slider/image_24.JPG">
						<div class="card-img-overlay t_img">
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<img class="img-fluid card-img-top" src="css/slider/image_31.JPG">
						<div class="card-img-overlay t_img">
						</div>
					</div>
					<div class="col-md-4">
						<img class="img-fluid card-img-top" src="css/slider/image_25.JPG">
						<div class="card-img-overlay t_img">
						</div>

					</div>
				</div>
				<div class="carousel-item">
					<div class="col-xs-4 col-sm-4 col-md-4">
						<img class="img-fluid card-img-top" src="css/slider/image_17.JPG">
						<div class="card-img-overlay t_img">
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<img class="img-fluid card-img-top" src="css/slider/image_21.JPG">
						<div class="card-img-overlay t_img">
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<img class="img-fluid card-img-top" src="css/slider/image_29.JPG">
						<div class="card-img-overlay t_img"></div>
					</div>
				</div>
			</div>


			<!-- Left and right controls -->


			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon sp"></span>
			</a>
			<a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon sp"></span>
			</a>
		</div>
	</div>
@endsection('accueil')

	