@extends('layout')

			
@section('galerie')
	<h2 class="titreGal">Galerie D'images</h2>

           @foreach ($image as $image)
           <img class="img_1 zoom"  src="{{ $image->lien_image }}">
           @endforeach 
@endsection('galerie')

