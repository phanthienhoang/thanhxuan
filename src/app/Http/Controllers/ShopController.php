<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;

class ShopController extends Controller
{
    public function index()
    {
        // $news = News::orderBy('created_at', 'DESC')->take(3)->get();

        $category = Category::all();
        $product_list = Product::paginate(12);
        // dd($category);
        return view('shop.index', compact('category','product_list'));
    }
}
