@extends('layouts.blog')

@section('title', 'Beranda - Blog Kami')
@section('meta_description', 'Baca 5 artikel terbaru seputar teknologi, politik, dan informasi menarik lainnya di Blog Kami.')

@section('content')
    {{-- ========== HERO SECTION ========== --}}
    <section class="bg-gradient-to-br from-slate-900 via-slate-800 to-emerald-900 text-white py-16 sm:py-20">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h2 class="text-3xl sm:text-4xl lg:text-5xl font-extrabold tracking-tight mb-4">
                Selamat Datang di <span class="text-transparent bg-clip-text bg-gradient-to-r from-emerald-400 to-teal-300">Blog Kami</span>
            </h2>
            <p class="text-slate-300 text-base sm:text-lg max-w-2xl mx-auto leading-relaxed">
                Temukan artikel terbaru seputar teknologi, politik, dan berbagai topik menarik lainnya.
            </p>
        </div>
    </section>

    {{-- ========== MAIN CONTENT AREA ========== --}}
    <section class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-10 sm:py-14">
        <div class="flex flex-col lg:flex-row gap-8">

            {{-- ===== LEFT: TOP 5 ARTICLES (75%) ===== --}}
            <div class="w-full lg:w-3/4">
                <div class="flex items-center gap-3 mb-8">
                    <div class="w-1 h-8 bg-emerald-500 rounded-full"></div>
                    <h3 class="text-slate-800 text-xl font-bold">5 Artikel Teratas</h3>
                </div>

                @php
                    $renderedCategories = [];
                @endphp
                @forelse($topArticles as $article)
                    @php
                        $categoryId = $article->kategori->id ?? null;
                        $idAttribute = '';
                        if ($categoryId && !in_array($categoryId, $renderedCategories)) {
                            $idAttribute = 'id="kategori-' . $categoryId . '"';
                            $renderedCategories[] = $categoryId;
                        }
                    @endphp
                    <article {!! $idAttribute !!} class="bg-white rounded-xl shadow-sm overflow-hidden mb-6 group hover:shadow-md transition-shadow duration-300 border border-slate-100 scroll-mt-24">
                        <div class="flex flex-col sm:flex-row">
                            {{-- Article Image --}}
                            <div class="sm:w-72 sm:flex-shrink-0">
                                <a href="{{ route('blog.show', $article->id) }}" class="block aspect-video sm:aspect-auto sm:h-full overflow-hidden">
                                    <img src="{{ asset('storage/gambar/' . $article->gambar) }}" 
                                         alt="{{ $article->judul }}" 
                                         class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
                                </a>
                            </div>

                            {{-- Article Content --}}
                            <div class="flex-1 p-5 sm:p-6 flex flex-col justify-between">
                                <div>
                                    {{-- Category Badge --}}
                                    <span class="inline-block bg-sky-100 text-sky-600 px-3 py-1 rounded-full text-xs font-bold mb-3 uppercase tracking-wider">
                                        {{ $article->kategori->nama_kategori ?? 'Umum' }}
                                    </span>

                                    {{-- Title --}}
                                    <h4 class="text-slate-800 text-lg sm:text-xl font-bold mb-2 group-hover:text-emerald-600 transition-colors duration-200 line-clamp-2">
                                        <a href="{{ route('blog.show', $article->id) }}">{{ $article->judul }}</a>
                                    </h4>

                                    {{-- Author & Date Meta --}}
                                    <div class="flex items-center gap-3 mb-3">
                                        <img src="{{ asset('storage/foto/' . ($article->penulis->foto ?? 'default.png')) }}" 
                                             alt="{{ $article->penulis->nama_depan ?? 'Penulis' }}" 
                                             class="w-7 h-7 rounded-full object-cover border border-slate-200">
                                        <div class="flex items-center gap-2 text-slate-500 text-sm">
                                            <span class="font-medium text-slate-600">{{ $article->penulis->nama_depan ?? '' }} {{ $article->penulis->nama_belakang ?? '' }}</span>
                                            <span class="text-slate-300">•</span>
                                            <span>{{ $article->hari_tanggal }}</span>
                                        </div>
                                    </div>

                                    {{-- Excerpt --}}
                                    <p class="text-slate-600 text-sm leading-relaxed line-clamp-2 mb-4">
                                        {{ Str::limit(strip_tags($article->isi), 180) }}
                                    </p>
                                </div>

                                {{-- Read More Button --}}
                                <div>
                                    <a href="{{ route('blog.show', $article->id) }}" class="inline-flex items-center gap-2 bg-emerald-500 hover:bg-emerald-600 text-white rounded-full px-6 py-2 text-sm font-semibold transition-all duration-200 hover:shadow-lg hover:shadow-emerald-500/25 active:scale-95">
                                        Baca Selengkapnya
                                        <svg class="w-4 h-4 group-hover:translate-x-0.5 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"/>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </article>
                @empty
                    <div class="bg-white rounded-xl shadow-sm p-12 text-center border border-slate-100">
                        <div class="w-16 h-16 bg-slate-100 rounded-full flex items-center justify-center mx-auto mb-4">
                            <i class="fas fa-newspaper text-2xl text-slate-400"></i>
                        </div>
                        <h4 class="text-slate-700 font-semibold text-lg mb-2">Belum Ada Artikel</h4>
                        <p class="text-slate-500 text-sm">Artikel akan segera ditambahkan. Kunjungi kembali nanti!</p>
                    </div>
                @endforelse
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
                            <a href="#kategori-{{ $category->id }}" class="flex items-center justify-between px-3.5 py-2.5 rounded-lg text-sm font-medium transition-all duration-200 group/cat
                                {{ $loop->first ? 'bg-emerald-50 text-emerald-700' : 'text-slate-600 hover:bg-slate-50 hover:text-slate-800' }}">
                                <div class="flex items-center gap-2.5">
                                    <i class="fas fa-tag text-xs {{ $loop->first ? 'text-emerald-500' : 'text-slate-400 group-hover/cat:text-slate-500' }}"></i>
                                    <span>{{ $category->nama_kategori }}</span>
                                </div>
                                <span class="w-6 h-6 flex items-center justify-center rounded-full text-xs font-bold
                                    {{ $loop->first ? 'bg-emerald-500 text-white' : 'bg-slate-200 text-slate-600 group-hover/cat:bg-slate-300' }}">
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
