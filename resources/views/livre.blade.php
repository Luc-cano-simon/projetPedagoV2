@extends('layout')


@section('livre')
          <div class='sild'>
            <h2 class="text">livre d'or</h2>
            <p>
              <!-- {{--  afficher  table de  livre d'or  --}} -->

                <?php 
                      foreach($CommenterTable as $key )

                        {
                            echo "<div class='alert alert-warning' role='alert'>".$key ->commenter."</div>" ;
                        }
                ?>

                <form  method="post" >
                   @csrf   
                   <!-- {{-- // importan tp validate the request  --}} -->
                  <div  >

                  

                    <textarea class="textarea" name="comment"  placeholder="Comment :" ></textarea>
                  </div> 
                        <input class="btn pull-right" name="submit" type="submit" >
                </form> 
            </p>  
        </div>
@endsection('livre')


