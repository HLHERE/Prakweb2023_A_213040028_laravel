<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
       

        // User::create([
        //     "name"=> "Monkey D Luffy",
        //     "email"=> "Monkey@gmail.com",
        //     "password"=> bcrypt("12345"),
        // ]);
        // User::create([
        //     "name"=> "Roronoa Zoro",
        //     "email"=> "Enma@gmail.com",
        //     "password"=> bcrypt("12345678"),
        // ]);


        User::factory(3)->create();

        Category::create([ 
            "name"=> "Web Programming",
            "slug"=> 'web-programming',
        ]); 
        Category::create([ 
            "name"=> "Web Design",
            "slug"=> 'web-design',
        ]); 
        Category::create([
            'name'=> 'Personal',
            'slug'=> 'personal',
        ]);

        Post::factory(10)->create();



        // Post::create([
        //     'title' =>'Judul Pertama',
        //     'slug'=> 'judul-pertama',
        //     'excerpt'=> 'Lorem ipsum ke Pertama',
        //     'body'=> 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo aspernatur similique, aliquam iusto debitis fuga dolorem eos,
        //     unde vero rem, dolores eveniet exercitationem suscipit velit quidem voluptate tenetur voluptas? Adipisci vero temporibus odio voluptatum! Totam aperiam facere repellat
        //     dolorem eligendi tenetur nam nisi est ipsam labore!</p><p>Molestias eos saepe quod tenetur placeat molestiae, nostrum odio nam veniam doloribus nisi ex adipisci repellat
        //     a aspernatur error! Officiis sunt autem atque maxime qui. Commodi adipisci recusandae, ad, ab molestias quasi non eos autem voluptatum deleniti laudantium ullam reprehenderit culpa aperiam.
        //     Provident quia neque, repellendus praesentium placeat assumenda asperiores maxime vero quae,</p><p>sit ut accusamus ducimus quaerat voluptatum beatae animi aliquid cum quibusdam laborum. Optio quo quae aut perferendis et voluptatum sequi qui facere? Alias corporis sed ipsa natus at blanditiis nihil dignissimos officiis nemo nostrum impedit voluptas doloremque fuga repellendus tempora perferendis,
        //     non eum, unde vel. Accusantium tenetur totam temporibus at alias.',
        //     'category_id'=> '1',
        //     'user_id'=>'1'    
        // ]);
        // Post::create([
        //     'title' =>'Judul Kedua',
        //     'slug'=> 'judul-kedua',
        //     'excerpt'=> 'Lorem ipsum ke kedua',
        //     'body'=> 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo aspernatur similique, aliquam iusto debitis fuga dolorem eos,
        //     unde vero rem, dolores eveniet exercitationem suscipit velit quidem voluptate tenetur voluptas? Adipisci vero temporibus odio voluptatum! Totam aperiam facere repellat
        //     dolorem eligendi tenetur nam nisi est ipsam labore!</p><p>Molestias eos saepe quod tenetur placeat molestiae, nostrum odio nam veniam doloribus nisi ex adipisci repellat
        //     a aspernatur error! Officiis sunt autem atque maxime qui. Commodi adipisci recusandae, ad, ab molestias quasi non eos autem voluptatum deleniti laudantium ullam reprehenderit culpa aperiam.
        //     Provident quia neque, repellendus praesentium placeat assumenda asperiores maxime vero quae,</p><p>sit ut accusamus ducimus quaerat voluptatum beatae animi aliquid cum quibusdam laborum. Optio quo quae aut perferendis et voluptatum sequi qui facere? Alias corporis sed ipsa natus at blanditiis nihil dignissimos officiis nemo nostrum impedit voluptas doloremque fuga repellendus tempora perferendis,
        //     non eum, unde vel. Accusantium tenetur totam temporibus at alias.',
        //     'category_id'=> '1',
        //     'user_id'=>'1'    
        // ]);
        // Post::create([
        //     'title' =>'Judul Ketiga',
        //     'slug'=> 'judul-ketiga',
        //     'excerpt'=> 'Lorem ipsum ke Ketiga',
        //     'body'=> 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo aspernatur similique, aliquam iusto debitis fuga dolorem eos,
        //     unde vero rem, dolores eveniet exercitationem suscipit velit quidem voluptate tenetur voluptas? Adipisci vero temporibus odio voluptatum! Totam aperiam facere repellat
        //     dolorem eligendi tenetur nam nisi est ipsam labore!</p><p>Molestias eos saepe quod tenetur placeat molestiae, nostrum odio nam veniam doloribus nisi ex adipisci repellat
        //     a aspernatur error! Officiis sunt autem atque maxime qui. Commodi adipisci recusandae, ad, ab molestias quasi non eos autem voluptatum deleniti laudantium ullam reprehenderit culpa aperiam.
        //     Provident quia neque, repellendus praesentium placeat assumenda asperiores maxime vero quae,</p><p>sit ut accusamus ducimus quaerat voluptatum beatae animi aliquid cum quibusdam laborum. Optio quo quae aut perferendis et voluptatum sequi qui facere? Alias corporis sed ipsa natus at blanditiis nihil dignissimos officiis nemo nostrum impedit voluptas doloremque fuga repellendus tempora perferendis,
        //     non eum, unde vel. Accusantium tenetur totam temporibus at alias.',
        //     'category_id'=> '2',
        //     'user_id'=>'1'    
        // ]);
        // Post::create([
        //     'title' =>'Judul Keempat',
        //     'slug'=> 'judul-keempat',
        //     'excerpt'=> 'Lorem ipsum ke Keempat',
        //     'body'=> 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo aspernatur similique, aliquam iusto debitis fuga dolorem eos,
        //     unde vero rem, dolores eveniet exercitationem suscipit velit quidem voluptate tenetur voluptas? Adipisci vero temporibus odio voluptatum! Totam aperiam facere repellat
        //     dolorem eligendi tenetur nam nisi est ipsam labore!</p><p>Molestias eos saepe quod tenetur placeat molestiae, nostrum odio nam veniam doloribus nisi ex adipisci repellat
        //     a aspernatur error! Officiis sunt autem atque maxime qui. Commodi adipisci recusandae, ad, ab molestias quasi non eos autem voluptatum deleniti laudantium ullam reprehenderit culpa aperiam.
        //     Provident quia neque, repellendus praesentium placeat assumenda asperiores maxime vero quae,</p><p>sit ut accusamus ducimus quaerat voluptatum beatae animi aliquid cum quibusdam laborum. Optio quo quae aut perferendis et voluptatum sequi qui facere? Alias corporis sed ipsa natus at blanditiis nihil dignissimos officiis nemo nostrum impedit voluptas doloremque fuga repellendus tempora perferendis,
        //     non eum, unde vel. Accusantium tenetur totam temporibus at alias.',
        //     'category_id'=> '2',
        //     'user_id'=>'2'    
        // ]);
    }
}
