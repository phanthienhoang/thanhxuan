<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
class ProductController extends Controller
{
    public function detail()
    {
        // $news = News::orderBy('created_at', 'DESC')->take(3)->get();

        return view('product.detail');
    }
}
