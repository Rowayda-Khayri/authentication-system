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

/********************************************************************/

Route::group(['middleware' => ['web']], function () {


//Route::get('/', function () {
//    return view('welcome');
//});


    Route::get('/', 'HomeController@index');


//Route::auth();
// Authentication Routes...
//$this->get('login', 'Auth\AuthController@showLoginForm');
$this->get('login', 'Auth\AuthController@waitForLogin');
$this->post('login', 'Auth\AuthController@login');
//$this->post('/', 'Auth\AuthController@login');

$this->get('logout', 'Auth\AuthController@logout');
// Registration Routes...
$this->get('register', 'Auth\AuthController@waitForRegistration');
$this->post('register', 'Auth\AuthController@register');
// Password Reset Routes...
$this->get('password/reset/{token?}', 'Auth\PasswordController@showResetForm');
$this->post('password/email', 'Auth\PasswordController@sendResetLinkEmail');
$this->post('password/reset', 'Auth\PasswordController@reset');
Route::get('/home', 'HomeController@index');
//Route::get('/home', 'HomeController@index')->middleware('auth.basic');
 

});
/************************************************************/

//Route::get('/test', 'Controller@test');

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



//
//Route::get('/', ['middleware' => 'auth', function ()  {
//    return view('welcome');
//}]);


//Route::get('api/user', ['middleware' => 'auth.basic', function() {
//    // Only authenticated users may enter...
//    
//    
//    Route::get('/home', 'HomeController@index');
//
//    
//    
//    
//    
//}]);



