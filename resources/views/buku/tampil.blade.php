@extends('layouts.master')

@section('sidebar')
@include('part.sidebar')
@endsection

@section('topbar')
@include('part.topbar')
@endsection

@section('judul')
<h1 class="text-primary">Daftar Buku</h1>
@endsection

@section('content')
@if (Auth::user()->isAdmin == 1)
<a href="/buku/create" class="btn btn-info mb-3">Tambah Buku</a>
@endif

<form class="navbar-search mb-3" action="/buku" method="GET">
    <div class="input-group">
        <input type="search" name="search" class="form-control bg-light border-1 small" placeholder="Cari Judul Buku"
            aria-label="Search" aria-describedby="basic-addon2" style="border-color: #3f51b5;">
        <div class="input-group-append">
            <button class="btn btn-primary" type="submit">
                <i class="fas fa-search fa-sm"></i>
            </button>
        </div>
    </div>
</form>

<div class="card container-fluid mb-3">

    <div class="row d-flex flex-wrap justify-content-center">

        @forelse ($buku as $item)
        <div class="col-auto my-2" style="width:18rem;">
            <div class="card mx-2 my-2" style="min-height:28rem;">
                @if (isset($item['gambar']) && $item['gambar'] != null)
                <img class="card-img-top" style="max-height:180px;" src="{{ $item['gambar'] }}">
                @else
                <img class="card-img-top" style="height:200px;" src="{{ asset('default.jpg') }}">
                @endif
                <div class="card-body d-flex flex-column justify-content-between">
                    <div class="detai-buku">
                        @if (isset($item['judul']))
                        <h5 class="card-title text-primary"><a href="{{ route('buku.show', $item['id']) }}"
                                style="text-decoration: none; font-size:1rem;font-weight:bold;">
                                {{ $item['judul'] }}</a></h5>
                        @endif

                        @if (isset($item['kode_buku']))
                        <p class="cart-text m-0">Kode Buku : {{ $item['kode_buku'] }}</p>
                        @endif

                        @if (isset($item['pengarang']))
                        <p class="card-text m-0">Pengarang : <a href="#"
                                style="text-decoration: none;">{{ $item['pengarang'] }}</a></p>
                        @endif

                        <p class="card-text m-0">Kategori : </p>
                        <p class="text-primary">
                            @if (isset($item['kategori_buku']))
                            @foreach ($item['kategori_buku'] as $kategori )
                            {{ $kategori['nama'] }},
                            @endforeach
                            @endif
                        </p>

                        @if (isset($item['tahun_terbit']))
                        <p class="card-text m-0">Tahun Terbit : {{ $item['tahun_terbit'] }}</p>
                        @endif

                        @if (isset($item['deskripsi']))
                        <p class="card-text m-0"><span class="d-inline-block text-truncate" style="max-width: 150px;">
                                {{ $item['deskripsi'] }}
                        </p>
                        @endif
                    </div>
                    <div class="footer-buku">
                        <div class="d-flex justify-content-between align-items-center flex-wrap mt-3">
                            <small class="text-muted">Last updated 3 mins ago</small>
                            @if (Auth::user()->isAdmin == 1)
                            <form action="/buku/{{ $item['id'] }}" method="post">
                                @csrf
                                @method('DELETE')
                                <a href="/buku/{{ $item['id'] }}/edit" class="btn btn-outline-info btn-sm my-1">Edit</a>
                                <a href="{{ route('buku.show', $item['id']) }}" class="btn btn-outline-info btn-sm my-1">Detail</a>
                                <button class="btn btn-outline-danger btn-sm my-1"
                                    onclick="return confirm('Apakah Anda Yakin Menghapus Data Ini?')">Hapus</button>
                            </form>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @empty
        <p>Buku Tidak Ditemukan</p>
        @endforelse
    </div>

    <div class="d-flex justify-content-center mt-4">
        {{-- Pagination --}}
    </div>
</div>
@endsection