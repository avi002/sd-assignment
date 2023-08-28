<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public function index(){
        return view('website.pages.welcome');
    }
    public function about(){
        return view('website.pages.about-us');
    }
    public function contact(){
        return view('website.pages.contact-us');
    }
    public function services(){
        return view('website.pages.services');
    }
}
