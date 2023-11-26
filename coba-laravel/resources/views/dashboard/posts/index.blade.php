@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">My posts</h1>
</div>

@if(session()->has('success'))
<div class="alert alert-success" role="alert">
{{ session ('success')}}
</div>
@endif

<div class="table-responsive col-8">
  <a href="/dashboard/posts/create" class="btn btn-secondary mb-3">Create New Post</a>
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">title</th>
              <th scope="col">category</th>
              <th scope="col">action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($posts as $post)
            <tr>
              <td>{{$loop->iteration}}</td>
              <td>{{$post->title}}</td>
              <td>{{$post->category->name}}</td>
              <td>
                <a href="/dashboard/posts/{{$post->slug}}" class="badge bg-info"><span data-feather = "eye">see more...</span></a>
                <a href="" class="badge bg-warning"><span data-feather = "edit">edit</span></a>
                <a href="" class="badge bg-danger"><span data-feather = "x-circle"></span></a>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>

@endsection