<?php

namespace App\Http\Controllers;

use App\Models\Profile;
use App\Models\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;
use GuzzleHttp\Client;

class BukuController extends Controller
{
    private $client;

    public function __construct()
    {
        $this->client = new Client(['base_uri' => 'https://secure-starling-delicate.ngrok-free.app/']);
    }

    public function index()
    {
        $response = $this->client->get('buku');
        $buku = json_decode($response->getBody()->getContents(), true);

        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();

        return view('buku.tampil', compact('buku', 'profile'));
    }

    public function create()
    {
        $kategori = Kategori::all();
        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();

        return view('buku.tambah', ['profile' => $profile, 'kategori' => $kategori]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'judul' => 'required',
            'kode_buku' => 'required|unique:buku',
            'kategori_buku' => 'required',
            'pengarang' => 'required',
            'penerbit' => 'required',
            'tahun_terbit' => 'required',
            'deskripsi' => 'required',
            'gambar' => 'required|url',
        ], [
            'judul.required' => 'Judul tidak boleh kosong',
            'kode_buku.required' => 'Kode Buku tidak boleh kosong',
            'kode_buku.unique' => 'Kode Buku telah tersedia',
            'kategori_buku.required' => 'Harap masukkan kategori',
            'pengarang.required' => 'Pengarang tidak boleh kosong',
            'penerbit.required' => 'Penerbit tidak boleh kosong',
            'tahun_terbit.required' => 'Harap isi tahun terbit',
            'deskripsi.required' => 'Deskripsi tidak boleh kosong',
            'gambar.required' => 'Gambar tidak boleh kosong',
            'gambar.url' => 'Gambar harus berupa URL yang valid',
        ]);

        $response = $this->client->post('buku', [
            'json' => $request->all(),
        ]);

        Alert::success('Berhasil', 'Berhasil Menambahkan Data Buku');
        return redirect('/buku');
    }

    public function show($id)
    {
        $response = $this->client->get("buku/{$id}");
        $buku = json_decode($response->getBody()->getContents(), true);
    
        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();
    
        return view('buku.detail', ['buku' => $buku, 'profile' => $profile]);
    }

    public function edit($id)
    {
        $response = $this->client->get("buku/{$id}");
        $buku = json_decode($response->getBody()->getContents(), true); // Menghasilkan array asosiatif
    
        // Pastikan semua kunci yang diperlukan ada dan berikan nilai default jika tidak ada
        $buku = array_merge([
            'kode_buku' => '',
            'judul' => '',
            'kategori_buku' => [],
            'pengarang' => '',
            'penerbit' => '',
            'tahun_terbit' => '',
            'deskripsi' => '',
            'gambar' => ''
        ], $buku);
    
        $iduser = Auth::id();
        $kategori = Kategori::all();
        $profile = Profile::where('users_id', $iduser)->first();
    
        return view('buku.edit', compact('buku', 'profile', 'kategori'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'judul' => 'required',
            'pengarang' => 'required',
            'penerbit' => 'required',
            'tahun_terbit' => 'required',
            'deskripsi' => 'required',
            'gambar' => 'required|url',
        ], [
            'judul.required' => 'Judul tidak boleh kosong',
            'pengarang.required' => 'Pengarang tidak boleh kosong',
            'penerbit.required' => 'Penerbit tidak boleh kosong',
            'tahun_terbit.required' => 'Harap isi tahun terbit',
            'deskripsi.required' => 'Deskripsi tidak boleh kosong',
            'gambar.required' => 'Gambar tidak boleh kosong',
            'gambar.url' => 'Gambar harus berupa URL yang valid',
        ]);

        $response = $this->client->put("buku/{$id}", [
            'json' => $request->all(),
        ]);

        Alert::success('Berhasil', 'Update Berhasil');
        return redirect('/buku');
    }

    public function destroy($id)
    {
        $response = $this->client->delete("buku/{$id}");

        Alert::success('Berhasil', 'Buku Berhasil Terhapus');
        return redirect('buku');
    }
}