<?php

namespace App\Http\Controllers;

use App\Models\Buku;
use App\Models\User;
use App\Models\Profile;
use App\Models\Peminjaman;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;

class RiwayatPinjamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\View
     */
    public function index()
    {
        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();
        $peminjam = Peminjaman::with(['user', 'buku'])->orderBy('updated_at', 'desc')->get();
        $pinjamanUser = Peminjaman::where('users_id', $iduser)->get();
        return view('peminjaman.tampil', ['profile' => $profile, 'peminjam' => $peminjam, 'pinjamanUser' => $pinjamanUser]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\View
     */
    public function create()
    {
        $iduser = Auth::id();
        $profile = Profile::where('users_id', $iduser)->first();
        $buku = Buku::where('status', 'In Stock')->get();
        $user = User::all();

        if (Auth::user()->isAdmin == 1) {
            $peminjam = Profile::where('users_id', '>', '1')->get();
        } else {
            $peminjam = $profile;
        }

        return view('peminjaman.tambah', ['profile' => $profile, 'users' => $user, 'buku' => $buku, 'peminjam' => $peminjam]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        $request->validate([
            'users_id' => 'required',
            'buku_id' => 'required'
        ], [
            'users_id.required' => 'Harap Masukan Nama Peminjam',
            'buku_id.required' => 'Masukan Buku yang akan dipinjam'
        ]);

        $tanggal_pinjam = Carbon::now()->toDateString();
        $tanggal_wajib_kembali = Carbon::now()->addDays(7)->toDateString();

        $buku = Buku::findOrFail($request->buku_id);
        $buku->status = 'dipinjam';
        $buku->save();

        Peminjaman::create([
            'users_id' => $request->users_id,
            'buku_id' => $request->buku_id,
            'tanggal_pinjam' => $tanggal_pinjam,
            'tanggal_wajib_kembali' => $tanggal_wajib_kembali
        ]);

        Alert::success('Berhasil', 'Berhasil Meminjam Buku');
        return redirect('/peminjaman');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return void
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return void
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return void
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return void
     */
    public function destroy($id)
    {
        //
    }
}
