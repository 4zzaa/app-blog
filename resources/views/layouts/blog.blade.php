<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Blog Kami')</title>
    <meta name="description" content="@yield('meta_description', 'Artikel terbaru seputar teknologi, politik, dan informasi menarik lainnya.')">

    {{-- Tailwind CSS via CDN --}}
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Inter', 'system-ui', '-apple-system', 'sans-serif'],
                    },
                }
            }
        }
    </script>

    {{-- Google Font: Inter --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    {{-- FontAwesome Icons --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        html { scroll-behavior: smooth; }
        body { font-family: 'Inter', sans-serif; }
        .line-clamp-2 {
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .line-clamp-3 {
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
    </style>

    @stack('styles')
</head>
<body class="bg-slate-50 min-h-screen flex flex-col">

    {{-- ========== HEADER / NAVIGATION ========== --}}
    <header class="bg-slate-900 sticky top-0 z-50 shadow-lg">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                {{-- Logo & Tagline --}}
                <div class="flex-shrink-0">
                    <a href="{{ route('beranda') }}" class="group">
                        <h1 class="text-white text-2xl font-bold tracking-tight group-hover:text-emerald-400 transition-colors duration-200">
                            Blog Kami
                        </h1>
                        <p class="text-slate-400 text-xs -mt-0.5">Artikel update setiap hari seputar teknologi & politik</p>
                    </a>
                </div>
            </div>
        </div>
    </header>

    {{-- ========== MAIN CONTENT ========== --}}
    <main class="flex-1">
        @yield('content')
    </main>

    {{-- ========== FOOTER ========== --}}
    <footer class="bg-slate-900 text-slate-400 mt-16">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
            <div class="text-center max-w-2xl mx-auto">
                {{-- About --}}
                <h3 class="text-white font-bold text-lg mb-3">Blog Kami</h3>
                <p class="text-sm leading-relaxed">Platform blog untuk berbagi artikel, tutorial, dan informasi terbaru seputar dunia teknologi dan politik.</p>
            </div>
            <div class="border-t border-slate-700/50 mt-8 pt-6 text-center text-xs text-slate-500">
                &copy; {{ date('Y') }} Blog Kami. Dibuat dengan <i class="fas fa-heart text-red-500"></i> menggunakan Laravel.
            </div>
        </div>
    </footer>

    @stack('scripts')
</body>
</html>
