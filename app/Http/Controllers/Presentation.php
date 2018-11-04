<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class Presentation extends Controller
{


   public function getPresentation()
	{
		$presentation= DB::select('SELECT * FROM presentation'); 
		$horaire= DB::select('SELECT * FROM horaire'); 
		$logo= DB::select('SELECT * FROM logo');
		$imageFooterG= DB::select('SELECT * FROM imageFooterG');
		$imageFooterD= DB::select('SELECT * FROM imageFooterD');
    
		return view('accueil', 
		
		[
			'presentation' => $presentation,
			'horaire' => $horaire,
			'logo' => $logo,
			'imageFooterG' => $imageFooterG,
			'imageFooterD' => $imageFooterD,

		]); 
	}
}
