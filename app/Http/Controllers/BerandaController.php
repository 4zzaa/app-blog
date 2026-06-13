<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use App\Models\KategoriArtikel;

class BerandaController extends Controller
{
    public function index()
    {
        $topArticles = Artikel::with('penulis', 'kategori')
            ->orderBy('id', 'desc')
            ->take(5)
            ->get();

        $categories = KategoriArtikel::withCount('artikel')
            ->orderBy('nama_kategori', 'asc')
            ->get();

        return view('blog.index', compact('topArticles', 'categories'));
    }

    public function show($id)
    {
        $artikel = Artikel::with('penulis', 'kategori')->findOrFail($id);

        $categories = KategoriArtikel::withCount('artikel')
            ->orderBy('nama_kategori', 'asc')
            ->get();

        return view('blog.show', compact('artikel', 'categories'));
    }
}
