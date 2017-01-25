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


    Route::get('/', 'HomeController@index');

    //Route::auth();
    
    // Authentication Routes...
     
    //login
    $this->get('login', 'Auth\AuthController@waitForLogin');
    $this->post('login', 'Auth\AuthController@login');
    
    //logout
    $this->get('logout', 'Auth\AuthController@logout');
    
    // Registration Routes...
    $this->get('register', 'Auth\AuthController@waitForRegistration');
    $this->post('register', 'Auth\AuthController@register');
    
    /**************
    // Password Reset Routes...
    $this->get('password/reset/{token?}', 'Auth\PasswordController@showResetForm');
    $this->post('password/email', 'Auth\PasswordController@sendResetLinkEmail');
    $this->post('password/reset', 'Auth\PasswordController@reset');
    Route::get('/home', 'HomeController@index');
    ***************/


});




