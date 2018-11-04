<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\commenter; // nom model


class CommenterController extends Controller
{

    public function show()

   {
       $CommenterTable=commenter::all();
       return view('livre', compact('CommenterTable'));
   }


    public function insert(Request $r)

   {
        $Commenter = new commenter;
        $Commenter->commenter =$r->input('comment');

        $Commenter->save();

       
    }

}

 

 

    

