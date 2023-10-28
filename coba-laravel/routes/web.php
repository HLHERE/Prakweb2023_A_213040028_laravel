<?php

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


Route::get('/post', function () {
    $blog_posts = [
        [
        "title"=> "judul post pertama",
        "slug" => "judul-post-pertama",
        "author"=> "HL",    
        "body"=> "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab tenetur placeat nulla quam consequatur perspiciatis officiis blanditiis, rem illo deserunt nam repellendus.
         Magni voluptas, molestiae modi reiciendis vel eligendi, quaerat dicta quas nihil, minus enim possimus aspernatur sapiente voluptatibus mollitia ex error asperiores laborum labore debitis impedit suscipit nobis maiores aut. Atque ea quae quisquam blanditiis sunt veritatis recusandae ut ipsa, ipsam necessitatibus. Hic natus maxime architecto debitis sapiente rem ipsa facere voluptates quae omnis non
         possimus sint, tenetur et, repellendus placeat beatae fugit fuga saepe earum aperiam fugiat optio."
        ],
        [
            "title"=> "judul post kedua",
            "slug"=> "judul-post-kedua",
            "author"=> "LYF",    
            "body"=> "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab tenetur placeat nulla quam consequatur perspiciatis officiis blanditiis, rem illo deserunt nam repellendus.
             Magni voluptas, molestiae modi reiciendis vel eligendi, quaerat dicta quas nihil, minus enim possimus aspernatur sapiente voluptatibus mollitia ex error asperiores laborum labore debitis impedit suscipit nobis maiores aut. Atque ea quae quisquam blanditiis sunt veritatis recusandae ut ipsa, ipsam necessitatibus. Hic natus maxime architecto debitis sapiente rem ipsa facere voluptates quae omnis non
             possimus sint, tenetur et, repellendus placeat beatae fugit fuga saepe earum aperiam fugiat optio."
        ]
        ];

    return view('post' ,[
        'title'=> 'Post',
        'posts'=> $blog_posts
    ]);
});


// halaman single post

Route::get('posts/{slug}', function($slug) {
    $blog_posts = [
        [
        "title"=> "judul post pertama",
        "slug" => "judul-post-pertama",
        "author"=> "HL",    
        "body"=> "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab tenetur placeat nulla quam consequatur perspiciatis officiis blanditiis, rem illo deserunt nam repellendus.
         Magni voluptas, molestiae modi reiciendis vel eligendi, quaerat dicta quas nihil, minus enim possimus aspernatur sapiente voluptatibus mollitia ex error asperiores laborum labore debitis impedit suscipit nobis maiores aut. Atque ea quae quisquam blanditiis sunt veritatis recusandae ut ipsa, ipsam necessitatibus. Hic natus maxime architecto debitis sapiente rem ipsa facere voluptates quae omnis non
         possimus sint, tenetur et, repellendus placeat beatae fugit fuga saepe earum aperiam fugiat optio."
        ],
        [
            "title"=> "judul post kedua",
            "slug"=> "judul-post-kedua",
            "author"=> "LYF",    
            "body"=> "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab tenetur placeat nulla quam consequatur perspiciatis officiis blanditiis, rem illo deserunt nam repellendus.
             Magni voluptas, molestiae modi reiciendis vel eligendi, quaerat dicta quas nihil, minus enim possimus aspernatur sapiente voluptatibus mollitia ex error asperiores laborum labore debitis impedit suscipit nobis maiores aut. Atque ea quae quisquam blanditiis sunt veritatis recusandae ut ipsa, ipsam necessitatibus. Hic natus maxime architecto debitis sapiente rem ipsa facere voluptates quae omnis non
             possimus sint, tenetur et, repellendus placeat beatae fugit fuga saepe earum aperiam fugiat optio."
        ]
        ];

        $new_post= [];
        foreach( $blog_posts as $post ) {  
            if( $post["slug"] == $slug ) {
                $new_post = $post;
            }
         }

    return view('posts', [
        'title'=> "Single Post",
        "posts"=> $new_post
    ]);
});
