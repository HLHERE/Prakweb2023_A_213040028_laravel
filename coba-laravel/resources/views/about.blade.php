@extends('layout.main')

@section('container')
    <h1>halaman about</h1>
    <!-- <h3>Moch haykal alvegio hadian</h3>
    <p>haykal@gmail.com</p>
    <img src="img/HL.jpg" alt="Moch Haykal" width="200"> -->
    <h3>{{ $name }}</h3>
    <p>{{ $email }}</p>
    <img src="img/{{ $image }}" alt="{{ $name }}" width="200" class="img-thumbnail rounded-circle">

    <script src = "js/script.js" ></script>
    
    @endsection