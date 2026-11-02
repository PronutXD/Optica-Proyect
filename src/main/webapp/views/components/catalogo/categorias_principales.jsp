<%-- 
    Document   : categorias_principales
    Created on : 25 oct 2026, 9:03:44 a.m.
    Author     : User
--%>

<%-- 
    Document   : categorias_principales
    Description: Sección de Categorías Principales con fotografías inmersivas en todas las tarjetas (Estilo Bento Grid Unificado)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6 space-y-6">
    
    <!-- Encabezado de la Sección -->
    <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2 border-b border-slate-100 pb-4">
        <div>
            <span class="text-xs font-bold text-sky-600 uppercase tracking-wider">Explora por Estilo</span>
            <h3 class="text-2xl font-extrabold text-slate-900 tracking-tight mt-0.5">Categorías Principales</h3>
            <p class="text-xs text-slate-500 mt-0.5">Encuentra la montura perfecta según tus necesidades de visión y estilo de vida.</p>
        </div>
        <a href="#todos" class="text-xs font-bold text-sky-600 hover:text-sky-700 flex items-center gap-1 transition-colors self-start sm:self-auto">
            Ver catálogo completo
            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"></path></svg>
        </a>
    </div>

    <!-- Grid Bento Principal (Fila Superior) -->
    <div class="grid grid-cols-1 lg:grid-cols-12 gap-5">
        
        <!-- Tarjeta Principal 1: Gafas de Sol & Polarizados (Ocupa 7 columnas) -->
        <div class="lg:col-span-7 group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-8 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-50 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&q=80');"></div>
            <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/60 to-transparent"></div>

            <div class="relative z-10">
                <span class="px-3 py-1 bg-amber-500/20 text-amber-300 border border-amber-500/30 text-[10px] font-bold rounded-full uppercase tracking-wider backdrop-blur-md">
                    Protección UV Total
                </span>
            </div>

            <div class="relative z-10 space-y-2">
                <h4 class="text-2xl sm:text-3xl font-extrabold text-white tracking-tight">
                    Gafas de Sol & Polarizados
                </h4>
                <p class="text-xs sm:text-sm text-slate-300 max-w-md font-normal leading-relaxed">
                    Diseños de vanguardia para exteriores con cristales de máxima claridad y protección solar avanzada.
                </p>
                <div class="pt-2">
                    <button class="px-5 py-2 bg-white text-slate-900 hover:bg-sky-50 text-xs font-bold rounded-xl shadow-md transition-all flex items-center gap-2 group-hover:translate-x-1">
                        Explorar Sol
                        <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" stroke-width="2.5" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M14 5l7 7-7 7M3 12h18"></path></svg>
                    </button>
                </div>
            </div>
        </div>

        <!-- Columna Derecha (Ocupa 5 columnas - 2 tarjetas apiladas con imagen) -->
        <div class="lg:col-span-5 flex flex-col gap-5">
            
            <!-- Tarjeta 2: Protección Digital -->
            <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[150px] p-6 flex flex-col justify-between border border-slate-800 shadow-md hover:shadow-lg transition-all duration-300 flex-1">
                <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                     style="background-image: url('https://images.unsplash.com/photo-1591076482161-42ce6da69f67?auto=format&fit=crop&q=80');"></div>
                <div class="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/70 to-transparent"></div>

                <div class="relative z-10 flex justify-between items-start">
                    <span class="px-2.5 py-0.5 bg-sky-500/20 text-sky-300 border border-sky-400/30 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                        Blue Block
                    </span>
                    <svg class="w-5 h-5 text-slate-300 group-hover:text-white group-hover:translate-x-1 transition-all" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"></path></svg>
                </div>

                <div class="relative z-10">
                    <h4 class="text-lg font-bold text-white tracking-tight">Protección Digital</h4>
                    <p class="text-xs text-slate-300 mt-0.5">Filtro de luz azul especial para pantallas.</p>
                </div>
            </div>

            <!-- Tarjeta 3: Uso Diario & Oftálmicos -->
            <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[150px] p-6 flex flex-col justify-between border border-slate-800 shadow-md hover:shadow-lg transition-all duration-300 flex-1">
                <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                     style="background-image: url('https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&q=80');"></div>
                <div class="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/70 to-transparent"></div>

                <div class="relative z-10 flex justify-between items-start">
                    <span class="px-2.5 py-0.5 bg-slate-800/80 text-slate-200 border border-slate-700 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                        Confort Diario
                    </span>
                    <svg class="w-5 h-5 text-slate-300 group-hover:text-white group-hover:translate-x-1 transition-all" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"></path></svg>
                </div>

                <div class="relative z-10">
                    <h4 class="text-lg font-bold text-white tracking-tight">Uso Diario & Oftálmicos</h4>
                    <p class="text-xs text-slate-300 mt-0.5">Monturas resistentes para cristales graduados.</p>
                </div>
            </div>

        </div>

    </div>

    <!-- Fila Inferior con Fotografía Inmersiva (Tarjetas 4 y 5) -->
    <div class="grid grid-cols-1 sm:grid-cols-2 gap-5 pt-1">
        
        <!-- Tarjeta 4: Ultra Livianos & Titanio -->
        <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[160px] p-6 flex flex-col justify-between border border-slate-800 shadow-md hover:shadow-lg transition-all duration-300">
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1508296695146-257a814070b4?auto=format&fit=crop&q=80');"></div>
            <div class="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/70 to-transparent"></div>

            <div class="relative z-10 flex justify-between items-start">
                <span class="px-2.5 py-0.5 bg-emerald-500/20 text-emerald-300 border border-emerald-500/30 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                    Minimalista
                </span>
                <svg class="w-5 h-5 text-slate-300 group-hover:text-white group-hover:translate-x-1 transition-all" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"></path></svg>
            </div>

            <div class="relative z-10">
                <h4 class="text-lg font-bold text-white tracking-tight">Ultra Livianos & Titanio</h4>
                <p class="text-xs text-slate-300 mt-0.5">Diseños minimalistas e imperceptibles de peso pluma.</p>
            </div>
        </div>

        <!-- Tarjeta 5: Deportivos & Flexibles -->
        <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[160px] p-6 flex flex-col justify-between border border-slate-800 shadow-md hover:shadow-lg transition-all duration-300">
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1509198397868-475647b2a1e5?auto=format&fit=crop&q=80');"></div>
            <div class="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/70 to-transparent"></div>

            <div class="relative z-10 flex justify-between items-start">
                <span class="px-2.5 py-0.5 bg-cyan-500/20 text-cyan-300 border border-cyan-500/30 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                    Alta Resistencia
                </span>
                <svg class="w-5 h-5 text-slate-300 group-hover:text-white group-hover:translate-x-1 transition-all" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"></path></svg>
            </div>

            <div class="relative z-10">
                <h4 class="text-lg font-bold text-white tracking-tight">Deportivos & Flexibles</h4>
                <p class="text-xs text-slate-300 mt-0.5">Ajuste anatómico de alto rendimiento y durabilidad.</p>
            </div>
        </div>

    </div>

</div>