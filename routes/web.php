<?php

use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\BerandaController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\KategoriArtikelController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PenulisController;
use Illuminate\Support\Facades\Route;

// Route halaman beranda publik (user)
Route::get('/', [BerandaController::class, 'index'])->name('beranda');
Route::get('/artikel/{id}', [BerandaController::class, 'show'])
    ->name('blog.show')
    ->whereNumber('id');

// Route halaman login
Route::get('/login', [LoginController::class, 'index'])
    ->name('login')
    ->middleware('guest');
Route::post('/login', [LoginController::class, 'proses'])
    ->name('login.proses')
    ->middleware('guest');
// Route logout
Route::post('/logout', [LoginController::class, 'logout'])
    ->name('logout')
    ->middleware('auth');

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Route resource untuk ketiga entitas
    Route::resource('artikel', ArtikelController::class)->except(['show']);
    Route::resource('penulis', PenulisController::class)->except(['show']);
    Route::resource('kategori', KategoriArtikelController::class)->except(['show']);
});

