<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="inicio" class="pt-16 pb-20 md:pt-24 md:pb-28">
    <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 md:gap-16 items-center">

            <!-- Texto -->
            <div class="reveal space-y-6">
                <p class="text-xs font-medium uppercase tracking-[0.2em] text-sky-600">
                    Tecnología &amp; Estilo Visual
                </p>
                <h1 class="text-4xl md:text-5xl font-semibold tracking-tight text-slate-900 leading-[1.1]">
                    Claridad y estilo para cada mirada
                </h1>
                <p class="text-lg text-slate-500 leading-relaxed max-w-md">
                    Encuentra el aro ideal que define tu personalidad y protege tu vista con cristales graduados de alta precisión.
                </p>

                <div class="flex items-center gap-6 pt-2">
                    <a href="#catalogo" class="inline-flex items-center bg-sky-600 hover:bg-sky-700 text-white text-sm font-medium px-6 py-3 rounded-full transition-colors">
                        Ver Catálogo
                    </a>
                    <a href="login.jsp" class="text-sm font-medium text-slate-600 hover:text-sky-600 transition-colors">
                        Iniciar Sesión &rarr;
                    </a>
                </div>

                <dl class="grid grid-cols-2 gap-6 pt-8 border-t border-slate-200 max-w-xs">
                    <div>
                        <dd class="text-2xl font-semibold text-slate-900">+500</dd>
                        <dt class="text-xs text-slate-400 mt-0.5">Modelos</dt>
                    </div>
                    <div>
                        <dd class="text-2xl font-semibold text-slate-900">100%</dd>
                        <dt class="text-xs text-slate-400 mt-0.5">Garantía</dt>
                    </div>
                </dl>
            </div>

            <!-- Imagen -->
            <div class="reveal" style="transition-delay: 120ms;">
                <img src="https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&amp;fit=crop&amp;w=1000&amp;q=80"
                     alt="Persona con lentes graduados"
                     class="w-full h-[380px] md:h-[480px] object-cover rounded-3xl"
                     style="object-position: center 25%;">
            </div>

        </div>
    </div>
</section>
