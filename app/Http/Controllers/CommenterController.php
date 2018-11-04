<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\commenter; // nom model
use DB;

class CommenterController extends Controller
{

    public function show()

   {
       $CommenterTable=commenter::all();
       $horaire= DB::select('SELECT * FROM horaire'); 
       $logo= DB::select('SELECT * FROM logo');
       $imageFooterG= DB::select('SELECT * FROM imageFooterG');
       return view('livre', compact('CommenterTable','horaire','logo', 'imageFooterG'));
   }


    public function insert(Request $r)

   {
        $Commenter = new commenter;
        $Commenter->commenter =$r->input('comment');

        if($Commenter->save())
        {
           return $this->show("message envoyé avec succès !");   
        }else     
        {
           return $this->show("erreur d'envoi !");
        }
       
    }

}

 

 

    

