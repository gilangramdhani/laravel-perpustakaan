@extends('layouts.master')

@section('sidebar')
@include('part.sidebar')
@endsection

@section('topbar')
@include('part.topbar')
@endsection

@section('judul')
<h1 class="text-primary">Edit Buku</h1>
@endsection

@section('content')
<div class="card mb-4">
    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold text-primary">Form Edit Buku</h6>
    </div>
    <div class="card-body">
        <form action="{{ route('buku.update', $buku['id']) }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="form-group mb-3">
                <label for="judul" class="text-primary font-weight-bold">Judul Buku</label>
                <input type="text" name="judul" class="form-control" value="{{ old('judul', $buku['judul']) }}">
                @error('judul')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group mb-3">
                <label for="kode_buku" class="text-primary font-weight-bold">Kode Buku</label>
                <input type="text" name="kode_buku" class="form-control" value="{{ old('kode_buku', $buku['kode_buku']) }}">
                @error('kode_buku')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group mb-3">
                <label for="kategori" class="text-primary font-weight-bold">Kategori</label>
                <select class="form-control" name="kategori_buku[]" id="multiselect" multiple="multiple">
                    @foreach ($kategori as $item)
                    <option value="{{ $item->id }}" @if(in_array($item->id, old('kategori_buku', array_column($buku['kategori_buku'], 'id')))) selected @endif>{{ $item->nama }}</option>
                    @endforeach
                </select>
                @error('kategori_buku')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group mb-3">
                <label for="pengarang" class="text-primary font-weight-bold">Pengarang</label>
                <input type="text" name="pengarang" class="form-control" value="{{ old('pengarang', $buku['pengarang']) }}">
                @error('pengarang')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group mb-3">
                <label for="penerbit" class="text-primary font-weight-bold">Penerbit</label>
                <input type="text" name="penerbit" class="form-control" value="{{ old('penerbit', $buku['penerbit']) }}">
                @error('penerbit')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group mb-3">
                <label for="tahun_terbit" class="text-primary font-weight-bold">Tahun Terbit</label>
                <input type="text" name="tahun_terbit" class="form-control" value="{{ old('tahun_terbit', $buku['tahun_terbit']) }}">
                @error('tahun_terbit')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group mb-3">
                <label for="deskripsi" class="text-primary font-weight-bold">Deskripsi</label>
                <textarea class="form-control" name="deskripsi" rows="2">{{ old('deskripsi', $buku['deskripsi']) }}</textarea>
                @error('deskripsi')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group mb-3">
                <label for="gambar" class="text-primary font-weight-bold">URL Gambar</label>
                <input type="text" name="gambar" class="form-control" value="{{ old('gambar', $buku['gambar']) }}">
                @error('gambar')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="d-flex justify-content-end">
                <a href="/buku" class="btn btn-danger mx-2">Kembali</a>
                <button type="submit" class="btn btn-primary px-3">Simpan</button>
            </div>
        </form>
    </div>
</div>

<script>
$('#multiselect').select2({
    allowClear: true
});
</script>
@endsection