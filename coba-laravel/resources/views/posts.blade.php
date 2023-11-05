@extends('layout.main')

@section('container')
<article>
    <p>By . Nakama in <a href="/categories/{{$posts->category->slug}}">{{$posts->category->name}}</a></p>
<h2>{{$posts-> title }}</h2>
{!! $posts-> body!!}
</article>
<a href="/post">Back to posts</a>
@endsection