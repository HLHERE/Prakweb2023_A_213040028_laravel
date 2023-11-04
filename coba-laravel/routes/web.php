<?php

use App\Http\Controllers\PostController;
use App\Models\Post;
use Illuminate\Support\Facades\Route;
use Monolog\Formatter\FormatterInterface;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/




Route::get('/', function () {
    return view('home', [
        'title'=> 'Home',
    ]);
});

Route::get('/about', function () {
    return view('about' , [
        'title'=> 'About',
        'name' => "HL" , 
        "email" => "HL@gmail.com",
        "image"=> "HL.jpg",
    ]);
});


Route::get('/post', [PostController::class,'index']);


// halaman single post

Route::get('posts/{post:slug}', [PostController::class,'show']);
