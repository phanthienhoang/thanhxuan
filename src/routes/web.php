<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\PageHomeController;

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
    [PageHomeController::class, 'page_index']
)->name('page.index');

Route::get(
    '/lien-he',
    [PageHomeController::class, 'page_contact']
)->name('page.contact');

Route::get(
    '/gioi-thieu',
    [PageHomeController::class, 'page_introduction']
)->name('page.introduction');

Route::get(
    '/san-pham',
    [PageHomeController::class, 'page_category']
)->name('page.category');

Route::get(
    '/san-pham/1',
    [PageHomeController::class, 'page_detail']
)->name('page.detail');

Route::get(
    '/shop',
    [ShopController::class, 'index']
)->name('shop.index');

Route::get(
    '/product/{slug}',
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
