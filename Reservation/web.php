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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/galerie', function () {
    return view('galerie');
});

Route::get('/acceuil', function () {
    return view('acceuil');
});

Route::get('/contact', function () {
    return view('contact');
});

Route::get('/images', 'image@getimage');

Route::post('/contact', 'ContactController@add');

Route::get('/reservation', 'ReservationController@show');

Route::post('/reservation', 'ReservationController@insert');