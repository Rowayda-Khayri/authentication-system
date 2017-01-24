<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        // Get the currently authenticated user...
        $user = Auth::user();
//
//        return view('home', compact('user'));
        
        return "Hello $user->name , u r @ Home ";
//        return "Hello , u r @ Home ";
    }
}
