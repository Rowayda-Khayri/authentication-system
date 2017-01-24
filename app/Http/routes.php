<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


Route::group(['middleware' => ['web']], function () {


Route::get('/', function () {
    return view('welcome');
});


Route::get('/test', 'Controller@test');


//Route::get('names', function()
//{
//    return array(
//      1 => "John",
//      2 => "Mary",
//      3 => "Steven"
//    );
//});
//
//
//Route::get('names/{id}', function($id)
//{
//    $names = array(
//      1 => "John",
//      2 => "Mary",
//      3 => "Steven"
//    );    
//    return array($id => $names[$id]);
//});


Route::resource('users', 'UserController');

////Auth routes 
//Route::resource('names', array('before' => 'basic.once'), 'NameController');





});


//Route::auth();

// Authentication Routes...
$this->get('login', 'Auth\AuthController@showLoginForm');
$this->post('login', 'Auth\AuthController@login');
$this->get('logout', 'Auth\AuthController@logout');
// Registration Routes...
$this->get('register', 'Auth\AuthController@showRegistrationForm');
$this->post('register', 'Auth\AuthController@register');
// Password Reset Routes...
$this->get('password/reset/{token?}', 'Auth\PasswordController@showResetForm');
$this->post('password/email', 'Auth\PasswordController@sendResetLinkEmail');
$this->post('password/reset', 'Auth\PasswordController@reset');

Route::get('/home', 'HomeController@index');
