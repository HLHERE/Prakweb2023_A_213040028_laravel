@extends('layout.main')

@section('container')
<article>
<h2>{{$posts-> title }}</h2>
{!! $posts-> body!!}
</article>
<a href="/post">Back to posts</a>
@endsection