@extends('layout')


@section('reservation')
      <div id="condition">
        <h2 id="arrow">  CONDITION DE RÉSERVATION   </h2> 
        <p>  NOMBRES DE PLACES MAXIMUM : <strong> 30 </strong> <p>
          <i> Famille </i> : 1 samedi/mois <p>
          <i> École </i>  : 1 classe/jour -
          Du lundi au vendredi </p>
          <i> Éhpad </i> : Du lundi au vendredi  <p>
          </p>

        </div>



        <div id="container">
          <form action="" method="post">
            <div id="align">

              <h2> Réservation </h2>
              <i> Vous étes une * </i>
              <p>
                <select name="famille" size="1" id="liste">
                  <option id="liste">École</option>
                    <option id="liste">Éphad</option>
                      <option id="liste">Tout seul</option> 
                      </select>
                    </p>

                    @csrf

                    <label for="name" id="titre" > Nombre de personne</label>
                    <label for="nombres">Date de résérvation</label> 

                    <p>
                      <input type="name" name="name" placeholder="nombre" id="email" />
                      <input type="date" name="calendrier" id="date"/> 
                    </p>


                    <p>
                    </p>

                    <label for="name" id="name" > Nom </label>
                    <p>
                      <input type="name" name="personne"  placeholder="nom" id="name" />
                    </p>

                    <label for="mail" id="titr"> Mail   </label>
                    <p>
                      <input type="mail" name="mail" size="20" 
                      maxlength="40" placeholder="email" id="email" />
                    </p>
                    <label for="num" id="num"> Numéro de téléphone   </label>
                    <p>
                      <input type="num" name="numero" placeholder="numero" id="num" />
                    </p>


                    <label for="comments" id="message"> Message </label>

                    <p>
                      <textarea name="comments" id="comments" cols="20" rows="4">
                      </textarea>
                    </p>
                    <p>
                      <button id="bouton" >  ENVOYER   </button>
                    </p>

                  </div>
                </div>
              </form>
            </div>
          



              <div class="modal" id="infos">
                <div class="modal-dialog ">
                  <div class="modal-content">
                    <!-- Modal body -->
                    <div class="modal-body">
                      Modal body..
                    </div>


                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>

                  </div>
                </div>
              </div>

@endsection('reservation')