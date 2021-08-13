<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function detail()
    {
        // $news = News::orderBy('created_at', 'DESC')->take(3)->get();

        return view('product.detail');
    }
}
