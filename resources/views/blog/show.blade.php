@extends('layouts.blog')

@section('title', $artikel->judul . ' - Blog Kami')
@section('meta_description', Str::limit(strip_tags($artikel->isi), 150))

@section('content')
    {{-- ========== BREADCRUMB & BACK BUTTON ========== --}}
    <section class="bg-slate-900 text-white py-8 border-t border-slate-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
                <a href="{{ route('beranda') }}" class="inline-flex items-center gap-2 text-slate-300 hover:text-emerald-400 transition-colors text-sm font-semibold group">
                    <svg class="w-5 h-5 group-hover:-translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"/>
                    </svg>
                    Kembali ke Beranda
                </a>
                <div class="text-slate-400 text-xs sm:text-sm">
                    <span>Beranda</span> <i class="fas fa-chevron-right mx-2 text-xs text-slate-600"></i> <span class="text-emerald-400 font-medium">Detail Artikel</span>
                </div>
            </div>
        </div>
    </section>

    {{-- ========== MAIN CONTENT AREA ========== --}}
    <section class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-10 sm:py-14">
        <div class="flex flex-col lg:flex-row gap-8">

            {{-- ===== LEFT: ARTICLE DETAIL (75%) ===== --}}
            <div class="w-full lg:w-3/4">
                <article class="bg-white rounded-xl shadow-sm border border-slate-100 overflow-hidden">
                    {{-- Article Image --}}
                    @if($artikel->gambar)
                        <div class="aspect-video w-full overflow-hidden border-b border-slate-100">
                            <img src="{{ asset('storage/gambar/' . $artikel->gambar) }}" 
                                 alt="{{ $artikel->judul }}" 
                                 class="w-full h-full object-cover">
                        </div>
                    @endif

                    <div class="p-6 sm:p-8">
                        {{-- Category Badge --}}
                        <span class="inline-block bg-sky-100 text-sky-600 px-3 py-1 rounded-full text-xs font-bold mb-4 uppercase tracking-wider">
                            {{ $artikel->kategori->nama_kategori ?? 'Umum' }}
                        </span>

                        {{-- Title --}}
                        <h2 class="text-2xl sm:text-3xl lg:text-4xl font-extrabold text-slate-900 leading-tight mb-4">
                            {{ $artikel->judul }}
                        </h2>

                        {{-- Author & Date Meta --}}
                        <div class="flex items-center gap-4 mb-6 pb-6 border-b border-slate-100">
                            <img src="{{ asset('storage/foto/' . ($artikel->penulis->foto ?? 'default.png')) }}" 
                                 alt="{{ $artikel->penulis->nama_depan ?? 'Penulis' }}" 
                                 class="w-10 h-10 rounded-full object-cover border border-slate-200">
                            <div>
                                <div class="text-slate-800 font-semibold text-sm">
                                    {{ $artikel->penulis->nama_depan ?? '' }} {{ $artikel->penulis->nama_belakang ?? '' }}
                                </div>
                                <div class="text-slate-500 text-xs">
                                    Dipublikasikan pada {{ $artikel->hari_tanggal }}
                                </div>
                            </div>
                        </div>

                        {{-- Article Content --}}
                        <div class="prose prose-slate max-w-none text-slate-700 leading-relaxed text-base sm:text-lg">
                            {!! nl2br(e($artikel->isi)) !!}
                        </div>
                    </div>
                </article>
            </div>

            {{-- ===== RIGHT: SIDEBAR (25%) ===== --}}
            <aside class="w-full lg:w-1/4">
                {{-- Category Widget --}}
                <div class="bg-white p-6 rounded-xl shadow-sm border border-slate-100 sticky top-24">
                    <div class="flex items-center gap-3 mb-5">
                        <div class="w-8 h-8 bg-emerald-100 rounded-lg flex items-center justify-center">
                            <i class="fas fa-folder-open text-emerald-600 text-sm"></i>
                        </div>
                        <h4 class="text-slate-800 font-bold text-base">Kategori Artikel</h4>
                    </div>

                    <div class="space-y-1.5">
                        @forelse($categories as $category)
                            <a href="{{ route('beranda') }}#kategori-{{ $category->id }}" class="flex items-center justify-between px-3.5 py-2.5 rounded-lg text-sm font-medium transition-all duration-200 group/cat
                                {{ $category->id === ($artikel->id_kategori ?? null) ? 'bg-emerald-50 text-emerald-700' : 'text-slate-600 hover:bg-slate-50 hover:text-slate-800' }}">
                                <div class="flex items-center gap-2.5">
                                    <i class="fas fa-tag text-xs {{ $category->id === ($artikel->id_kategori ?? null) ? 'text-emerald-500' : 'text-slate-400 group-hover/cat:text-slate-500' }}"></i>
                                    <span>{{ $category->nama_kategori }}</span>
                                </div>
                                <span class="w-6 h-6 flex items-center justify-center rounded-full text-xs font-bold
                                    {{ $category->id === ($artikel->id_kategori ?? null) ? 'bg-emerald-500 text-white' : 'bg-slate-200 text-slate-600 group-hover/cat:bg-slate-300' }}">
                                    {{ $category->artikel_count }}
                                </span>
                            </a>
                        @empty
                            <p class="text-slate-500 text-sm text-center py-4 italic">Belum ada kategori.</p>
                        @endforelse
                    </div>
                </div>
            </aside>
        </div>
    </section>
@endsection
