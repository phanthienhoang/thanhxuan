<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get(
    '/',
    [HomeController::class, 'index']
)->name('index');

Route::get(
    '/shop',
    [ShopController::class, 'index']
)->name('shop.index');

Route::get(
    '/product',
    [ProductController::class, 'detail']
)->name('product.detail');

Route::get('/shopping-cart', function () {
    return view('product.shopping-cart');
});

Route::get('/contact', function () {
    return view('contact');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
