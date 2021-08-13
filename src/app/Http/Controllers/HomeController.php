<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $news = News::orderBy('created_at', 'DESC')->take(3)->get();

        return view('welcome', [
            'news' => $news
        ]);
    }
}
