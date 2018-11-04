<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\reservation; // nom model
use DB;

class ReservationController extends Controller
{

    public function show( $message="" )
    {
        $horaire= DB::select('SELECT * FROM horaire'); 
        $logo= DB::select('SELECT * FROM logo');
        $imageFooterG= DB::select('SELECT * FROM imageFooterG');
        $imageFooterD= DB::select('SELECT * FROM imageFooterD');



        return view('reservation', [
             "message" => $message,
            'horaire' => $horaire,
            'logo' => $logo,
            'imageFooterG' => $imageFooterG,
            'imageFooterD' => $imageFooterD,
        ]);
    }


    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
        
    public function insert(Request $r)
    {
        $reservation = new reservation;

        //dd( $r->all() );

        $reservation->famille =$r->input('famille');
        $reservation->name =$r->input('name');
        $reservation->calendrier =$r->input('calendrier');
        $reservation->personne =$r->input('personne');
        $reservation->mail =$r->input('mail');
        $reservation->numero =$r->input('numero');
        $reservation->comments =$r->input('comments');
      
        if($reservation->save())
        {
            return $this->show("message envoyé avec succès !");

        }else
            return $this->show("erreur d'envoi !");
    }
}