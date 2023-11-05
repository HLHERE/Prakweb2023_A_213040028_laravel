
@extends('layout.main')

@section('container')
<article>
    <p>By . <a href="/authors/{{ $post->author->username}}" class = "text-decoration-none">{{$post->author->name}}</a> <a href="/categories/{{$post->category->slug}}" class = "text-decoration-none">{{$post->category->name}}</a></p>
<h2>{{$post-> title }}</h2>
{!! $post-> body!!}
</article>
<a href="/posts" class = "d-block mt-3">Back to posts</a>
@endsection
