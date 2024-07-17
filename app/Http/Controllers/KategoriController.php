<?php

namespace App\Http\Controllers;

use App\Models\Profile;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use GuzzleHttp\Client;
use RealRashid\SweetAlert\Facades\Alert;

class KategoriController extends Controller
{
    private $client;

    public function __construct()
    {
        $this->client = new Client(['base_uri' => 'https://secure-starling-delicate.ngrok-free.app']); // Sesuaikan dengan URL API Golang Anda
    }

    public function index()
    {
        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();

        $response = $this->client->get('/kategori');
        $kategori = json_decode($response->getBody()->getContents());

        return view('kategori.tampil', ['kategori' => $kategori, 'profile' => $profile]);
    }

    public function create()
    {
        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();

        return view('kategori.tambah', ['profile' => $profile]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|min:2',
        ], [
            'nama.required' => "Masukkan nama kategori",
            'nama.min' => "Minimal 2 karakter"
        ]);
    
        $response = $this->client->post('/kategori', [
            'json' => $request->all()
        ]);
    
        if ($response->getStatusCode() == 201) {
            $this->updateKategoriBuku(); // Panggil fungsi untuk update kategori di BukuController
            Alert::success('Berhasil', 'Berhasil Menambahkan Kategori');
            return redirect('/kategori');
        } else {
            Alert::error('Gagal', 'Gagal Menambahkan Kategori');
            return redirect('/kategori');
        }
    }
    
    private function updateKategoriBuku()
    {
        $bukuController = new BukuController();
        $bukuController->updateKategori(); // Panggil fungsi updateKategori di BukuController
    }
    public function show($id)
    {
        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();

        $response = $this->client->get("/kategori/{$id}");
        $kategori = json_decode($response->getBody()->getContents(), true); // Pastikan data JSON di-decode

        if (!array_key_exists('kategori_buku', $kategori)) {
            $kategori['kategori_buku'] = []; // Tambahkan array kosong jika tidak ada 'kategori_buku'
        }

        return view('kategori.detail', ['kategori' => $kategori, 'profile' => $profile]);
    }

    public function edit($id)
    {
        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();

        $response = $this->client->get("/kategori/{$id}");
        $kategori = json_decode($response->getBody()->getContents());

        return view('kategori.edit', ['kategori' => $kategori, 'profile' => $profile]);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required|min:2',
        ], [
            'nama.required' => "Masukkan nama kategori",
            'nama.min' => "Minimal 2 karakter"
        ]);

        $response = $this->client->put("/kategori/{$id}", [
            'json' => $request->all()
        ]);

        if ($response->getStatusCode() == 200) {
            Alert::success('Berhasil', 'Update Success');
            return redirect('/kategori');
        } else {
            Alert::error('Gagal', 'Gagal Mengupdate Kategori');
            return redirect('/kategori');
        }
    }

    public function destroy($id)
    {
        $response = $this->client->delete("/kategori/{$id}");

        if ($response->getStatusCode() == 200) {
            Alert::success('Berhasil', 'Berhasil Menghapus Kategori');
            return redirect('/kategori');
        } else {
            Alert::error('Gagal', 'Gagal Menghapus Kategori');
            return redirect('/kategori');
        }
    }
}