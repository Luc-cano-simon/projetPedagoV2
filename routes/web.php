<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// route Présentation & 
Route::get('accueil/', 'Presentation@getPresentation');



// route activités
Route::get('/activites', 'activites@getActivites');




// route Image
Route::get('/galerie', 'Image@getImage');




// route pour vue contact 
Route::get('/contact', 'ContactController@get');
Route::post('/contact', 'ContactController@add');






//route pour livre
Route::get('/livre', 'CommenterController@show');
Route::post('/livre', 'CommenterController@insert');



// Route pour reservation
Route::get('/reservation', 'ReservationController@show');
Route::post('/reservation', 'ReservationController@insert');

