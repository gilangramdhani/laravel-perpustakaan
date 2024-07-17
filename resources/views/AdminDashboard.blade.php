@extends('layouts.master')

@section('sidebar')
    @include('part.sidebar')
@endsection

@section('topbar')
    @include('part.topbar')
@endsection

@section('judul')
    <h1 class="text-primary">Dashboard</h1>
@endsection

@push('styles')
    <link rel="stylesheet" type="text/css"
          href="https://cdn.datatables.net/v/bs4/dt-1.12.1/date-1.1.2/fc-4.1.0/r-2.3.0/sc-2.0.7/datatables.min.css" />
@endpush

@section('content')
    <div class="row mb-3">
        <!-- Jumlah Buku Card -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card h-100 bg-gradient-primary">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <div class="text-sm font-weight-bold text-uppercase mb-1 text-light">Jumlah Buku</div>
                            <div class="text-sm text-light h5 mb-0 font-weight-bold">{{ $buku }}</div>
                            <div class="button mt-2"><a href="/buku" class="text-light">Lihat</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fa-solid fa-book fa-3x text-light"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Kategori Card -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card h-100 bg-gradient-info">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <div class="text-sm text-light font-weight-bold text-uppercase mb-1">Kategori</div>
                            <div class="text-sm text-light h5 mb-0 font-weight-bold">{{ $kategori }}</div>
                            <div class="button mt-2"><a href="/kategori" class="text-light">Lihat</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fa-solid fa-bookmark fa-3x text-light"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Anggota Card -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card h-100 bg-gradient-success">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <div class="text-sm text-light font-weight-bold text-uppercase mb-1">Anggota</div>
                            <div class="h5 mb-0 font-weight-bold text-light">{{ $user }}</div>
                            <div class="button mt-2"><a href="/anggota" class="text-light">Lihat</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-users fa-3x text-light"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Riwayat Peminjaman Card -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card h-100 bg-gradient-danger">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <div class="text-sm text-light font-weight-bold text-uppercase mb-1">Riwayat Peminjaman</div>
                            <div class="h5 mb-0 font-weight-bold text-light">{{ $jumlah_riwayat }}</div>
                            <div class="button mt-2"><a href="#" class="text-light">Lihat</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user-tie fa-3x text-light"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Riwayat Peminjaman Table-->
    <div class="row">
        <div class="col-lg-12">
            <div class="card mb-4">
                <div class="card-header">
                    <h1 class="text-primary">Riwayat Peminjaman</h1>
                </div>
                <div class="table-responsive p-3">
                    <table class="table align-items-center justify-content-center table-flush table-hover" id="dataTableHover">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">No.</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Judul Buku</th>
                                <th scope="col">Kode Buku</th>
                                <th scope="col">Tanggal Pinjam</th>
                                <th scope="col">Tanggal Wajib Pengembalian</th>
                                <th scope="col">Tanggal Pengembalian</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($riwayat_pinjam as $item)
                                <tr>
                                    <th scope="row">{{ $loop->iteration }}</th>
                                    <td>{{ $item->user->name }}</td>
                                    <td>{{ $item->buku->judul }}</td>
                                    <td>{{ $item->buku->kode_buku }}</td>
                                    <td>{{ $item->tanggal_pinjam }}</td>
                                    <td>{{ $item->tanggal_wajib_kembali }}</td>
                                    <td>{{ $item->tanggal_pengembalian }}</td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="7" class="text-center">Tidak ada data</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script src="{{ '/template/vendor/datatables/jquery.dataTables.min.js' }}"></script>
    <script src="{{ '/template/vendor/datatables/dataTables.bootstrap4.min.js' }}"></script>

    <script>
        $(document).ready(function() {
            $('#dataTable').DataTable(); // ID From dataTable
            $('#dataTableHover').DataTable(); // ID From dataTable with Hover
        });
    </script>
@endpush
