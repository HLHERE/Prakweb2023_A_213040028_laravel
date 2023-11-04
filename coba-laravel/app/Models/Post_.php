<?php

namespace App\Models;


class Post 
{
  private static $blog_posts = [
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

   public static function all() {
    return collect (self::$blog_posts);
   }
   public static function find($slug) {  

    $posts = static::all();
         return $posts->firstWhere('slug',$slug);
   }
}
