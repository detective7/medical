<?php

namespace App\Http\Controllers;

// use Controller;
use App\BodyParts;

class IndexController extends Controller
{
    public  function index()
    {
        $contacts = BodyParts::all();
        return view('welcome', compact('contacts'));
        // return view('welcome');
    }
    
}
