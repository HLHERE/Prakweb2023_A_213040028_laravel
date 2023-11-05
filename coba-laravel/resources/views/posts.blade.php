@extends('layout.main')

@section('container')
<article>
    <p>By . <a href="#" class = "text-decoration-none">{{$posts->user->name}}</a> <a href="/categories/{{$posts->category->slug}}" class = "text-decoration-none">{{$posts->category->name}}</a></p>
<h2>{{$posts-> title }}</h2>
{!! $posts-> body!!}
</article>
<a href="/post" class = "d-block mt-3">Back to posts</a>
@endsection