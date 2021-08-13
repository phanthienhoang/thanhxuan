<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function index()
    {
        // $news = News::orderBy('created_at', 'DESC')->take(3)->get();

        return view('shop.index');
    }
}
