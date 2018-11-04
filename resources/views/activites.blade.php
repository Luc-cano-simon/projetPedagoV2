@extends('layout')


@section('activites')
      <!-- partie activité-infos -->



<div class="container-fluid">
  <div class="row">
    <div class="col-md-6">
      <h3 class="text-center">
      ACTIVITES
      </h3>
    </div>
    <div class="col-md-6">
      <h3 class="text-center">
        INFORMATIONS
      </h3>
    </div>
  </div>
</div>



      
    <div class="article">
      <div class="row">
        <div class="col">
          @foreach ($activites as $a)
                <h3 class="titrePresentation"><i><strong>
                    {{ $a->titre }} 
                </h3></i></strong>

                <p><strong>
                      {{ $a->description }} 
                </p></strong>
            @endforeach    
          </div>
        <div class="w-70"></div>
        <div class="col"> 
          @foreach ($informations as $i)
            <h3 class="titrePresentation"><i><strong>
                      {{ $i->titreInfo }}
                       </h3></i></strong>

                      <p><strong>
                        {{ $i->descriptif }}
                      </p></strong>
                         
            @endforeach  
          </div>
      </div>
    </div> 
@endsection('activites')


     


